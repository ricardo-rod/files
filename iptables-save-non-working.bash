➜  ~ docker ps -a
CONTAINER ID        IMAGE                  COMMAND                  CREATED              STATUS              PORTS                 NAMES
52d0c6d4e7e3        kindest/node:v1.17.0   "/usr/local/bin/entr…"   About a minute ago   Up 42 seconds                             multinode_ipv6-worker
f677f2f8a687        kindest/node:v1.17.0   "/usr/local/bin/entr…"   About a minute ago   Up 42 seconds       ::1:32768->6443/tcp   multinode_ipv6-control-plane
7546685ca584        kindest/node:v1.17.0   "/usr/local/bin/entr…"   About a minute ago   Up 42 seconds                             multinode_ipv6-worker2


--------------------------------------------------------------------
--------------------------------------------------------------------

➜  ~ netstat -atunp
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 127.0.0.1:44321         0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:4330          0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:6010          0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:6011          0.0.0.0:*               LISTEN      -                   
tcp6       0      0 ::1:32768               :::*                    LISTEN      -                   
tcp6       0      0 ::1:44321               :::*                    LISTEN      -                   
tcp6       0      0 :::9090                 :::*                    LISTEN      -                   
tcp6       0      0 ::1:4330                :::*                    LISTEN      -                   
tcp6       0      0 :::22                   :::*                    LISTEN      -                   
tcp6       0      0 ::1:6010                :::*                    LISTEN      -                   
tcp6       0      0 ::1:6011                :::*                    LISTEN      -                   
tcp6       0      0 2000:2000:2000:2000:612d:22 2000:2000:2000:2000:::47188 ESTABLISHED -                   
tcp6       0      0 2000:2000:2000:2000:612d:22 2000:2000:2000:2000::47190 ESTABLISHED -                   
udp        0      0 127.0.0.1:323           0.0.0.0:*                           -                   
udp6       0      0 ::1:323                 :::*         


--------------------------------------------------------------------
--------------------------------------------------------------------

