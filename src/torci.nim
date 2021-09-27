import jester
import views/[temp, login, renderutils]
import routes/[status, network, sys, routerutils]
import connexion, types, config, query, utils
import asyncdispatch, logging
import libs/[syslib, torLib, torboxLib, fallbacks, wifiScanner, wirelessManager]

const configPath {.strdefine.} = "./torci.conf"
let (cfg, fullCfg) = getConfig(configpath)
let sysInfo = getSystemInfo()

routingStatus(cfg, sysInfo)
routingNet(cfg, sysInfo)
routingSys(cfg)

settings:
  port = Port(cfg.port)
  staticDir = cfg.staticDir
  bindAddr = cfg.address

routes:
  get "/":
    if await request.isLoggedIn():
      redirect "/io"
    redirect "/login"
  
  get "/login":
    if not await request.isLoggedIn():
      # resp renderNode(renderPanel(renderLoginPanel()), request, cfg)
      resp renderFlat(renderLogin(), cfg)
    redirect "/"
  
  post "/login":
    if not await request.isLoggedIn():
      let
        username = request.formData.getOrDefault("username").body
        password = request.formData.getOrDefault("password").body
        expireTime = await getExpireTime()
        tLogin = await login(username, password, expireTime)
      if tLogin.res:
        # echo "Set token: ", tLogin.token
        setCookie("token", tLogin.token, expires = expireTime, httpOnly = true)
        redirect "/"

    resp renderFlat(renderLogin(), cfg, notice = Notice(status: failure, msg: "Invalid username or password"))
    # redirectEx "/login", renderFlat(renderLogin(), cfg, notice=Notice(status: failure, msg: "Invalid username or password"))
    
  get "/net":
    redirect "/net/interfaces"
  
  error Http404:
    if await request.isLoggedIn():
      resp Http404, renderNode(render404(), request, cfg)
    # redirect "/login"
    resp renderFlat(render404(), cfg)

  # error Exception:
  #   if await request.isLoggedIn():
  #     resp Http505, renderNode(render404(), request, cfg)
  #   redirect "/login"

  extend status, ""
  extend network, "/net"
  extend sys, ""
  
