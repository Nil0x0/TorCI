import std / unittest
import std / [re, strutils]
import std / [sha1, json]
import httpclient
import ../ src / lib / binascii

suite "Check bridges validity":

  proc isValidObfs4(obfs4: string): bool =
    let splitted = obfs4.splitWhitespace()
    if splitted.len == 5:

      if (splitted[0] == "obfs4") and
      (splitted[1].match(re"(\d+\.){3}(\d+):\d+")) and
      (splitted[2].match(re".+")) and
      (splitted[3].match(re"cert=.+")) and
      (splitted[4].match(re"iat-mode=\d")):
        return true

      else:
        return false

  proc isValidSnowflake(snowflake: string): bool =
    let s = snowflake.splitWhitespace()
    if s.len == 2:
      
      if (s[0].match(re"(\d+\.){3}(\d+):\d+")) and
      (s[1].match(re".+")):
        return true
      
      else:
        return false
      
  test "obfs4 validity":
    check:
      isValidObfs4("obfs4 122.148.194.24:993 07784768F54CF66F9D588E19E8EE3B0FA702711B cert=m3jPGnUyZMWHT9Riioob95s1czvGs3HiZ64GIT3QbH/AZDVlF/YEXu/OtyYZ1eObKnTjcg iat-mode=0")
      not isValidObfs4("obfs4 0.0.0:999 07784768F54CF66F9D588E19E8EE3B0FA702711B cert=m3jPGnUyZMWHT9Riioob95s1czvGs3HiZ64GIT3QbH/AZDVlF/YEXu/OtyYZ1eObKnTjcg iat-mode=0")
      not isValidObfs4("obfs4 122.148.194.24:993 cert=m3jPGnUyZMWHT9Riioob95s1czvGs3HiZ64GIT3QbH/AZDVlF/YEXu/OtyYZ1eObKnTjcg iat-mode=0")
      not isValidObfs4("obfs4 122.148.194.24:993 07784768F54CF66F9D588E19E8EE3B0FA702711B cert= iat-mode=0")
      not isValidObfs4("obfs4 122.148.194.24:993 07784768F54CF66F9D588E19E8EE3B0FA702711B cert=m3jPGnUyZMWHT9Riioob95s1czvGs3HiZ64GIT3QbH/AZDVlF/YEXu/OtyYZ1eObKnTjcg iat-mode=g")

  test "snowflake validity":
    let strs = splitWhitespace("#Bridge snowflake 192.0.2.3:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72", 2)
    check:
      isValidSnowflake(strs[2])
      not isValidSnowflake(strs[1])

suite "Check fingerprint of Tor bridges":
  test "Fingerprint hashing":
    let
      o4Fp = "07784768F54CF66F9D588E19E8EE3B0FA702711B"
      o4Hashed = "581674112383BEBF88E79C3328B71ADF79365B45"

      sfFp = "2B280B23E1107BB62ABFC40DDCC8824814F80A72" 
      sfHashed = "5481936581E23D2D178105D44DB6915AB06BFB7F"


      sfHash = secureHash(a2bHex(sfFp))
      o4Hash = secureHash(a2bHex(o4Fp))
      
    check:
      $sfHash == sfHashed
      $o4Hash == o4Hashed

suite "Request to Onionoo":
  proc isFound(fp: string): bool =
    const
      destHost = "https://onionoo.torproject.org/details?lookup="
      userAgent = "Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101 Firefox/91.0"

    var client = newHttpClient(userAgent = userAgent)

    let res = client.get(destHost & fp)

    if res.code == Http200:
      let
        j = parseJson(res.body)
        b = j["bridges"]

      if b.len > 0:
        let hashedFP = b[0]{"hashed_fingerprint"}.getStr
        if fp == hashedFP: return true

  test "Get bridges data":
    const
      fp = "07784768F54CF66F9D588E19E8EE3B0FA702711B"
      hfp = "581674112383BEBF88E79C3328B71ADF79365B45"
    check:
      hfp.isFound()
      not fp.isFound()