➜  ~ sudo iptables-save
# Generated by iptables-save v1.8.2 on Thu Jan 30 10:28:43 2020
*nat
:PREROUTING ACCEPT [42182:51988938]
:INPUT ACCEPT [31:2052]
:OUTPUT ACCEPT [48:3930]
:POSTROUTING ACCEPT [48:3930]
:DOCKER - [0:0]
:OUTPUT_direct - [0:0]
:POSTROUTING_ZONES - [0:0]
:POSTROUTING_direct - [0:0]
:POST_FedoraServer - [0:0]
:POST_FedoraServer_allow - [0:0]
:POST_FedoraServer_deny - [0:0]
:POST_FedoraServer_log - [0:0]
:PREROUTING_ZONES - [0:0]
:PREROUTING_direct - [0:0]
:PRE_FedoraServer - [0:0]
:PRE_FedoraServer_allow - [0:0]
:PRE_FedoraServer_deny - [0:0]
:PRE_FedoraServer_log - [0:0]
-A PREROUTING -j PREROUTING_direct
-A PREROUTING -j PREROUTING_ZONES
-A PREROUTING -m addrtype --dst-type LOCAL -j DOCKER
-A OUTPUT -j OUTPUT_direct
-A OUTPUT ! -d 127.0.0.0/8 -m addrtype --dst-type LOCAL -j DOCKER
-A POSTROUTING -s 172.17.0.0/20 ! -o docker0 -j MASQUERADE
-A POSTROUTING -j POSTROUTING_direct
-A POSTROUTING -j POSTROUTING_ZONES
-A DOCKER -i docker0 -j RETURN
-A POSTROUTING_ZONES -o ens192 -g POST_FedoraServer
-A POSTROUTING_ZONES -g POST_FedoraServer
-A POST_FedoraServer -j POST_FedoraServer_log
-A POST_FedoraServer -j POST_FedoraServer_deny
-A POST_FedoraServer -j POST_FedoraServer_allow
-A PREROUTING_ZONES -i ens192 -g PRE_FedoraServer
-A PREROUTING_ZONES -g PRE_FedoraServer
-A PRE_FedoraServer -j PRE_FedoraServer_log
-A PRE_FedoraServer -j PRE_FedoraServer_deny
-A PRE_FedoraServer -j PRE_FedoraServer_allow
COMMIT
# Completed on Thu Jan 30 10:28:43 2020
# Generated by iptables-save v1.8.2 on Thu Jan 30 10:28:43 2020
*mangle
:PREROUTING ACCEPT [43165:52883846]
:INPUT ACCEPT [43083:52863132]
:FORWARD ACCEPT [63:4918]
:OUTPUT ACCEPT [555:134869]
:POSTROUTING ACCEPT [618:139787]
:FORWARD_direct - [0:0]
:INPUT_direct - [0:0]
:OUTPUT_direct - [0:0]
:POSTROUTING_direct - [0:0]
:PREROUTING_ZONES - [0:0]
:PREROUTING_direct - [0:0]
:PRE_FedoraServer - [0:0]
:PRE_FedoraServer_allow - [0:0]
:PRE_FedoraServer_deny - [0:0]
:PRE_FedoraServer_log - [0:0]
-A PREROUTING -j PREROUTING_direct
-A PREROUTING -j PREROUTING_ZONES
-A INPUT -j INPUT_direct
-A FORWARD -j FORWARD_direct
-A OUTPUT -j OUTPUT_direct
-A POSTROUTING -j POSTROUTING_direct
-A PREROUTING_ZONES -i ens192 -g PRE_FedoraServer
-A PREROUTING_ZONES -g PRE_FedoraServer
-A PRE_FedoraServer -j PRE_FedoraServer_log
-A PRE_FedoraServer -j PRE_FedoraServer_deny
-A PRE_FedoraServer -j PRE_FedoraServer_allow
COMMIT
# Completed on Thu Jan 30 10:28:43 2020
# Generated by iptables-save v1.8.2 on Thu Jan 30 10:28:43 2020
*raw
:PREROUTING ACCEPT [43165:52883846]
:OUTPUT ACCEPT [555:134869]
:OUTPUT_direct - [0:0]
:PREROUTING_ZONES - [0:0]
:PREROUTING_direct - [0:0]
:PRE_FedoraServer - [0:0]
:PRE_FedoraServer_allow - [0:0]
:PRE_FedoraServer_deny - [0:0]
:PRE_FedoraServer_log - [0:0]
-A PREROUTING -j PREROUTING_direct
-A PREROUTING -j PREROUTING_ZONES
-A OUTPUT -j OUTPUT_direct
-A PREROUTING_ZONES -i ens192 -g PRE_FedoraServer
-A PREROUTING_ZONES -g PRE_FedoraServer
-A PRE_FedoraServer -j PRE_FedoraServer_log
-A PRE_FedoraServer -j PRE_FedoraServer_deny
-A PRE_FedoraServer -j PRE_FedoraServer_allow
COMMIT
# Completed on Thu Jan 30 10:28:43 2020
# Generated by iptables-save v1.8.2 on Thu Jan 30 10:28:43 2020
*security
:INPUT ACCEPT [317:40676]
:FORWARD ACCEPT [63:4918]
:OUTPUT ACCEPT [555:134869]
:FORWARD_direct - [0:0]
:INPUT_direct - [0:0]
:OUTPUT_direct - [0:0]
-A INPUT -j INPUT_direct
-A FORWARD -j FORWARD_direct
-A OUTPUT -j OUTPUT_direct
COMMIT
# Completed on Thu Jan 30 10:28:43 2020
# Generated by iptables-save v1.8.2 on Thu Jan 30 10:28:43 2020
*filter
:INPUT ACCEPT [0:0]
:FORWARD DROP [0:0]
:OUTPUT ACCEPT [511:127828]
:DOCKER - [0:0]
:DOCKER-ISOLATION-STAGE-1 - [0:0]
:DOCKER-ISOLATION-STAGE-2 - [0:0]
:DOCKER-USER - [0:0]
:FORWARD_IN_ZONES - [0:0]
:FORWARD_OUT_ZONES - [0:0]
:FORWARD_direct - [0:0]
:FWDI_FedoraServer - [0:0]
:FWDI_FedoraServer_allow - [0:0]
:FWDI_FedoraServer_deny - [0:0]
:FWDI_FedoraServer_log - [0:0]
:FWDO_FedoraServer - [0:0]
:FWDO_FedoraServer_allow - [0:0]
:FWDO_FedoraServer_deny - [0:0]
:FWDO_FedoraServer_log - [0:0]
:INPUT_ZONES - [0:0]
:INPUT_direct - [0:0]
:IN_FedoraServer - [0:0]
:IN_FedoraServer_allow - [0:0]
:IN_FedoraServer_deny - [0:0]
:IN_FedoraServer_log - [0:0]
:OUTPUT_direct - [0:0]
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A INPUT -i lo -j ACCEPT
-A INPUT -j INPUT_direct
-A INPUT -j INPUT_ZONES
-A INPUT -m conntrack --ctstate INVALID -j DROP
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j DOCKER-USER
-A FORWARD -j DOCKER-ISOLATION-STAGE-1
-A FORWARD -o docker0 -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A FORWARD -o docker0 -j DOCKER
-A FORWARD -i docker0 ! -o docker0 -j ACCEPT
-A FORWARD -i docker0 -o docker0 -j ACCEPT
-A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A FORWARD -i lo -j ACCEPT
-A FORWARD -j FORWARD_direct
-A FORWARD -j FORWARD_IN_ZONES
-A FORWARD -j FORWARD_OUT_ZONES
-A FORWARD -m conntrack --ctstate INVALID -j DROP
-A FORWARD -j REJECT --reject-with icmp-host-prohibited
-A OUTPUT -o lo -j ACCEPT
-A OUTPUT -j OUTPUT_direct
-A DOCKER-ISOLATION-STAGE-1 -i docker0 ! -o docker0 -j DOCKER-ISOLATION-STAGE-2
-A DOCKER-ISOLATION-STAGE-1 -j RETURN
-A DOCKER-ISOLATION-STAGE-2 -o docker0 -j DROP
-A DOCKER-ISOLATION-STAGE-2 -j RETURN
-A DOCKER-USER -j RETURN
-A FORWARD_IN_ZONES -i ens192 -g FWDI_FedoraServer
-A FORWARD_IN_ZONES -g FWDI_FedoraServer
-A FORWARD_OUT_ZONES -o ens192 -g FWDO_FedoraServer
-A FORWARD_OUT_ZONES -g FWDO_FedoraServer
-A FWDI_FedoraServer -j FWDI_FedoraServer_log
-A FWDI_FedoraServer -j FWDI_FedoraServer_deny
-A FWDI_FedoraServer -j FWDI_FedoraServer_allow
-A FWDI_FedoraServer -p icmp -j ACCEPT
-A FWDO_FedoraServer -j FWDO_FedoraServer_log
-A FWDO_FedoraServer -j FWDO_FedoraServer_deny
-A FWDO_FedoraServer -j FWDO_FedoraServer_allow
-A INPUT_ZONES -i ens192 -g IN_FedoraServer
-A INPUT_ZONES -g IN_FedoraServer
-A IN_FedoraServer -j IN_FedoraServer_log
-A IN_FedoraServer -j IN_FedoraServer_deny
-A IN_FedoraServer -j IN_FedoraServer_allow
-A IN_FedoraServer -p icmp -j ACCEPT
-A IN_FedoraServer_allow -p tcp -m tcp --dport 22 -m conntrack --ctstate NEW,UNTRACKED -j ACCEPT
-A IN_FedoraServer_allow -p tcp -m tcp --dport 9090 -m conntrack --ctstate NEW,UNTRACKED -j ACCEPT
COMMIT
# Completed on Thu Jan 30 10:28:43 2020
