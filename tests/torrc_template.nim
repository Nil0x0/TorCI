const
  torrc* = """
#BridgeRelay 1
#ORPort 4235
#ExtORPort auto
#ServerTransportPlugin obfs4 exec /usr/bin/obfs4proxy
#ServerTransportListenAddr obfs4 0.0.0.0:443
#ContactInfo <address@email.com>
#Nickname TorBox042
#BridgeDistribution any

## TO OVERCOME CENSORSHIP, START HERE!
######################################################
## If you like to use bridges to overcome censorship, EDIT THE LINES BELOW!
## To use bridges, uncomment the three lines below...
#UseBridges 1
#UpdateBridgesFromAuthority 1
#ClientTransportPlugin meek_lite,obfs4 exec /usr/bin/obfs4proxy
#ClientTransportPlugin snowflake exec /usr/bin/snowflake-client -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front cdn.sstatic.net -ice stun:stun.l.google.com:19302,stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478

## Meek-Azure
#Bridge meek_lite 192.0.2.2:2 97700DFE9F483596DDA6264C4D7DF7641E1E39CE url=https://meek.azureedge.net/ front=ajax.aspnetcdn.com

## Snowflake
#Bridge snowflake 192.0.2.3:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72

## OBFS4 bridges
##
## You have three ways to get new bridge-addresses:
## 1. Get them here https://bridges.torproject.org/
##    (chose "Advanced Options", "obfs4" and press "Get Bridges)
## 2. Or send an email to bridges@torproject.org, using an address
##    from Riseup or Gmail with "get transport obfs4" in the body of the mail.
## 3. (Not recommended, only if needed): Via Telegram: https://t.me/tor_bridges
#Bridge obfs4 144.217.20.138:80 FB70B257C162BF1038CA669D568D76F5B7F0BABB cert=vYIV5MgrghGQvZPIi1tJwnzorMgqgmlKaB77Y3Z9Q/v94wZBOAXkW+fdx4aSxLVnKO+xNw iat-mode=0
#Bridge obfs4 37.218.245.14:38224 D9A82D2F9C2F65A18407B1D2B764F130847F8B5D cert=bjRaMrr1BRiAW8IE9U5z27fQaYgOhX1UCmOpg2pFpoMvo6ZgQMzLsaTzzQNTlm7hNcb+Sg iat-mode=0
#Bridge obfs4 109.105.109.147:13764 BBB28DF0F201E706BE564EFE690FE9577DD8386D cert=KfMQN/tNMFdda61hMgpiMI7pbwU1T+wxjTulYnfw+4sgvG0zSH7N7fwT10BI8MUdAD7iJA iat-mode=2
#Bridge obfs4 104.153.209.217:30262 D28E0345809AE4BAC903EF7FC78CAAF111A63C58 cert=DtNNYXeRG4ds+iTM7sdbJHJgH7RmxDb1lt8JR17BiT7eHnORyn+4y+RcoqAI65XGvhXKJg iat-mode=0
#Bridge obfs4 212.101.26.106:443 594A38734ACA5A611AF3C4444A914E5F940BCAAF cert=cNymj+v4Orz558wzvDYjmhVAEcFW1xKjbyVf/xUp+M6OoOvNRixvxLpyoY0SPsXSxIneFw iat-mode=0
#Bridge obfs4 50.115.168.41:443 BD0443DBEB32E9C96290DDFFB2F8B8681906D2BB cert=zqc3tU9Bw7uYfTi5AydGZC1pFu/UVpWRS3c4gzfS/qtCxJwC94d1XrKb116qoW/MZ8soTw iat-mode=0
#Bridge obfs4 34.255.123.165:52176 EFF298A7FB2A1056189C5C12B46CD912AA77B16A cert=5CLOANyguG1hzulvbHZNlWy2BoMGk/VTAyfKvA7S0w0v/24XIYTz5tWlKWbyrZhxPEvWFA iat-mode=0
#Bridge obfs4 198.98.59.76:80 2E18F504F27DFC23B5A716BB157C281874265AD1 cert=RHJPe84Blvxm7FiRTDQ/CAdERigYU0KTWUivRDqJm7tOkmpE/p4ZcNKB9kH8SSa/FfKmTw iat-mode=0
#Bridge obfs4 192.155.95.222:53050 68FE1B7511B5956D81DDDD23B30B49828DF36D21 cert=r8elMzelcc8b4wvG6MdvBrOTXWshKiDi1gPbpSgjgDJGzqLC2iGHiZ+GRx9gAZALlcqQPA iat-mode=0
#Bridge obfs4 78.47.50.242:19080 B6BD71FC589EB436C82D75FF30BBAC3A35E23E63 cert=RRNBu00BNAhJV+npPtTU6ocWK6jvhbDQ2Lx5ABXtc4pTk7PIWWxZVroQTScpuHqjg9lfMA iat-mode=0
#Bridge obfs4 93.104.174.209:55405 3C3893086B27E879778E4A6275E5230AA49132E9 cert=uZorJsxG11sfGmt2tsJRX6jCDQF043crM0vfsY+BJUdciPsszVN1eAem2zNteZ2WVjFqLg iat-mode=0
#Bridge obfs4 94.16.156.109:36739 491CEAB740FDEA24D588B28C6915E6EC37D65B90 cert=Vax0EBHOO0x1NGjVJPNCECfTK9XSGy8IVjBk/ewyeoBq+o1i9/ksmKBj+XmMpUc5BCCzOQ iat-mode=0
#Bridge obfs4 216.252.162.21:46089 0DB8799466902192B6C7576D58D4F7F714EC87C1 cert=XPUwcQPxEXExHfJYX58gZXN7mYpos7VNAHbkgERNFg+FCVNzuYo1Wp+uMscl3aR9hO2DRQ iat-mode=0
#Bridge obfs4 76.230.156.129:5002 B37BC162454314B6572F9A3A79A1C92BB9E63809 cert=IIJMWkUUmzRbS78LCm8znYKvMf/mmcWIM5ZNyzwl1gHxKievV4h1NKdlVkRH3KpZH/fmbg iat-mode=0
#Bridge obfs4 95.31.12.22:5010 5721D25FA2D0194E698EC46AC4703F24DE82829F cert=whNT5Nx/k1fZL4MQu99SIl+5OXccyAlMKwjKmjoTGTgPTdVSNeMnh6lPBxcqbx4vMdRTTQ iat-mode=0
#Bridge obfs4 185.185.251.132:443 91C99EA7DD3851DC18F40D66D9283829AECC95C3 cert=i9dbEJaVF+4Keam69Bg5lbtfDiITFc2i7Otly9OEBmxBPq8xk2Nr5BWOOYlslTFdfPKFfg iat-mode=0
#Bridge obfs4 76.217.52.130:9030 D3D09370EB7F0988D0E7C8B4C495C2B015E7375C cert=NjQZ25njAQxVx3Z3WLzEyop7NemZs/YZZ7UCJDI/4pvJJPPeMrScI1N3TbcY1g0l8mC9DQ iat-mode=0
#Bridge obfs4 70.134.63.129:7005 1259A98554879633891EA67A3D8DCF8E7C6F87C2 cert=2kM4mcKyRdIhxzB9Pc9SdcXCE7j49nASJhrhxUi+PzBATuODugh36GHijWaZf01/ACEGaA iat-mode=0
#Bridge obfs4 193.11.166.194:27025 1AE2C08904527FEA90C4C4F8C1083EA59FBC6FAF cert=ItvYZzW5tn6v3G4UnQa6Qz04Npro6e81AP70YujmK/KXwDFPTs3aHXcHp4n8Vt6w/bv8cA iat-mode=0
#Bridge obfs4 209.148.46.65:443 74FAD13168806246602538555B5521A0383A1875 cert=ssH+9rP8dG2NLDN2XuFw63hIO/9MNNinLmxQDpVa+7kTOa9/m+tGWT1SmSYpQ9uTBGa6Hw iat-mode=0
#Bridge obfs4 146.57.248.225:22 10A6CD36A537FCE513A322361547444B393989F0 cert=K1gDtDAIcUfeLqbstggjIw2rtgIKqdIhUlHp82XRqNSq/mtAjp1BIC9vHKJ2FAEpGssTPw iat-mode=0
#Bridge obfs4 45.145.95.6:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 [2a0c:4d80:42:702::1]:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 51.222.13.177:80 5EDAC3B810E12B01F6FD8050D2FD3E277B289A08 cert=2uplIpLQ0q9+0qMFrK5pkaYRDOe460LL9WHBvatgkuRr/SL31wBOEupaMMJ6koRE6Ld0ew iat-mode=0
#Bridge obfs4 193.11.166.194:27015 2D82C2E354D531A68469ADF7F878FA6060C6BACA cert=4TLQPJrTSaDffMK7Nbao6LC7G9OW/NHkUwIdjLSS3KYf0Nv4/nQiiI8dY2TcsQx01NniOg iat-mode=0
#Bridge obfs4 193.11.166.194:27020 86AC7B8D430DAC4117E9F42C9EAED18133863AAF cert=0LDeJH4JzMDtkJJrFphJCiPqKx7loozKN7VNfuukMGfHO0Z8OGdzHVkhVAOfo1mUdv9cMg iat-mode=0
#Bridge obfs4 45.79.227.182:19881 A7ED6AF4F04733B40E0D3673AAE573DC36F4A23D cert=4cB8rNZkqZLmAMnMKB7F9MVg3Jr5yvvdiXOpZiGzROTU6Qf+8hRPP7PS7fWGEbOztwanKg iat-mode=0
#Bridge obfs4 185.220.101.164:12346 4C97ACCDDD9E8130D9231DA71413CEBC3F56DE14 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=2
#Bridge obfs4 174.128.247.177:443 1FFA4FB830435BC15FD7EC8D4DA59E7DE047C524 cert=7h0xI5/XhF+iF1S4506pNwaD7PZkU4JdBk6oNHRk9gfB76ZKdW5zJbGFfzUkvj+qAJYpCA iat-mode=0
#Bridge obfs4 185.220.101.221:38395 1BBABB8B42EF34BA93D0D4F37F7CAAAAF9EAA512 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0
"""
  torrc_activated_obfs4* = """
#BridgeRelay 1
#ORPort 4235
#ExtORPort auto
#ServerTransportPlugin obfs4 exec /usr/bin/obfs4proxy
#ServerTransportListenAddr obfs4 0.0.0.0:443
#ContactInfo <address@email.com>
#Nickname TorBox042
#BridgeDistribution any

## TO OVERCOME CENSORSHIP, START HERE!
######################################################
## If you like to use bridges to overcome censorship, EDIT THE LINES BELOW!
## To use bridges, uncomment the three lines below...
UseBridges 1
UpdateBridgesFromAuthority 1
ClientTransportPlugin meek_lite,obfs4 exec /usr/bin/obfs4proxy
#ClientTransportPlugin snowflake exec /usr/bin/snowflake-client -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front cdn.sstatic.net -ice stun:stun.l.google.com:19302,stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478

## Meek-Azure
#Bridge meek_lite 192.0.2.2:2 97700DFE9F483596DDA6264C4D7DF7641E1E39CE url=https://meek.azureedge.net/ front=ajax.aspnetcdn.com

## Snowflake
#Bridge snowflake 192.0.2.3:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72

## OBFS4 bridges
##
## You have three ways to get new bridge-addresses:
## 1. Get them here https://bridges.torproject.org/
##    (chose "Advanced Options", "obfs4" and press "Get Bridges)
## 2. Or send an email to bridges@torproject.org, using an address
##    from Riseup or Gmail with "get transport obfs4" in the body of the mail.
## 3. (Not recommended, only if needed): Via Telegram: https://t.me/tor_bridges
Bridge obfs4 144.217.20.138:80 FB70B257C162BF1038CA669D568D76F5B7F0BABB cert=vYIV5MgrghGQvZPIi1tJwnzorMgqgmlKaB77Y3Z9Q/v94wZBOAXkW+fdx4aSxLVnKO+xNw iat-mode=0
Bridge obfs4 37.218.245.14:38224 D9A82D2F9C2F65A18407B1D2B764F130847F8B5D cert=bjRaMrr1BRiAW8IE9U5z27fQaYgOhX1UCmOpg2pFpoMvo6ZgQMzLsaTzzQNTlm7hNcb+Sg iat-mode=0
Bridge obfs4 109.105.109.147:13764 BBB28DF0F201E706BE564EFE690FE9577DD8386D cert=KfMQN/tNMFdda61hMgpiMI7pbwU1T+wxjTulYnfw+4sgvG0zSH7N7fwT10BI8MUdAD7iJA iat-mode=2
Bridge obfs4 104.153.209.217:30262 D28E0345809AE4BAC903EF7FC78CAAF111A63C58 cert=DtNNYXeRG4ds+iTM7sdbJHJgH7RmxDb1lt8JR17BiT7eHnORyn+4y+RcoqAI65XGvhXKJg iat-mode=0
Bridge obfs4 212.101.26.106:443 594A38734ACA5A611AF3C4444A914E5F940BCAAF cert=cNymj+v4Orz558wzvDYjmhVAEcFW1xKjbyVf/xUp+M6OoOvNRixvxLpyoY0SPsXSxIneFw iat-mode=0
Bridge obfs4 50.115.168.41:443 BD0443DBEB32E9C96290DDFFB2F8B8681906D2BB cert=zqc3tU9Bw7uYfTi5AydGZC1pFu/UVpWRS3c4gzfS/qtCxJwC94d1XrKb116qoW/MZ8soTw iat-mode=0
Bridge obfs4 34.255.123.165:52176 EFF298A7FB2A1056189C5C12B46CD912AA77B16A cert=5CLOANyguG1hzulvbHZNlWy2BoMGk/VTAyfKvA7S0w0v/24XIYTz5tWlKWbyrZhxPEvWFA iat-mode=0
Bridge obfs4 198.98.59.76:80 2E18F504F27DFC23B5A716BB157C281874265AD1 cert=RHJPe84Blvxm7FiRTDQ/CAdERigYU0KTWUivRDqJm7tOkmpE/p4ZcNKB9kH8SSa/FfKmTw iat-mode=0
Bridge obfs4 192.155.95.222:53050 68FE1B7511B5956D81DDDD23B30B49828DF36D21 cert=r8elMzelcc8b4wvG6MdvBrOTXWshKiDi1gPbpSgjgDJGzqLC2iGHiZ+GRx9gAZALlcqQPA iat-mode=0
Bridge obfs4 78.47.50.242:19080 B6BD71FC589EB436C82D75FF30BBAC3A35E23E63 cert=RRNBu00BNAhJV+npPtTU6ocWK6jvhbDQ2Lx5ABXtc4pTk7PIWWxZVroQTScpuHqjg9lfMA iat-mode=0
Bridge obfs4 93.104.174.209:55405 3C3893086B27E879778E4A6275E5230AA49132E9 cert=uZorJsxG11sfGmt2tsJRX6jCDQF043crM0vfsY+BJUdciPsszVN1eAem2zNteZ2WVjFqLg iat-mode=0
Bridge obfs4 94.16.156.109:36739 491CEAB740FDEA24D588B28C6915E6EC37D65B90 cert=Vax0EBHOO0x1NGjVJPNCECfTK9XSGy8IVjBk/ewyeoBq+o1i9/ksmKBj+XmMpUc5BCCzOQ iat-mode=0
Bridge obfs4 216.252.162.21:46089 0DB8799466902192B6C7576D58D4F7F714EC87C1 cert=XPUwcQPxEXExHfJYX58gZXN7mYpos7VNAHbkgERNFg+FCVNzuYo1Wp+uMscl3aR9hO2DRQ iat-mode=0
Bridge obfs4 76.230.156.129:5002 B37BC162454314B6572F9A3A79A1C92BB9E63809 cert=IIJMWkUUmzRbS78LCm8znYKvMf/mmcWIM5ZNyzwl1gHxKievV4h1NKdlVkRH3KpZH/fmbg iat-mode=0
Bridge obfs4 95.31.12.22:5010 5721D25FA2D0194E698EC46AC4703F24DE82829F cert=whNT5Nx/k1fZL4MQu99SIl+5OXccyAlMKwjKmjoTGTgPTdVSNeMnh6lPBxcqbx4vMdRTTQ iat-mode=0
Bridge obfs4 185.185.251.132:443 91C99EA7DD3851DC18F40D66D9283829AECC95C3 cert=i9dbEJaVF+4Keam69Bg5lbtfDiITFc2i7Otly9OEBmxBPq8xk2Nr5BWOOYlslTFdfPKFfg iat-mode=0
Bridge obfs4 76.217.52.130:9030 D3D09370EB7F0988D0E7C8B4C495C2B015E7375C cert=NjQZ25njAQxVx3Z3WLzEyop7NemZs/YZZ7UCJDI/4pvJJPPeMrScI1N3TbcY1g0l8mC9DQ iat-mode=0
Bridge obfs4 70.134.63.129:7005 1259A98554879633891EA67A3D8DCF8E7C6F87C2 cert=2kM4mcKyRdIhxzB9Pc9SdcXCE7j49nASJhrhxUi+PzBATuODugh36GHijWaZf01/ACEGaA iat-mode=0
Bridge obfs4 193.11.166.194:27025 1AE2C08904527FEA90C4C4F8C1083EA59FBC6FAF cert=ItvYZzW5tn6v3G4UnQa6Qz04Npro6e81AP70YujmK/KXwDFPTs3aHXcHp4n8Vt6w/bv8cA iat-mode=0
Bridge obfs4 209.148.46.65:443 74FAD13168806246602538555B5521A0383A1875 cert=ssH+9rP8dG2NLDN2XuFw63hIO/9MNNinLmxQDpVa+7kTOa9/m+tGWT1SmSYpQ9uTBGa6Hw iat-mode=0
Bridge obfs4 146.57.248.225:22 10A6CD36A537FCE513A322361547444B393989F0 cert=K1gDtDAIcUfeLqbstggjIw2rtgIKqdIhUlHp82XRqNSq/mtAjp1BIC9vHKJ2FAEpGssTPw iat-mode=0
Bridge obfs4 45.145.95.6:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
Bridge obfs4 [2a0c:4d80:42:702::1]:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
Bridge obfs4 51.222.13.177:80 5EDAC3B810E12B01F6FD8050D2FD3E277B289A08 cert=2uplIpLQ0q9+0qMFrK5pkaYRDOe460LL9WHBvatgkuRr/SL31wBOEupaMMJ6koRE6Ld0ew iat-mode=0
Bridge obfs4 193.11.166.194:27015 2D82C2E354D531A68469ADF7F878FA6060C6BACA cert=4TLQPJrTSaDffMK7Nbao6LC7G9OW/NHkUwIdjLSS3KYf0Nv4/nQiiI8dY2TcsQx01NniOg iat-mode=0
Bridge obfs4 193.11.166.194:27020 86AC7B8D430DAC4117E9F42C9EAED18133863AAF cert=0LDeJH4JzMDtkJJrFphJCiPqKx7loozKN7VNfuukMGfHO0Z8OGdzHVkhVAOfo1mUdv9cMg iat-mode=0
Bridge obfs4 45.79.227.182:19881 A7ED6AF4F04733B40E0D3673AAE573DC36F4A23D cert=4cB8rNZkqZLmAMnMKB7F9MVg3Jr5yvvdiXOpZiGzROTU6Qf+8hRPP7PS7fWGEbOztwanKg iat-mode=0
Bridge obfs4 185.220.101.164:12346 4C97ACCDDD9E8130D9231DA71413CEBC3F56DE14 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=2
Bridge obfs4 174.128.247.177:443 1FFA4FB830435BC15FD7EC8D4DA59E7DE047C524 cert=7h0xI5/XhF+iF1S4506pNwaD7PZkU4JdBk6oNHRk9gfB76ZKdW5zJbGFfzUkvj+qAJYpCA iat-mode=0
Bridge obfs4 185.220.101.221:38395 1BBABB8B42EF34BA93D0D4F37F7CAAAAF9EAA512 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0
"""
  torrc_activated_meekazure* = """
#BridgeRelay 1
#ORPort 4235
#ExtORPort auto
#ServerTransportPlugin obfs4 exec /usr/bin/obfs4proxy
#ServerTransportListenAddr obfs4 0.0.0.0:443
#ContactInfo <address@email.com>
#Nickname TorBox042
#BridgeDistribution any

## TO OVERCOME CENSORSHIP, START HERE!
######################################################
## If you like to use bridges to overcome censorship, EDIT THE LINES BELOW!
## To use bridges, uncomment the three lines below...
UseBridges 1
UpdateBridgesFromAuthority 1
ClientTransportPlugin meek_lite,obfs4 exec /usr/bin/obfs4proxy
#ClientTransportPlugin snowflake exec /usr/bin/snowflake-client -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front cdn.sstatic.net -ice stun:stun.l.google.com:19302,stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478

## Meek-Azure
Bridge meek_lite 192.0.2.2:2 97700DFE9F483596DDA6264C4D7DF7641E1E39CE url=https://meek.azureedge.net/ front=ajax.aspnetcdn.com

## Snowflake
#Bridge snowflake 192.0.2.3:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72

## OBFS4 bridges
##
## You have three ways to get new bridge-addresses:
## 1. Get them here https://bridges.torproject.org/
##    (chose "Advanced Options", "obfs4" and press "Get Bridges)
## 2. Or send an email to bridges@torproject.org, using an address
##    from Riseup or Gmail with "get transport obfs4" in the body of the mail.
## 3. (Not recommended, only if needed): Via Telegram: https://t.me/tor_bridges
#Bridge obfs4 144.217.20.138:80 FB70B257C162BF1038CA669D568D76F5B7F0BABB cert=vYIV5MgrghGQvZPIi1tJwnzorMgqgmlKaB77Y3Z9Q/v94wZBOAXkW+fdx4aSxLVnKO+xNw iat-mode=0
#Bridge obfs4 37.218.245.14:38224 D9A82D2F9C2F65A18407B1D2B764F130847F8B5D cert=bjRaMrr1BRiAW8IE9U5z27fQaYgOhX1UCmOpg2pFpoMvo6ZgQMzLsaTzzQNTlm7hNcb+Sg iat-mode=0
#Bridge obfs4 109.105.109.147:13764 BBB28DF0F201E706BE564EFE690FE9577DD8386D cert=KfMQN/tNMFdda61hMgpiMI7pbwU1T+wxjTulYnfw+4sgvG0zSH7N7fwT10BI8MUdAD7iJA iat-mode=2
#Bridge obfs4 104.153.209.217:30262 D28E0345809AE4BAC903EF7FC78CAAF111A63C58 cert=DtNNYXeRG4ds+iTM7sdbJHJgH7RmxDb1lt8JR17BiT7eHnORyn+4y+RcoqAI65XGvhXKJg iat-mode=0
#Bridge obfs4 212.101.26.106:443 594A38734ACA5A611AF3C4444A914E5F940BCAAF cert=cNymj+v4Orz558wzvDYjmhVAEcFW1xKjbyVf/xUp+M6OoOvNRixvxLpyoY0SPsXSxIneFw iat-mode=0
#Bridge obfs4 50.115.168.41:443 BD0443DBEB32E9C96290DDFFB2F8B8681906D2BB cert=zqc3tU9Bw7uYfTi5AydGZC1pFu/UVpWRS3c4gzfS/qtCxJwC94d1XrKb116qoW/MZ8soTw iat-mode=0
#Bridge obfs4 34.255.123.165:52176 EFF298A7FB2A1056189C5C12B46CD912AA77B16A cert=5CLOANyguG1hzulvbHZNlWy2BoMGk/VTAyfKvA7S0w0v/24XIYTz5tWlKWbyrZhxPEvWFA iat-mode=0
#Bridge obfs4 198.98.59.76:80 2E18F504F27DFC23B5A716BB157C281874265AD1 cert=RHJPe84Blvxm7FiRTDQ/CAdERigYU0KTWUivRDqJm7tOkmpE/p4ZcNKB9kH8SSa/FfKmTw iat-mode=0
#Bridge obfs4 192.155.95.222:53050 68FE1B7511B5956D81DDDD23B30B49828DF36D21 cert=r8elMzelcc8b4wvG6MdvBrOTXWshKiDi1gPbpSgjgDJGzqLC2iGHiZ+GRx9gAZALlcqQPA iat-mode=0
#Bridge obfs4 78.47.50.242:19080 B6BD71FC589EB436C82D75FF30BBAC3A35E23E63 cert=RRNBu00BNAhJV+npPtTU6ocWK6jvhbDQ2Lx5ABXtc4pTk7PIWWxZVroQTScpuHqjg9lfMA iat-mode=0
#Bridge obfs4 93.104.174.209:55405 3C3893086B27E879778E4A6275E5230AA49132E9 cert=uZorJsxG11sfGmt2tsJRX6jCDQF043crM0vfsY+BJUdciPsszVN1eAem2zNteZ2WVjFqLg iat-mode=0
#Bridge obfs4 94.16.156.109:36739 491CEAB740FDEA24D588B28C6915E6EC37D65B90 cert=Vax0EBHOO0x1NGjVJPNCECfTK9XSGy8IVjBk/ewyeoBq+o1i9/ksmKBj+XmMpUc5BCCzOQ iat-mode=0
#Bridge obfs4 216.252.162.21:46089 0DB8799466902192B6C7576D58D4F7F714EC87C1 cert=XPUwcQPxEXExHfJYX58gZXN7mYpos7VNAHbkgERNFg+FCVNzuYo1Wp+uMscl3aR9hO2DRQ iat-mode=0
#Bridge obfs4 76.230.156.129:5002 B37BC162454314B6572F9A3A79A1C92BB9E63809 cert=IIJMWkUUmzRbS78LCm8znYKvMf/mmcWIM5ZNyzwl1gHxKievV4h1NKdlVkRH3KpZH/fmbg iat-mode=0
#Bridge obfs4 95.31.12.22:5010 5721D25FA2D0194E698EC46AC4703F24DE82829F cert=whNT5Nx/k1fZL4MQu99SIl+5OXccyAlMKwjKmjoTGTgPTdVSNeMnh6lPBxcqbx4vMdRTTQ iat-mode=0
#Bridge obfs4 185.185.251.132:443 91C99EA7DD3851DC18F40D66D9283829AECC95C3 cert=i9dbEJaVF+4Keam69Bg5lbtfDiITFc2i7Otly9OEBmxBPq8xk2Nr5BWOOYlslTFdfPKFfg iat-mode=0
#Bridge obfs4 76.217.52.130:9030 D3D09370EB7F0988D0E7C8B4C495C2B015E7375C cert=NjQZ25njAQxVx3Z3WLzEyop7NemZs/YZZ7UCJDI/4pvJJPPeMrScI1N3TbcY1g0l8mC9DQ iat-mode=0
#Bridge obfs4 70.134.63.129:7005 1259A98554879633891EA67A3D8DCF8E7C6F87C2 cert=2kM4mcKyRdIhxzB9Pc9SdcXCE7j49nASJhrhxUi+PzBATuODugh36GHijWaZf01/ACEGaA iat-mode=0
#Bridge obfs4 193.11.166.194:27025 1AE2C08904527FEA90C4C4F8C1083EA59FBC6FAF cert=ItvYZzW5tn6v3G4UnQa6Qz04Npro6e81AP70YujmK/KXwDFPTs3aHXcHp4n8Vt6w/bv8cA iat-mode=0
#Bridge obfs4 209.148.46.65:443 74FAD13168806246602538555B5521A0383A1875 cert=ssH+9rP8dG2NLDN2XuFw63hIO/9MNNinLmxQDpVa+7kTOa9/m+tGWT1SmSYpQ9uTBGa6Hw iat-mode=0
#Bridge obfs4 146.57.248.225:22 10A6CD36A537FCE513A322361547444B393989F0 cert=K1gDtDAIcUfeLqbstggjIw2rtgIKqdIhUlHp82XRqNSq/mtAjp1BIC9vHKJ2FAEpGssTPw iat-mode=0
#Bridge obfs4 45.145.95.6:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 [2a0c:4d80:42:702::1]:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 51.222.13.177:80 5EDAC3B810E12B01F6FD8050D2FD3E277B289A08 cert=2uplIpLQ0q9+0qMFrK5pkaYRDOe460LL9WHBvatgkuRr/SL31wBOEupaMMJ6koRE6Ld0ew iat-mode=0
#Bridge obfs4 193.11.166.194:27015 2D82C2E354D531A68469ADF7F878FA6060C6BACA cert=4TLQPJrTSaDffMK7Nbao6LC7G9OW/NHkUwIdjLSS3KYf0Nv4/nQiiI8dY2TcsQx01NniOg iat-mode=0
#Bridge obfs4 193.11.166.194:27020 86AC7B8D430DAC4117E9F42C9EAED18133863AAF cert=0LDeJH4JzMDtkJJrFphJCiPqKx7loozKN7VNfuukMGfHO0Z8OGdzHVkhVAOfo1mUdv9cMg iat-mode=0
#Bridge obfs4 45.79.227.182:19881 A7ED6AF4F04733B40E0D3673AAE573DC36F4A23D cert=4cB8rNZkqZLmAMnMKB7F9MVg3Jr5yvvdiXOpZiGzROTU6Qf+8hRPP7PS7fWGEbOztwanKg iat-mode=0
#Bridge obfs4 185.220.101.164:12346 4C97ACCDDD9E8130D9231DA71413CEBC3F56DE14 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=2
#Bridge obfs4 174.128.247.177:443 1FFA4FB830435BC15FD7EC8D4DA59E7DE047C524 cert=7h0xI5/XhF+iF1S4506pNwaD7PZkU4JdBk6oNHRk9gfB76ZKdW5zJbGFfzUkvj+qAJYpCA iat-mode=0
#Bridge obfs4 185.220.101.221:38395 1BBABB8B42EF34BA93D0D4F37F7CAAAAF9EAA512 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0
"""
  torrc_activated_snowflake* = """
#BridgeRelay 1
#ORPort 4235
#ExtORPort auto
#ServerTransportPlugin obfs4 exec /usr/bin/obfs4proxy
#ServerTransportListenAddr obfs4 0.0.0.0:443
#ContactInfo <address@email.com>
#Nickname TorBox042
#BridgeDistribution any

## TO OVERCOME CENSORSHIP, START HERE!
######################################################
## If you like to use bridges to overcome censorship, EDIT THE LINES BELOW!
## To use bridges, uncomment the three lines below...
UseBridges 1
UpdateBridgesFromAuthority 1
#ClientTransportPlugin meek_lite,obfs4 exec /usr/bin/obfs4proxy
ClientTransportPlugin snowflake exec /usr/bin/snowflake-client -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front cdn.sstatic.net -ice stun:stun.l.google.com:19302,stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478

## Meek-Azure
#Bridge meek_lite 192.0.2.2:2 97700DFE9F483596DDA6264C4D7DF7641E1E39CE url=https://meek.azureedge.net/ front=ajax.aspnetcdn.com

## Snowflake
Bridge snowflake 192.0.2.3:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72

## OBFS4 bridges
##
## You have three ways to get new bridge-addresses:
## 1. Get them here https://bridges.torproject.org/
##    (chose "Advanced Options", "obfs4" and press "Get Bridges)
## 2. Or send an email to bridges@torproject.org, using an address
##    from Riseup or Gmail with "get transport obfs4" in the body of the mail.
## 3. (Not recommended, only if needed): Via Telegram: https://t.me/tor_bridges
#Bridge obfs4 144.217.20.138:80 FB70B257C162BF1038CA669D568D76F5B7F0BABB cert=vYIV5MgrghGQvZPIi1tJwnzorMgqgmlKaB77Y3Z9Q/v94wZBOAXkW+fdx4aSxLVnKO+xNw iat-mode=0
#Bridge obfs4 37.218.245.14:38224 D9A82D2F9C2F65A18407B1D2B764F130847F8B5D cert=bjRaMrr1BRiAW8IE9U5z27fQaYgOhX1UCmOpg2pFpoMvo6ZgQMzLsaTzzQNTlm7hNcb+Sg iat-mode=0
#Bridge obfs4 109.105.109.147:13764 BBB28DF0F201E706BE564EFE690FE9577DD8386D cert=KfMQN/tNMFdda61hMgpiMI7pbwU1T+wxjTulYnfw+4sgvG0zSH7N7fwT10BI8MUdAD7iJA iat-mode=2
#Bridge obfs4 104.153.209.217:30262 D28E0345809AE4BAC903EF7FC78CAAF111A63C58 cert=DtNNYXeRG4ds+iTM7sdbJHJgH7RmxDb1lt8JR17BiT7eHnORyn+4y+RcoqAI65XGvhXKJg iat-mode=0
#Bridge obfs4 212.101.26.106:443 594A38734ACA5A611AF3C4444A914E5F940BCAAF cert=cNymj+v4Orz558wzvDYjmhVAEcFW1xKjbyVf/xUp+M6OoOvNRixvxLpyoY0SPsXSxIneFw iat-mode=0
#Bridge obfs4 50.115.168.41:443 BD0443DBEB32E9C96290DDFFB2F8B8681906D2BB cert=zqc3tU9Bw7uYfTi5AydGZC1pFu/UVpWRS3c4gzfS/qtCxJwC94d1XrKb116qoW/MZ8soTw iat-mode=0
#Bridge obfs4 34.255.123.165:52176 EFF298A7FB2A1056189C5C12B46CD912AA77B16A cert=5CLOANyguG1hzulvbHZNlWy2BoMGk/VTAyfKvA7S0w0v/24XIYTz5tWlKWbyrZhxPEvWFA iat-mode=0
#Bridge obfs4 198.98.59.76:80 2E18F504F27DFC23B5A716BB157C281874265AD1 cert=RHJPe84Blvxm7FiRTDQ/CAdERigYU0KTWUivRDqJm7tOkmpE/p4ZcNKB9kH8SSa/FfKmTw iat-mode=0
#Bridge obfs4 192.155.95.222:53050 68FE1B7511B5956D81DDDD23B30B49828DF36D21 cert=r8elMzelcc8b4wvG6MdvBrOTXWshKiDi1gPbpSgjgDJGzqLC2iGHiZ+GRx9gAZALlcqQPA iat-mode=0
#Bridge obfs4 78.47.50.242:19080 B6BD71FC589EB436C82D75FF30BBAC3A35E23E63 cert=RRNBu00BNAhJV+npPtTU6ocWK6jvhbDQ2Lx5ABXtc4pTk7PIWWxZVroQTScpuHqjg9lfMA iat-mode=0
#Bridge obfs4 93.104.174.209:55405 3C3893086B27E879778E4A6275E5230AA49132E9 cert=uZorJsxG11sfGmt2tsJRX6jCDQF043crM0vfsY+BJUdciPsszVN1eAem2zNteZ2WVjFqLg iat-mode=0
#Bridge obfs4 94.16.156.109:36739 491CEAB740FDEA24D588B28C6915E6EC37D65B90 cert=Vax0EBHOO0x1NGjVJPNCECfTK9XSGy8IVjBk/ewyeoBq+o1i9/ksmKBj+XmMpUc5BCCzOQ iat-mode=0
#Bridge obfs4 216.252.162.21:46089 0DB8799466902192B6C7576D58D4F7F714EC87C1 cert=XPUwcQPxEXExHfJYX58gZXN7mYpos7VNAHbkgERNFg+FCVNzuYo1Wp+uMscl3aR9hO2DRQ iat-mode=0
#Bridge obfs4 76.230.156.129:5002 B37BC162454314B6572F9A3A79A1C92BB9E63809 cert=IIJMWkUUmzRbS78LCm8znYKvMf/mmcWIM5ZNyzwl1gHxKievV4h1NKdlVkRH3KpZH/fmbg iat-mode=0
#Bridge obfs4 95.31.12.22:5010 5721D25FA2D0194E698EC46AC4703F24DE82829F cert=whNT5Nx/k1fZL4MQu99SIl+5OXccyAlMKwjKmjoTGTgPTdVSNeMnh6lPBxcqbx4vMdRTTQ iat-mode=0
#Bridge obfs4 185.185.251.132:443 91C99EA7DD3851DC18F40D66D9283829AECC95C3 cert=i9dbEJaVF+4Keam69Bg5lbtfDiITFc2i7Otly9OEBmxBPq8xk2Nr5BWOOYlslTFdfPKFfg iat-mode=0
#Bridge obfs4 76.217.52.130:9030 D3D09370EB7F0988D0E7C8B4C495C2B015E7375C cert=NjQZ25njAQxVx3Z3WLzEyop7NemZs/YZZ7UCJDI/4pvJJPPeMrScI1N3TbcY1g0l8mC9DQ iat-mode=0
#Bridge obfs4 70.134.63.129:7005 1259A98554879633891EA67A3D8DCF8E7C6F87C2 cert=2kM4mcKyRdIhxzB9Pc9SdcXCE7j49nASJhrhxUi+PzBATuODugh36GHijWaZf01/ACEGaA iat-mode=0
#Bridge obfs4 193.11.166.194:27025 1AE2C08904527FEA90C4C4F8C1083EA59FBC6FAF cert=ItvYZzW5tn6v3G4UnQa6Qz04Npro6e81AP70YujmK/KXwDFPTs3aHXcHp4n8Vt6w/bv8cA iat-mode=0
#Bridge obfs4 209.148.46.65:443 74FAD13168806246602538555B5521A0383A1875 cert=ssH+9rP8dG2NLDN2XuFw63hIO/9MNNinLmxQDpVa+7kTOa9/m+tGWT1SmSYpQ9uTBGa6Hw iat-mode=0
#Bridge obfs4 146.57.248.225:22 10A6CD36A537FCE513A322361547444B393989F0 cert=K1gDtDAIcUfeLqbstggjIw2rtgIKqdIhUlHp82XRqNSq/mtAjp1BIC9vHKJ2FAEpGssTPw iat-mode=0
#Bridge obfs4 45.145.95.6:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 [2a0c:4d80:42:702::1]:27015 C5B7CD6946FF10C5B3E89691A7D3F2C122D2117C cert=TD7PbUO0/0k6xYHMPW3vJxICfkMZNdkRrb63Zhl5j9dW3iRGiCx0A7mPhe5T2EDzQ35+Zw iat-mode=0
#Bridge obfs4 51.222.13.177:80 5EDAC3B810E12B01F6FD8050D2FD3E277B289A08 cert=2uplIpLQ0q9+0qMFrK5pkaYRDOe460LL9WHBvatgkuRr/SL31wBOEupaMMJ6koRE6Ld0ew iat-mode=0
#Bridge obfs4 193.11.166.194:27015 2D82C2E354D531A68469ADF7F878FA6060C6BACA cert=4TLQPJrTSaDffMK7Nbao6LC7G9OW/NHkUwIdjLSS3KYf0Nv4/nQiiI8dY2TcsQx01NniOg iat-mode=0
#Bridge obfs4 193.11.166.194:27020 86AC7B8D430DAC4117E9F42C9EAED18133863AAF cert=0LDeJH4JzMDtkJJrFphJCiPqKx7loozKN7VNfuukMGfHO0Z8OGdzHVkhVAOfo1mUdv9cMg iat-mode=0
#Bridge obfs4 45.79.227.182:19881 A7ED6AF4F04733B40E0D3673AAE573DC36F4A23D cert=4cB8rNZkqZLmAMnMKB7F9MVg3Jr5yvvdiXOpZiGzROTU6Qf+8hRPP7PS7fWGEbOztwanKg iat-mode=0
#Bridge obfs4 185.220.101.164:12346 4C97ACCDDD9E8130D9231DA71413CEBC3F56DE14 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=2
#Bridge obfs4 174.128.247.177:443 1FFA4FB830435BC15FD7EC8D4DA59E7DE047C524 cert=7h0xI5/XhF+iF1S4506pNwaD7PZkU4JdBk6oNHRk9gfB76ZKdW5zJbGFfzUkvj+qAJYpCA iat-mode=0
#Bridge obfs4 185.220.101.221:38395 1BBABB8B42EF34BA93D0D4F37F7CAAAAF9EAA512 cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0
"""