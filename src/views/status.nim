import karax/[karaxdsl, vdom, vstyles]
import tables, asyncdispatch, strformat
import ../types

const defStr = "None"

proc renderSystemInfo(cfg: Config, sys: SystemInfo): VNode =
  buildHtml(tdiv(class="columns full-width")):
    tdiv(class="card card-padding card-sys"):
      tdiv(class="card-header"):
        text "System"
      table(class="table full-width"):
        tbody():
          tr():
            td(): text "Model"
            td():
              strong():
                tdiv():
                  text if sys.model.len != 0: sys.model else: defStr
          tr():
            td(): text "Kernel"
            td():
              strong():
                tdiv():
                  text if sys.kernelVersion.len != 0: sys.kernelVersion else: defStr
          tr():
            td(): text "Architecture"
            td():
              strong():
                tdiv():
                  text if sys.architecture.len != 0: sys.architecture else: defStr
          tr():
            td(): text "TorBox Version"
            td():
              strong():
                tdiv():
                  text cfg.torboxVer
          tr():
            td(): text "TorCi Version"
            td():
              strong():
                tdiv():
                  text cfg.torciVer

proc renderTorInfo(torS: TorStatus): VNode =
  buildHtml(tdiv(class="columns")):
    tdiv(class="card card-padding card-tor"):
      tdiv(class="card-header"):
        text "Tor"
      table(class="table full-width"):
        tbody():
          tr():
            td(): text "Status"
            td():
              strong(style={display: "flex"}):
                tdiv():
                  text if torS.isOnline: "Online" else: "Offline"
                form(`method`="post", action="/io", enctype="multipart/form-data"):
                  button(class="btn-flat", `type`="submit", name="new_circuit", value="0"):
                    svg(class="new-circuit", loading="lazy", alt="new circuit", width="25px", height="25px", viewBox="0 0 16 16", version="1.1"):
                      title(): text "Enforce a new exit node with a new IP"
                      path(
                        d="M13.4411138,10.1446317 L9.5375349,10.1446317 C8.99786512,10.1446317 8.56164018,10.5818326 8.56164018,11.1205264 C8.56164018,11.6592203 8.99786512,12.0964212 9.5375349,12.0964212 L11.4571198,12.0964212 C10.7554515,13.0479185 9.73466563,13.692009 8.60067597,13.9359827 C8.41818366,13.9720908 8.23276366,14.0033194 8.04734366,14.0218614 C7.97219977,14.0277168 7.89803177,14.0306445 7.82288788,14.0335722 C6.07506044,14.137017 4.290149,13.4499871 3.38647049,11.857327 C2.52280367,10.3349312 2.77263271,8.15966189 3.93687511,6.87343267 C5.12453898,5.56183017 7.44814431,5.04363008 8.21226987,3.38558497 C9.01738301,4.92847451 9.60682342,5.02801577 10.853041,6.15029468 C11.2892659,6.54455615 11.9704404,7.55558307 12.1861132,8.10501179 C12.3051723,8.40949094 12.5013272,9.17947187 12.5013272,9.17947187 L14.2862386,9.17947187 C14.2091429,7.59754654 13.439162,5.96877827 12.2261248,4.93628166 C11.279507,4.13116853 10.5065984,3.84718317 9.77662911,2.8088312 C9.63219669,2.60194152 9.59999216,2.4565332 9.56290816,2.21646311 C9.53851079,2.00762164 9.54143848,1.78511764 9.62048595,1.53919218 C9.65952174,1.41720534 9.59804037,1.28545955 9.47702943,1.23764071 L6.40296106,0.0167964277 C6.32391359,-0.0134563083 6.23413128,-0.00272146652 6.16679454,0.0480250584 L5.95502539,0.206120002 C5.85743592,0.280288 5.82815908,0.416913259 5.89159223,0.523285783 C6.70060895,1.92564648 6.36978064,2.82542141 5.8984235,3.20211676 C5.4914754,3.4900057 4.99084141,3.72226864 4.63366394,3.95453159 C3.82367132,4.47956294 3.03222071,5.02508808 2.40374451,5.76774396 C0.434388969,8.09427695 0.519291809,12.0046871 2.77165682,14.1077402 C3.65288975,14.9284676 4.70295247,15.4749686 5.81742423,15.7570022 C5.81742423,15.7570022 6.13556591,15.833122 6.21754107,15.8497122 C7.36616915,16.0829511 8.53529102,16.0146384 9.62243774,15.6672199 C9.67416016,15.6525815 9.77174963,15.620377 9.76784605,15.6154975 C10.7730176,15.2700308 11.7049971,14.7010841 12.4652191,13.90573 L12.4652191,15.0241053 C12.4652191,15.5627992 12.901444,16 13.4411138,16 C13.9798077,16 14.4170085,15.5627992 14.4170085,15.0241053 L14.4170085,11.1205264 C14.4170085,10.5818326 13.9798077,10.1446317 13.4411138,10.1446317",
                        id="Fill-3",
                        fill="context-fill",
                        fill-opacity="context-fill-opacity"
                      )
                      path(
                        d="M5.107,7.462 C4.405,8.078 4,8.946 4,9.839 C4,10.712 4.422,11.57 5.13,12.132 C5.724,12.607 6.627,12.898 7.642,12.949 L7.642,5.8 C7.39,6.029 7.103,6.227 6.791,6.387 C5.993,6.812 5.489,7.133 5.107,7.462",
                        id="Fill-1",
                        fill="context-fill",
                        fill-opacity="context-fill-opacity"
                      )
          tr():
            td(): text "Obfs4"
            td():
              strong():
                tdiv():
                  text if torS.useObfs4: "On" else: "Off"
          tr():
            td(): text "Meek-Azure"
            td():
              strong():
                tdiv():
                  text if torS.useMeekAzure: "On" else: "Off"
          tr():
            td(): text "Snowflake"
            td():
              strong():
                tdiv():
                  text if torS.useSnowflake: "On" else: "Off"

proc renderNetworkInfo(iface: ActiveIfaceList, crNet: tuple[ssid, ipAddr: string]): VNode =
  buildHtml(tdiv(class="columns")):
    tdiv(class="card card-padding card-sky"):
      tdiv(class="card-header"):
        text "Network"
      table(class="table full-width"):
        tbody():
          tr():
            td(): text "Internet"
            td():
              strong():
                tdiv():
                  text if iface.input != unkwnIface: $iface.input else: defStr
          tr():
            td(): text "Host AP"
            td():
              strong():
                tdiv():
                  text if iface.output != unkwnIface: $iface.output else: defStr
          tr():
            td(): text "SSID"
            td():
              strong():
                tdiv():
                  text if crNet.ssid.len != 0: crNet.ssid else: defStr
          tr():
            td(): text "IP Address"
            td():
              strong():
                tdiv():
                  text if crNet.ipAddr.len != 0: crNet.ipAddr else: defStr
          tr():
            td(): text "VPN"
            td():
              strong():
                tdiv():
                  text if iface.hasVpn: "is Up" else: defStr

proc renderStatusPane*(cfg: Config, torS: TorStatus, iface: ActiveIfaceList, crNet: tuple[ssid, ipAddr: string], sysInfo: SystemInfo): VNode =
  buildHtml(tdiv(class="cards")):
    renderTorInfo(torS)
    renderNetworkInfo(iface, crNet)
    renderSystemInfo(cfg, sysInfo)