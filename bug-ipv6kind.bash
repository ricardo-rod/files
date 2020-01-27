
time kind create cluster --name multinode_ipv6 --config kind_multinode_ipv6.yaml -v 5
Creating cluster "multinode_ipv6" ...
DEBUG: docker/images.go:61] Image: kindest/node:v1.17.0@sha256:9512edae126da271b66b990b6fff768fbb7cd786c7d39e86bdf55906352fdf62 present locally
 ✓ Ensuring node image (kindest/node:v1.17.0) 🖼
 ✓ Preparing nodes 📦 📦 📦
DEBUG: config/config.go:90] Using kubeadm config:
apiServer:
  certSANs:
  - localhost
  - ::1
apiVersion: kubeadm.k8s.io/v1beta2
clusterName: multinode_ipv6
controlPlaneEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
controllerManager:
  extraArgs:
    bind-address: '::'
    enable-hostpath-provisioner: "true"
kind: ClusterConfiguration
kubernetesVersion: v1.17.0
networking:
  podSubnet: fd00:10:244::/64
  serviceSubnet: fd00:10:96::/112
scheduler:
  extraArgs:
    address: '::'
    bind-address: ::1
---
apiVersion: kubeadm.k8s.io/v1beta2
bootstrapTokens:
- token: abcdef.0123456789abcdef
kind: InitConfiguration
localAPIEndpoint:
  advertiseAddress: fc00:dead:beef::242:ac11:3
  bindPort: 6443
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:3
---
apiVersion: kubeadm.k8s.io/v1beta2
discovery:
  bootstrapToken:
    apiServerEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
    token: abcdef.0123456789abcdef
    unsafeSkipCAVerification: true
kind: JoinConfiguration
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:3
---
address: '::'
apiVersion: kubelet.config.k8s.io/v1beta1
evictionHard:
  imagefs.available: 0%
  nodefs.available: 0%
  nodefs.inodesFree: 0%
healthzBindAddress: '::'
imageGCHighThresholdPercent: 100
kind: KubeletConfiguration
---
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
DEBUG: config/config.go:90] Using kubeadm config:
apiServer:
  certSANs:
  - localhost
  - ::1
apiVersion: kubeadm.k8s.io/v1beta2
clusterName: multinode_ipv6
controlPlaneEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
controllerManager:
  extraArgs:
    bind-address: '::'
    enable-hostpath-provisioner: "true"
kind: ClusterConfiguration
kubernetesVersion: v1.17.0
networking:
  podSubnet: fd00:10:244::/64
  serviceSubnet: fd00:10:96::/112
scheduler:
  extraArgs:
    address: '::'
    bind-address: ::1
---
apiVersion: kubeadm.k8s.io/v1beta2
bootstrapTokens:
- token: abcdef.0123456789abcdef
kind: InitConfiguration
localAPIEndpoint:
  advertiseAddress: fc00:dead:beef::242:ac11:4
  bindPort: 6443
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:4
---
apiVersion: kubeadm.k8s.io/v1beta2
discovery:
  bootstrapToken:
    apiServerEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
    token: abcdef.0123456789abcdef
    unsafeSkipCAVerification: true
kind: JoinConfiguration
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:4
---
address: '::'
apiVersion: kubelet.config.k8s.io/v1beta1
evictionHard:
  imagefs.available: 0%
  nodefs.available: 0%
  nodefs.inodesFree: 0%
healthzBindAddress: '::'
imageGCHighThresholdPercent: 100
kind: KubeletConfiguration
---
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
DEBUG: config/config.go:90] Using kubeadm config:
apiServer:
  certSANs:
  - localhost
  - ::1
apiVersion: kubeadm.k8s.io/v1beta2
clusterName: multinode_ipv6
controlPlaneEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
controllerManager:
  extraArgs:
    bind-address: '::'
    enable-hostpath-provisioner: "true"
kind: ClusterConfiguration
kubernetesVersion: v1.17.0
networking:
  podSubnet: fd00:10:244::/64
  serviceSubnet: fd00:10:96::/112
scheduler:
  extraArgs:
    address: '::'
    bind-address: ::1
---
apiVersion: kubeadm.k8s.io/v1beta2
bootstrapTokens:
- token: abcdef.0123456789abcdef
kind: InitConfiguration
localAPIEndpoint:
  advertiseAddress: fc00:dead:beef::242:ac11:2
  bindPort: 6443
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:2
---
apiVersion: kubeadm.k8s.io/v1beta2
controlPlane:
  localAPIEndpoint:
    advertiseAddress: fc00:dead:beef::242:ac11:2
    bindPort: 6443
discovery:
  bootstrapToken:
    apiServerEndpoint: '[fc00:dead:beef::242:ac11:2]:6443'
    token: abcdef.0123456789abcdef
    unsafeSkipCAVerification: true
kind: JoinConfiguration
nodeRegistration:
  criSocket: /run/containerd/containerd.sock
  kubeletExtraArgs:
    fail-swap-on: "false"
    node-ip: fc00:dead:beef::242:ac11:2
---
address: '::'
apiVersion: kubelet.config.k8s.io/v1beta1
evictionHard:
  imagefs.available: 0%
  nodefs.available: 0%
  nodefs.inodesFree: 0%
healthzBindAddress: '::'
imageGCHighThresholdPercent: 100
kind: KubeletConfiguration
---
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
 ✓ Writing configuration 📜
DEBUG: kubeadminit/init.go:73] I0127 13:45:47.896709     117 initconfiguration.go:207] loading configuration from "/kind/kubeadm.conf"
[config] WARNING: Ignored YAML document with GroupVersionKind kubeadm.k8s.io/v1beta2, Kind=JoinConfiguration
W0127 13:45:47.915029     117 defaults.go:186] The recommended value for "healthzBindAddress" in "KubeletConfiguration" is: 127.0.0.1; the provided value is: ::
W0127 13:45:47.915376     117 validation.go:28] Cannot validate kube-proxy config - no validator is available
W0127 13:45:47.915387     117 validation.go:28] Cannot validate kubelet config - no validator is available
[init] Using Kubernetes version: v1.17.0
[preflight] Running pre-flight checks
I0127 13:45:47.915692     117 checks.go:577] validating Kubernetes and kubeadm version
I0127 13:45:47.915713     117 checks.go:166] validating if the firewall is enabled and active
I0127 13:45:47.944761     117 checks.go:201] validating availability of port 6443
I0127 13:45:47.945254     117 checks.go:201] validating availability of port 10259
I0127 13:45:47.945391     117 checks.go:201] validating availability of port 10257
I0127 13:45:47.945521     117 checks.go:286] validating the existence of file /etc/kubernetes/manifests/kube-apiserver.yaml
I0127 13:45:47.945652     117 checks.go:286] validating the existence of file /etc/kubernetes/manifests/kube-controller-manager.yaml
I0127 13:45:47.945711     117 checks.go:286] validating the existence of file /etc/kubernetes/manifests/kube-scheduler.yaml
I0127 13:45:47.945766     117 checks.go:286] validating the existence of file /etc/kubernetes/manifests/etcd.yaml
I0127 13:45:47.945820     117 checks.go:432] validating if the connectivity type is via proxy or direct
I0127 13:45:47.945908     117 checks.go:471] validating http connectivity to first IP address in the CIDR
I0127 13:45:47.945977     117 checks.go:471] validating http connectivity to first IP address in the CIDR
I0127 13:45:47.946064     117 checks.go:102] validating the container runtime
I0127 13:45:48.346127     117 checks.go:376] validating the presence of executable crictl
I0127 13:45:48.346629     117 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-iptables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-iptables]: /proc/sys/net/bridge/bridge-nf-call-iptables does not exist
I0127 13:45:48.347611     117 checks.go:335] validating the contents of file /proc/sys/net/ipv4/ip_forward
I0127 13:45:48.347665     117 checks.go:649] validating whether swap is enabled or not
    [WARNING Swap]: running with swap on is not supported. Please disable swap
I0127 13:45:48.347702     117 checks.go:376] validating the presence of executable ip
I0127 13:45:48.348082     117 checks.go:376] validating the presence of executable iptables
I0127 13:45:48.348692     117 checks.go:376] validating the presence of executable mount
I0127 13:45:48.348715     117 checks.go:376] validating the presence of executable nsenter
I0127 13:45:48.348766     117 checks.go:376] validating the presence of executable ebtables
I0127 13:45:48.348816     117 checks.go:376] validating the presence of executable ethtool
I0127 13:45:48.348845     117 checks.go:376] validating the presence of executable socat
I0127 13:45:48.348881     117 checks.go:376] validating the presence of executable tc
I0127 13:45:48.348920     117 checks.go:376] validating the presence of executable touch
I0127 13:45:48.349401     117 checks.go:520] running all checks
I0127 13:45:48.359680     117 checks.go:406] checking whether the given node name is reachable using net.LookupHost
    [WARNING Hostname]: hostname "multinodeipv6-control-plane" could not be reached
    [WARNING Hostname]: hostname "multinodeipv6-control-plane": lookup multinodeipv6-control-plane on 170.81.9.3:53: no such host
I0127 13:45:48.363672     117 checks.go:618] validating kubelet version
I0127 13:45:48.427249     117 checks.go:128] validating if the service is enabled and active
I0127 13:45:48.439333     117 checks.go:201] validating availability of port 10250
I0127 13:45:48.439548     117 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-ip6tables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-ip6tables]: /proc/sys/net/bridge/bridge-nf-call-ip6tables does not exist
I0127 13:45:48.439596     117 checks.go:335] validating the contents of file /proc/sys/net/ipv6/conf/default/forwarding
I0127 13:45:48.439638     117 checks.go:201] validating availability of port 2379
I0127 13:45:48.439696     117 checks.go:201] validating availability of port 2380
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action in beforehand using 'kubeadm config images pull'
I0127 13:45:48.439741     117 checks.go:249] validating the existence and emptiness of directory /var/lib/etcd
I0127 13:45:48.448840     117 checks.go:838] image exists: k8s.gcr.io/kube-apiserver:v1.17.0
I0127 13:45:48.461537     117 checks.go:838] image exists: k8s.gcr.io/kube-controller-manager:v1.17.0
I0127 13:45:48.470217     117 checks.go:838] image exists: k8s.gcr.io/kube-scheduler:v1.17.0
I0127 13:45:48.488450     117 checks.go:838] image exists: k8s.gcr.io/kube-proxy:v1.17.0
I0127 13:45:48.493696     117 checks.go:838] image exists: k8s.gcr.io/pause:3.1
I0127 13:45:48.500219     117 checks.go:838] image exists: k8s.gcr.io/etcd:3.4.3-0
I0127 13:45:48.522344     117 checks.go:838] image exists: k8s.gcr.io/coredns:1.6.5
I0127 13:45:48.522371     117 kubelet.go:63] Stopping the kubelet
[kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"
[kubelet-start] Starting the kubelet
[certs] Using certificateDir folder "/etc/kubernetes/pki"
I0127 13:45:48.606374     117 certs.go:104] creating a new certificate authority for ca
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [multinodeipv6-control-plane kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local localhost] and IPs [fd00:10:96::1 fc00:dead:beef::242:ac11:2 fc00:dead:beef::242:ac11:2 ::1]
I0127 13:45:49.408842     117 certs.go:104] creating a new certificate authority for front-proxy-ca
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
I0127 13:45:49.935389     117 certs.go:104] creating a new certificate authority for etcd-ca
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [multinodeipv6-control-plane localhost] and IPs [fc00:dead:beef::242:ac11:2 127.0.0.1 ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [multinodeipv6-control-plane localhost] and IPs [fc00:dead:beef::242:ac11:2 127.0.0.1 ::1]
[certs] Generating "etcd/healthcheck-client" certificate and key
[certs] Generating "apiserver-etcd-client" certificate and key
I0127 13:45:51.166469     117 certs.go:70] creating a new public/private key files for signing service account users
[certs] Generating "sa" key and public key
[kubeconfig] Using kubeconfig folder "/etc/kubernetes"
I0127 13:45:51.328230     117 kubeconfig.go:79] creating kubeconfig file for admin.conf
[kubeconfig] Writing "admin.conf" kubeconfig file
I0127 13:45:51.503241     117 kubeconfig.go:79] creating kubeconfig file for kubelet.conf
[kubeconfig] Writing "kubelet.conf" kubeconfig file
I0127 13:45:52.111074     117 kubeconfig.go:79] creating kubeconfig file for controller-manager.conf
[kubeconfig] Writing "controller-manager.conf" kubeconfig file
I0127 13:45:52.457770     117 kubeconfig.go:79] creating kubeconfig file for scheduler.conf
[kubeconfig] Writing "scheduler.conf" kubeconfig file
[control-plane] Using manifest folder "/etc/kubernetes/manifests"
[control-plane] Creating static Pod manifest for "kube-apiserver"
I0127 13:45:52.581147     117 manifests.go:90] [control-plane] getting StaticPodSpecs
I0127 13:45:52.594214     117 manifests.go:115] [control-plane] wrote static Pod manifest for component "kube-apiserver" to "/etc/kubernetes/manifests/kube-apiserver.yaml"
I0127 13:45:52.594231     117 manifests.go:90] [control-plane] getting StaticPodSpecs
W0127 13:45:52.594296     117 manifests.go:214] the default kube-apiserver authorization-mode is "Node,RBAC"; using "Node,RBAC"
I0127 13:45:52.595240     117 manifests.go:115] [control-plane] wrote static Pod manifest for component "kube-controller-manager" to "/etc/kubernetes/manifests/kube-controller-manager.yaml"
I0127 13:45:52.595252     117 manifests.go:90] [control-plane] getting StaticPodSpecs
W0127 13:45:52.595310     117 manifests.go:214] the default kube-apiserver authorization-mode is "Node,RBAC"; using "Node,RBAC"
[control-plane] Creating static Pod manifest for "kube-controller-manager"
[control-plane] Creating static Pod manifest for "kube-scheduler"
[etcd] Creating static Pod manifest for local etcd in "/etc/kubernetes/manifests"
I0127 13:45:52.595961     117 manifests.go:115] [control-plane] wrote static Pod manifest for component "kube-scheduler" to "/etc/kubernetes/manifests/kube-scheduler.yaml"
I0127 13:45:52.596737     117 local.go:69] [etcd] wrote Static Pod manifest for a local etcd member to "/etc/kubernetes/manifests/etcd.yaml"
I0127 13:45:52.596760     117 waitcontrolplane.go:80] [wait-control-plane] Waiting for the API server to be healthy
I0127 13:45:52.597558     117 loader.go:375] Config loaded from file:  /etc/kubernetes/admin.conf
[wait-control-plane] Waiting for the kubelet to boot up the control plane as static Pods from directory "/etc/kubernetes/manifests". This can take up to 4m0s
I0127 13:45:52.606315     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 1 milliseconds
I0127 13:45:53.106954     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:53.606755     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:54.106739     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:54.606738     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:55.106731     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:55.606787     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:56.106716     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:56.606744     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:57.106791     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:57.606730     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:58.106709     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:58.607066     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:59.106736     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:45:59.606743     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:00.106729     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:00.606789     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:01.106735     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:01.606782     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:02.106730     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:02.606732     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:03.106714     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:03.606729     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:04.106734     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:04.606764     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:05.106738     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:05.606770     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:06.106744     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:06.606735     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:07.106737     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:07.606882     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:08.106799     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:08.606731     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:09.106739     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:09.606735     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:10.106746     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:10.606738     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:11.106746     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:11.606770     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:12.106760     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:12.607082     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:13.106739     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:13.606718     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:14.106736     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:14.606796     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:15.108573     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 1 milliseconds
I0127 13:46:15.606753     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:16.106745     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:16.606736     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:17.106784     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:17.606798     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:18.106735     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:18.606819     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s  in 0 milliseconds
I0127 13:46:22.936846     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s 500 Internal Server Error in 3829 milliseconds
I0127 13:46:23.108182     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s 500 Internal Server Error in 1 milliseconds
I0127 13:46:23.607714     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s 500 Internal Server Error in 1 milliseconds
I0127 13:46:24.108589     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s 500 Internal Server Error in 1 milliseconds
I0127 13:46:24.608450     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/healthz?timeout=10s 200 OK in 1 milliseconds
I0127 13:46:24.608526     117 uploadconfig.go:108] [upload-config] Uploading the kubeadm ClusterConfiguration to a ConfigMap
[apiclient] All control plane components are healthy after 32.004171 seconds
[upload-config] Storing the configuration used in ConfigMap "kubeadm-config" in the "kube-system" Namespace
I0127 13:46:24.612421     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:24.615743     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/roles?timeout=10s 201 Created in 2 milliseconds
[kubelet] Creating a ConfigMap "kubelet-config-1.17" in namespace kube-system with the configuration for the kubelets in the cluster
I0127 13:46:24.620003     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/rolebindings?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:24.620464     117 uploadconfig.go:122] [upload-config] Uploading the kubelet component config to a ConfigMap
I0127 13:46:24.622915     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps?timeout=10s 201 Created in 1 milliseconds
I0127 13:46:24.625077     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/roles?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:24.626872     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/rolebindings?timeout=10s 201 Created in 1 milliseconds
I0127 13:46:24.627034     117 uploadconfig.go:127] [upload-config] Preserving the CRISocket information for the control-plane node
I0127 13:46:24.627107     117 patchnode.go:30] [patchnode] Uploading the CRI Socket information "/run/containerd/containerd.sock" to the Node API object "multinodeipv6-control-plane" as an annotation
I0127 13:46:25.129427     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/nodes/multinodeipv6-control-plane?timeout=10s 200 OK in 1 milliseconds
I0127 13:46:25.141549     117 round_trippers.go:443] PATCH https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/nodes/multinodeipv6-control-plane?timeout=10s 200 OK in 8 milliseconds
[upload-certs] Skipping phase. Please see --upload-certs
[mark-control-plane] Marking the node multinodeipv6-control-plane as control-plane by adding the label "node-role.kubernetes.io/master=''"
[mark-control-plane] Marking the node multinodeipv6-control-plane as control-plane by adding the taints [node-role.kubernetes.io/master:NoSchedule]
I0127 13:46:25.644020     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/nodes/multinodeipv6-control-plane?timeout=10s 200 OK in 1 milliseconds
I0127 13:46:25.648139     117 round_trippers.go:443] PATCH https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/nodes/multinodeipv6-control-plane?timeout=10s 200 OK in 3 milliseconds
[bootstrap-token] Configuring bootstrap tokens, cluster-info ConfigMap, RBAC Roles
I0127 13:46:25.649595     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/secrets/bootstrap-token-abcdef?timeout=10s 404 Not Found in 1 milliseconds
[bootstrap-token] configured RBAC rules to allow Node Bootstrap tokens to post CSRs in order for nodes to get long term certificate credentials
I0127 13:46:25.652181     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/secrets?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.655103     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s 201 Created in 2 milliseconds
[bootstrap-token] configured RBAC rules to allow the csrapprover controller automatically approve CSRs from a Node Bootstrap Token
I0127 13:46:25.657259     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s 201 Created in 1 milliseconds
[bootstrap-token] configured RBAC rules to allow certificate rotation for all node client certificates in the cluster
I0127 13:46:25.659199     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s 201 Created in 1 milliseconds
I0127 13:46:25.659388     117 clusterinfo.go:45] [bootstrap-token] loading admin kubeconfig
[bootstrap-token] Creating the "cluster-info" ConfigMap in the "kube-public" namespace
I0127 13:46:25.659778     117 loader.go:375] Config loaded from file:  /etc/kubernetes/admin.conf
I0127 13:46:25.659795     117 clusterinfo.go:53] [bootstrap-token] copying the cluster from admin.conf to the bootstrap kubeconfig
I0127 13:46:25.660014     117 clusterinfo.go:65] [bootstrap-token] creating/updating ConfigMap in kube-public namespace
I0127 13:46:25.662483     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.662728     117 clusterinfo.go:79] creating the RBAC rules for exposing the cluster-info ConfigMap in the kube-public namespace
I0127 13:46:25.665427     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-public/roles?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.667974     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-public/rolebindings?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.668130     117 kubeletfinalize.go:88] [kubelet-finalize] Assuming that kubelet client certificate rotation is enabled: found "/var/lib/kubelet/pki/kubelet-client-current.pem"
[kubelet-finalize] Updating "/etc/kubernetes/kubelet.conf" to point to a rotatable kubelet client certificate and key
I0127 13:46:25.668614     117 loader.go:375] Config loaded from file:  /etc/kubernetes/kubelet.conf
I0127 13:46:25.669153     117 kubeletfinalize.go:132] [kubelet-finalize] Restarting the kubelet to enable client certificate rotation
I0127 13:46:25.779327     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps/kube-dns?timeout=10s 404 Not Found in 3 milliseconds
I0127 13:46:25.781869     117 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps/coredns?timeout=10s 404 Not Found in 2 milliseconds
I0127 13:46:25.785589     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps?timeout=10s 201 Created in 3 milliseconds
I0127 13:46:25.789914     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterroles?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.792245     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:25.798407     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/serviceaccounts?timeout=10s 201 Created in 5 milliseconds
I0127 13:46:25.813432     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/apps/v1/namespaces/kube-system/deployments?timeout=10s 201 Created in 9 milliseconds
[addons] Applied essential addon: CoreDNS
I0127 13:46:25.820771     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/services?timeout=10s 201 Created in 6 milliseconds
I0127 13:46:25.844491     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/serviceaccounts?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:26.042233     117 request.go:565] Throttling request took 193.739673ms, request: POST:https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps?timeout=10s
I0127 13:46:26.044394     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-system/configmaps?timeout=10s 201 Created in 2 milliseconds
I0127 13:46:26.056438     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/apps/v1/namespaces/kube-system/daemonsets?timeout=10s 201 Created in 6 milliseconds
I0127 13:46:26.058280     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s 201 Created in 1 milliseconds
I0127 13:46:26.060400     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/roles?timeout=10s 201 Created in 1 milliseconds
I0127 13:46:26.062100     117 round_trippers.go:443] POST https://[fc00:dead:beef::242:ac11:2]:6443/apis/rbac.authorization.k8s.io/v1/namespaces/kube-system/rolebindings?timeout=10s 201 Created in 1 milliseconds
[addons] Applied essential addon: kube-proxy
I0127 13:46:26.062597     117 loader.go:375] Config loaded from file:  /etc/kubernetes/admin.conf
I0127 13:46:26.063247     117 loader.go:375] Config loaded from file:  /etc/kubernetes/admin.conf

Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

You can now join any number of control-plane nodes by copying certificate authorities
and service account keys on each node and then running the following as root:

  kubeadm join [fc00:dead:beef::242:ac11:2]:6443 --token <value withheld> \
    --discovery-token-ca-cert-hash sha256:51a29b15964f310870308eb8c1906cdbd7c2d1185ef47fee572fee8312d253ba \
    --control-plane

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join [fc00:dead:beef::242:ac11:2]:6443 --token <value withheld> \
    --discovery-token-ca-cert-hash sha256:51a29b15964f310870308eb8c1906cdbd7c2d1185ef47fee572fee8312d253ba
 ✓ Starting control-plane 🕹️
 ✓ Installing CNI 🔌
 ✓ Installing StorageClass 💾
DEBUG: kubeadmjoin/join.go:133] W0127 13:46:28.632141     419 join.go:346] [preflight] WARNING: JoinControlPane.controlPlane settings will be ignored when control-plane flag is not set.
I0127 13:46:28.632187     419 join.go:371] [preflight] found NodeName empty; using OS hostname as NodeName
I0127 13:46:28.632198     419 joinconfiguration.go:75] loading configuration from "/kind/kubeadm.conf"
I0127 13:46:28.634747     419 preflight.go:90] [preflight] Running general checks
I0127 13:46:28.634822     419 checks.go:249] validating the existence and emptiness of directory /etc/kubernetes/manifests
I0127 13:46:28.634869     419 checks.go:286] validating the existence of file /etc/kubernetes/kubelet.conf
I0127 13:46:28.634878     419 checks.go:286] validating the existence of file /etc/kubernetes/bootstrap-kubelet.conf
I0127 13:46:28.634885     419 checks.go:102] validating the container runtime
[preflight] Running pre-flight checks
I0127 13:46:28.643470     419 checks.go:376] validating the presence of executable crictl
I0127 13:46:28.643509     419 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-iptables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-iptables]: /proc/sys/net/bridge/bridge-nf-call-iptables does not exist
I0127 13:46:28.643557     419 checks.go:335] validating the contents of file /proc/sys/net/ipv4/ip_forward
I0127 13:46:28.643606     419 checks.go:649] validating whether swap is enabled or not
    [WARNING Swap]: running with swap on is not supported. Please disable swap
I0127 13:46:28.643643     419 checks.go:376] validating the presence of executable ip
I0127 13:46:28.643695     419 checks.go:376] validating the presence of executable iptables
I0127 13:46:28.643748     419 checks.go:376] validating the presence of executable mount
I0127 13:46:28.643763     419 checks.go:376] validating the presence of executable nsenter
I0127 13:46:28.643792     419 checks.go:376] validating the presence of executable ebtables
I0127 13:46:28.643826     419 checks.go:376] validating the presence of executable ethtool
I0127 13:46:28.643847     419 checks.go:376] validating the presence of executable socat
I0127 13:46:28.643873     419 checks.go:376] validating the presence of executable tc
I0127 13:46:28.643894     419 checks.go:376] validating the presence of executable touch
I0127 13:46:28.643920     419 checks.go:520] running all checks
I0127 13:46:28.652556     419 checks.go:406] checking whether the given node name is reachable using net.LookupHost
    [WARNING Hostname]: hostname "multinodeipv6-worker" could not be reached
    [WARNING Hostname]: hostname "multinodeipv6-worker": lookup multinodeipv6-worker on 170.81.9.3:53: no such host
I0127 13:46:28.654429     419 checks.go:618] validating kubelet version
I0127 13:46:28.723917     419 checks.go:128] validating if the service is enabled and active
I0127 13:46:28.733900     419 checks.go:201] validating availability of port 10250
I0127 13:46:28.734325     419 checks.go:286] validating the existence of file /etc/kubernetes/pki/ca.crt
I0127 13:46:28.735156     419 checks.go:432] validating if the connectivity type is via proxy or direct
I0127 13:46:28.735318     419 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-ip6tables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-ip6tables]: /proc/sys/net/bridge/bridge-nf-call-ip6tables does not exist
I0127 13:46:28.735558     419 checks.go:335] validating the contents of file /proc/sys/net/ipv6/conf/default/forwarding
I0127 13:46:28.735758     419 join.go:441] [preflight] Discovering cluster-info
I0127 13:46:28.735925     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:28.736517     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:29.798468     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1061 milliseconds
I0127 13:46:29.798528     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:29.798545     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:34.798655     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:34.799103     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:35.815432     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:46:35.815470     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:35.815482     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:40.815540     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:40.815944     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:41.830481     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:41.830548     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:41.830576     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:46.830688     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:46.831107     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:47.846537     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:46:47.846609     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:47.846628     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:52.846750     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:52.847506     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:53.862650     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:46:53.862698     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:53.862707     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:58.863536     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:58.863866     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:59.878538     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:59.878598     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:59.878613     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:04.878733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:04.879190     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:05.894473     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:05.894529     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:05.894545     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:10.894665     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:10.895073     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:11.910502     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:11.910558     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:11.910572     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:16.910729     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:16.911345     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:17.926463     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:17.926520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:17.926535     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:22.926652     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:22.927319     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:23.942465     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:23.942530     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:23.942549     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:28.942680     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:28.943123     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:29.958840     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:29.958883     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:29.958894     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:34.959193     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:34.959607     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:35.974464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:35.974526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:35.974542     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:40.974678     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:40.975233     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:41.991437     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:47:41.991483     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:41.991495     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:46.991604     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:46.991975     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:48.007434     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:48.007788     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:48.007803     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:53.007923     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:53.008597     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:54.023410     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:54.023462     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:54.023479     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:59.023591     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:59.024231     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:00.039406     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:00.039462     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:00.039474     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:05.039613     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:05.040013     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:06.054471     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:48:06.054531     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:06.054543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:11.054652     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:11.055080     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:12.071470     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:12.071528     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:12.071543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:17.071660     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:17.073461     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:18.086499     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1012 milliseconds
I0127 13:48:18.086566     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:18.086589     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:23.086708     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:23.087124     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:24.102474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:24.102547     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:24.102565     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:29.102697     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:29.103149     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:30.118464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:30.118520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:30.118535     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:35.118679     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:35.119097     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:36.134506     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:36.134591     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:36.134610     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:41.134733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:41.135165     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:42.150502     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:42.150574     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:42.150595     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:47.150708     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:47.151223     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:48.167474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:48.167535     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:48.167551     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:53.167657     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:53.168115     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:54.182479     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:48:54.182540     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:54.182555     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:59.183299     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:59.183713     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:00.198505     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:49:00.198576     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:00.198596     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:05.198727     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:05.199212     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:06.214474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:06.214534     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:06.214558     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:11.214678     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:11.215083     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:12.230490     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:12.230563     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:12.230581     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:17.230689     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:17.231104     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:18.246480     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:18.246543     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:18.246560     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:23.246667     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:23.247056     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:24.263804     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:49:24.263870     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:24.263888     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:29.264005     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:29.264453     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:30.278429     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:49:30.278500     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:30.278520     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:35.278675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:35.279109     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:36.294483     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:36.294553     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:36.294569     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:41.294691     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:41.295085     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:42.310472     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:42.310530     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:42.310547     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:47.310674     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:47.311089     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:48.326442     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:48.326509     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:48.326525     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:53.326639     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:53.327044     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:54.342472     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:54.342541     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:54.342557     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:59.342689     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:59.343087     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:00.358436     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:00.358493     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:00.358507     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:05.358656     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:05.359081     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:06.374511     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:06.374575     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:06.374591     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:11.374731     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:11.375142     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:12.391454     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:12.391610     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:12.391664     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:17.392124     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:17.392721     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:18.406522     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:50:18.406599     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:18.406620     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:23.406727     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:23.407142     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:24.423480     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:24.423545     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:24.423566     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:29.423733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:29.424185     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:30.439493     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:30.439553     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:30.439572     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:35.439715     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:35.440251     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:36.454485     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:36.454548     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:36.454570     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:41.454696     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:41.455107     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:42.471464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:42.471537     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:42.471561     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:47.471688     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:47.472075     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:48.486464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:48.486526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:48.486543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:53.486683     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:53.487123     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:54.502461     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:54.502526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:54.502549     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:59.502668     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:59.503085     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:00.519534     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:51:00.519595     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:00.519613     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:05.519714     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:05.520110     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:06.534456     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:51:06.534523     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:06.534539     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:11.534654     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:11.535091     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:12.550481     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:12.550542     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:12.550558     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:17.550675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:17.551095     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:18.566454     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:18.566520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:18.566538     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:23.566675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:23.567076     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:24.582512     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:24.582570     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:24.582585     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:28.736034     419 token.go:208] [discovery] abort connecting to API servers after timeout of 5m0s
abort connecting to API servers after timeout of 5m0s
k8s.io/kubernetes/cmd/kubeadm/app/discovery/token.fetchKubeConfigWithTimeout
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/token/token.go:207
k8s.io/kubernetes/cmd/kubeadm/app/discovery/token.RetrieveValidatedConfigInfo
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/token/token.go:63
k8s.io/kubernetes/cmd/kubeadm/app/discovery.DiscoverValidatedKubeConfig
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:82
k8s.io/kubernetes/cmd/kubeadm/app/discovery.For
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:42
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).TLSBootstrapCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:442
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).InitCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:452
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join.runPreflight
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join/preflight.go:95
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:234
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357
couldn't validate the identity of the API Server
k8s.io/kubernetes/cmd/kubeadm/app/discovery.For
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:44
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).TLSBootstrapCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:442
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).InitCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:452
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join.runPreflight
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join/preflight.go:95
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:234
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357
error execution phase preflight
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:235
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357
 ✗ Joining worker nodes 🚜
DEBUG: kubeadmjoin/join.go:133] W0127 13:46:28.658114     426 join.go:346] [preflight] WARNING: JoinControlPane.controlPlane settings will be ignored when control-plane flag is not set.
I0127 13:46:28.658158     426 join.go:371] [preflight] found NodeName empty; using OS hostname as NodeName
I0127 13:46:28.658172     426 joinconfiguration.go:75] loading configuration from "/kind/kubeadm.conf"
[preflight] Running pre-flight checks
I0127 13:46:28.659912     426 preflight.go:90] [preflight] Running general checks
I0127 13:46:28.661437     426 checks.go:249] validating the existence and emptiness of directory /etc/kubernetes/manifests
I0127 13:46:28.661506     426 checks.go:286] validating the existence of file /etc/kubernetes/kubelet.conf
I0127 13:46:28.661517     426 checks.go:286] validating the existence of file /etc/kubernetes/bootstrap-kubelet.conf
I0127 13:46:28.661524     426 checks.go:102] validating the container runtime
I0127 13:46:28.689690     426 checks.go:376] validating the presence of executable crictl
I0127 13:46:28.689736     426 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-iptables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-iptables]: /proc/sys/net/bridge/bridge-nf-call-iptables does not exist
I0127 13:46:28.689785     426 checks.go:335] validating the contents of file /proc/sys/net/ipv4/ip_forward
I0127 13:46:28.689832     426 checks.go:649] validating whether swap is enabled or not
    [WARNING Swap]: running with swap on is not supported. Please disable swap
I0127 13:46:28.689880     426 checks.go:376] validating the presence of executable ip
I0127 13:46:28.689979     426 checks.go:376] validating the presence of executable iptables
I0127 13:46:28.690053     426 checks.go:376] validating the presence of executable mount
I0127 13:46:28.690085     426 checks.go:376] validating the presence of executable nsenter
I0127 13:46:28.690117     426 checks.go:376] validating the presence of executable ebtables
I0127 13:46:28.690164     426 checks.go:376] validating the presence of executable ethtool
I0127 13:46:28.690194     426 checks.go:376] validating the presence of executable socat
I0127 13:46:28.690232     426 checks.go:376] validating the presence of executable tc
I0127 13:46:28.690262     426 checks.go:376] validating the presence of executable touch
I0127 13:46:28.690323     426 checks.go:520] running all checks
I0127 13:46:28.702048     426 checks.go:406] checking whether the given node name is reachable using net.LookupHost
    [WARNING Hostname]: hostname "multinodeipv6-worker2" could not be reached
    [WARNING Hostname]: hostname "multinodeipv6-worker2": lookup multinodeipv6-worker2 on 170.81.9.3:53: no such host
I0127 13:46:28.703513     426 checks.go:618] validating kubelet version
I0127 13:46:28.760808     426 checks.go:128] validating if the service is enabled and active
I0127 13:46:28.769973     426 checks.go:201] validating availability of port 10250
I0127 13:46:28.770293     426 checks.go:286] validating the existence of file /etc/kubernetes/pki/ca.crt
I0127 13:46:28.770351     426 checks.go:432] validating if the connectivity type is via proxy or direct
I0127 13:46:28.770484     426 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-ip6tables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-ip6tables]: /proc/sys/net/bridge/bridge-nf-call-ip6tables does not exist
I0127 13:46:28.770604     426 checks.go:335] validating the contents of file /proc/sys/net/ipv6/conf/default/forwarding
I0127 13:46:28.770725     426 join.go:441] [preflight] Discovering cluster-info
I0127 13:46:28.770854     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:28.771333     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:29.798468     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1027 milliseconds
I0127 13:46:29.798528     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:29.798545     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:34.799846     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:34.800297     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:35.814493     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:35.814608     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:35.814717     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:40.814947     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:40.815404     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:41.830479     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:41.830544     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:41.830562     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:46.831395     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:46.831739     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:47.846515     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:47.846591     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:47.846611     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:52.846749     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:52.847490     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:53.862448     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:53.862531     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:53.862561     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:58.862711     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:58.863182     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:59.878729     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:46:59.878775     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:59.878804     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:04.879035     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:04.879485     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:05.894624     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:05.894661     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:05.894683     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:10.895383     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:10.895742     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:11.910502     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:11.910557     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:11.910571     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:16.910968     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:16.911400     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:17.927567     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:47:17.927614     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:17.927627     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:22.927708     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:22.928103     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:23.942462     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:23.942520     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:23.942536     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:28.942680     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:28.943088     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:29.958470     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:29.958529     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:29.958561     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:34.958694     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:34.959894     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:35.974464     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:35.974527     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:35.974543     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:40.974670     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:40.975110     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:41.990499     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:41.990580     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:41.990608     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:46.990781     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:46.991245     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:48.007460     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:47:48.007788     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:48.007805     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:53.007923     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:53.008400     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:54.022481     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:47:54.022542     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:54.022566     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:59.022706     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:59.023159     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:00.038483     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:00.038549     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:00.038572     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:05.038705     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:05.039146     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:06.054483     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:06.054529     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:06.054543     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:11.054651     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:11.055080     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:11.055424     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 0 milliseconds
I0127 13:48:11.055462     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:11.055479     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:16.055599     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:16.056018     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:17.062487     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1006 milliseconds
I0127 13:48:17.062555     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:17.062576     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:22.062697     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:22.063096     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:23.078470     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:23.078539     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:23.078561     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:28.078686     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:28.079258     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:29.094462     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:29.094525     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:29.094543     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:34.094669     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:34.095094     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:35.111470     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:35.111772     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:35.111937     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:40.112191     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:40.112657     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:41.126487     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:48:41.126550     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:41.126572     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:46.126698     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:46.127139     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:47.142466     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:47.142528     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:47.142547     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:52.142673     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:52.143073     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:53.159498     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:53.159560     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:53.159574     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:58.159699     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:58.160125     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:59.174490     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:48:59.174546     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:59.174564     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:04.174713     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:04.175155     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:05.190481     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:05.190542     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:05.190558     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:10.190712     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:10.191169     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:11.206477     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:11.206536     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:11.206552     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:16.206669     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:16.207140     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:17.222481     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:17.222547     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:17.222577     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:22.222696     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:22.223147     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:23.238502     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:23.238580     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:23.238634     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:28.238766     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:28.239228     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:29.254546     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:29.254619     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:29.254634     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:34.254755     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:34.255187     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:35.270713     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:35.270800     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:35.270816     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:40.270933     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:40.271364     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:41.287422     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:41.287496     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:41.287518     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:46.287634     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:46.288209     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:47.303442     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:47.303507     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:47.303526     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:52.303651     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:52.304062     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:53.318455     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:49:53.318514     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:53.318532     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:58.318654     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:58.319092     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:59.335431     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:49:59.335500     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:59.335531     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:04.335674     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:04.336119     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:05.351470     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:05.351537     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:05.351559     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:10.351683     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:10.352143     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:11.367537     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:11.367600     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:11.367617     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:16.367779     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:16.368213     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:17.383436     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:17.383502     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:17.383517     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:22.383644     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:22.384076     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:23.398431     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:23.398498     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:23.398515     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:28.398631     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:28.399036     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:29.414442     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:29.414503     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:29.414518     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:34.414632     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:34.415044     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:35.430506     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:35.430574     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:35.430593     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:40.430735     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:40.431158     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:41.446462     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:41.446525     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:41.446544     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:46.446657     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:46.447040     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:47.462497     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:47.462564     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:47.462579     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:52.462701     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:52.463132     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:53.479134     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:53.479200     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:53.479220     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:58.479338     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:58.479893     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:59.494496     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:59.494565     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:59.494581     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:04.494704     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:04.495149     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:05.510466     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:05.510532     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:05.510555     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:10.510668     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:10.511155     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:11.527468     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:51:11.527529     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:11.527544     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:16.527678     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:16.528080     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:17.542445     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:51:17.542514     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:17.542536     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:22.542662     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:22.543088     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:23.559459     426 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:51:23.559517     426 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:23.559545     426 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:28.559674     426 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:28.560122     426 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:28.770973     426 token.go:208] [discovery] abort connecting to API servers after timeout of 5m0s
ERROR: failed to create cluster: failed to join node with kubeadm: command "docker exec --privileged multinode_ipv6-worker kubeadm join --config /kind/kubeadm.conf --ignore-preflight-errors=all --v=6" failed with error: exit status 1

Output:
W0127 13:46:28.632141     419 join.go:346] [preflight] WARNING: JoinControlPane.controlPlane settings will be ignored when control-plane flag is not set.
I0127 13:46:28.632187     419 join.go:371] [preflight] found NodeName empty; using OS hostname as NodeName
I0127 13:46:28.632198     419 joinconfiguration.go:75] loading configuration from "/kind/kubeadm.conf"
I0127 13:46:28.634747     419 preflight.go:90] [preflight] Running general checks
I0127 13:46:28.634822     419 checks.go:249] validating the existence and emptiness of directory /etc/kubernetes/manifests
I0127 13:46:28.634869     419 checks.go:286] validating the existence of file /etc/kubernetes/kubelet.conf
I0127 13:46:28.634878     419 checks.go:286] validating the existence of file /etc/kubernetes/bootstrap-kubelet.conf
I0127 13:46:28.634885     419 checks.go:102] validating the container runtime
[preflight] Running pre-flight checks
I0127 13:46:28.643470     419 checks.go:376] validating the presence of executable crictl
I0127 13:46:28.643509     419 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-iptables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-iptables]: /proc/sys/net/bridge/bridge-nf-call-iptables does not exist
I0127 13:46:28.643557     419 checks.go:335] validating the contents of file /proc/sys/net/ipv4/ip_forward
I0127 13:46:28.643606     419 checks.go:649] validating whether swap is enabled or not
    [WARNING Swap]: running with swap on is not supported. Please disable swap
I0127 13:46:28.643643     419 checks.go:376] validating the presence of executable ip
I0127 13:46:28.643695     419 checks.go:376] validating the presence of executable iptables
I0127 13:46:28.643748     419 checks.go:376] validating the presence of executable mount
I0127 13:46:28.643763     419 checks.go:376] validating the presence of executable nsenter
I0127 13:46:28.643792     419 checks.go:376] validating the presence of executable ebtables
I0127 13:46:28.643826     419 checks.go:376] validating the presence of executable ethtool
I0127 13:46:28.643847     419 checks.go:376] validating the presence of executable socat
I0127 13:46:28.643873     419 checks.go:376] validating the presence of executable tc
I0127 13:46:28.643894     419 checks.go:376] validating the presence of executable touch
I0127 13:46:28.643920     419 checks.go:520] running all checks
I0127 13:46:28.652556     419 checks.go:406] checking whether the given node name is reachable using net.LookupHost
    [WARNING Hostname]: hostname "multinodeipv6-worker" could not be reached
    [WARNING Hostname]: hostname "multinodeipv6-worker": lookup multinodeipv6-worker on 170.81.9.3:53: no such host
I0127 13:46:28.654429     419 checks.go:618] validating kubelet version
I0127 13:46:28.723917     419 checks.go:128] validating if the service is enabled and active
I0127 13:46:28.733900     419 checks.go:201] validating availability of port 10250
I0127 13:46:28.734325     419 checks.go:286] validating the existence of file /etc/kubernetes/pki/ca.crt
I0127 13:46:28.735156     419 checks.go:432] validating if the connectivity type is via proxy or direct
I0127 13:46:28.735318     419 checks.go:335] validating the contents of file /proc/sys/net/bridge/bridge-nf-call-ip6tables
    [WARNING FileContent--proc-sys-net-bridge-bridge-nf-call-ip6tables]: /proc/sys/net/bridge/bridge-nf-call-ip6tables does not exist
I0127 13:46:28.735558     419 checks.go:335] validating the contents of file /proc/sys/net/ipv6/conf/default/forwarding
I0127 13:46:28.735758     419 join.go:441] [preflight] Discovering cluster-info
I0127 13:46:28.735925     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:28.736517     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:29.798468     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1061 milliseconds
I0127 13:46:29.798528     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:29.798545     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:34.798655     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:34.799103     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:35.815432     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:46:35.815470     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:35.815482     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:40.815540     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:40.815944     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:41.830481     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:41.830548     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:41.830576     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:46.830688     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:46.831107     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:47.846537     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:46:47.846609     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:47.846628     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:52.846750     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:52.847506     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:53.862650     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:46:53.862698     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:53.862707     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:46:58.863536     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:58.863866     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:46:59.878538     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:46:59.878598     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:46:59.878613     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:04.878733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:04.879190     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:05.894473     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:05.894529     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:05.894545     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:10.894665     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:10.895073     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:11.910502     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:11.910558     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:11.910572     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:16.910729     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:16.911345     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:17.926463     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:17.926520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:17.926535     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:22.926652     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:22.927319     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:23.942465     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:23.942530     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:23.942549     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:28.942680     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:28.943123     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:29.958840     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:29.958883     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:29.958894     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:34.959193     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:34.959607     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:35.974464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:35.974526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:35.974542     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:40.974678     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:40.975233     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:41.991437     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:47:41.991483     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:41.991495     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:46.991604     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:46.991975     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:48.007434     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:47:48.007788     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:48.007803     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:53.007923     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:53.008597     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:54.023410     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:47:54.023462     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:47:54.023479     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:47:59.023591     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:47:59.024231     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:00.039406     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:00.039462     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:00.039474     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:05.039613     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:05.040013     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:06.054471     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:48:06.054531     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:06.054543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:11.054652     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:11.055080     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:12.071470     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:12.071528     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:12.071543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:17.071660     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:17.073461     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:18.086499     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1012 milliseconds
I0127 13:48:18.086566     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:18.086589     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:23.086708     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:23.087124     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:24.102474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:24.102547     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:24.102565     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:29.102697     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:29.103149     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:30.118464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:30.118520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:30.118535     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:35.118679     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:35.119097     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:36.134506     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:36.134591     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:36.134610     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:41.134733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:41.135165     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:42.150502     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:48:42.150574     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:42.150595     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:47.150708     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:47.151223     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:48.167474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:48:48.167535     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:48.167551     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:53.167657     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:53.168115     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:54.182479     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:48:54.182540     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:48:54.182555     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:48:59.183299     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:48:59.183713     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:00.198505     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:49:00.198576     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:00.198596     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:05.198727     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:05.199212     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:06.214474     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:06.214534     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:06.214558     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:11.214678     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:11.215083     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:12.230490     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:12.230563     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:12.230581     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:17.230689     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:17.231104     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:18.246480     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:18.246543     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:18.246560     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:23.246667     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:23.247056     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:24.263804     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:49:24.263870     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:24.263888     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:29.264005     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:29.264453     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:30.278429     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:49:30.278500     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:30.278520     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:35.278675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:35.279109     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:36.294483     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:36.294553     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:36.294569     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:41.294691     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:41.295085     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:42.310472     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:42.310530     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:42.310547     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:47.310674     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:47.311089     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:48.326442     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:48.326509     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:48.326525     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:53.326639     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:53.327044     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:54.342472     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:49:54.342541     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:49:54.342557     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:49:59.342689     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:49:59.343087     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:00.358436     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:00.358493     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:00.358507     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:05.358656     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:05.359081     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:06.374511     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:06.374575     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:06.374591     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:11.374731     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:11.375142     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:12.391454     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:12.391610     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:12.391664     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:17.392124     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:17.392721     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:18.406522     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1013 milliseconds
I0127 13:50:18.406599     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:18.406620     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:23.406727     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:23.407142     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:24.423480     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:24.423545     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:24.423566     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:29.423733     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:29.424185     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:30.439493     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:30.439553     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:30.439572     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:35.439715     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:35.440251     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:36.454485     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:36.454548     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:36.454570     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:41.454696     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:41.455107     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:42.471464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:50:42.471537     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:42.471561     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:47.471688     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:47.472075     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:48.486464     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:50:48.486526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:48.486543     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:53.486683     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:53.487123     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:54.502461     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:50:54.502526     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:50:54.502549     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:50:59.502668     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:50:59.503085     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:00.519534     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1016 milliseconds
I0127 13:51:00.519595     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:00.519613     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:05.519714     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:05.520110     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:06.534456     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1014 milliseconds
I0127 13:51:06.534523     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:06.534539     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:11.534654     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:11.535091     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:12.550481     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:12.550542     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:12.550558     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:17.550675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:17.551095     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:18.566454     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:18.566520     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:18.566538     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:23.566675     419 token.go:188] [discovery] Trying to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:23.567076     419 token.go:73] [discovery] Created cluster-info discovery client, requesting info from "https://[fc00:dead:beef::242:ac11:2]:6443"
I0127 13:51:24.582512     419 round_trippers.go:443] GET https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s  in 1015 milliseconds
I0127 13:51:24.582570     419 token.go:78] [discovery] Failed to request cluster info: [Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied]
I0127 13:51:24.582585     419 token.go:191] [discovery] Failed to connect to API Server "[fc00:dead:beef::242:ac11:2]:6443": Get https://[fc00:dead:beef::242:ac11:2]:6443/api/v1/namespaces/kube-public/configmaps/cluster-info?timeout=10s: dial tcp [fc00:dead:beef::242:ac11:2]:6443: connect: permission denied
I0127 13:51:28.736034     419 token.go:208] [discovery] abort connecting to API servers after timeout of 5m0s
abort connecting to API servers after timeout of 5m0s
k8s.io/kubernetes/cmd/kubeadm/app/discovery/token.fetchKubeConfigWithTimeout
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/token/token.go:207
k8s.io/kubernetes/cmd/kubeadm/app/discovery/token.RetrieveValidatedConfigInfo
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/token/token.go:63
k8s.io/kubernetes/cmd/kubeadm/app/discovery.DiscoverValidatedKubeConfig
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:82
k8s.io/kubernetes/cmd/kubeadm/app/discovery.For
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:42
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).TLSBootstrapCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:442
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).InitCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:452
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join.runPreflight
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join/preflight.go:95
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:234
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357
couldn't validate the identity of the API Server
k8s.io/kubernetes/cmd/kubeadm/app/discovery.For
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/discovery/discovery.go:44
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).TLSBootstrapCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:442
k8s.io/kubernetes/cmd/kubeadm/app/cmd.(*joinData).InitCfg
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:452
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join.runPreflight
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/join/preflight.go:95
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:234
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357
error execution phase preflight
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:235
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:422
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:207
k8s.io/kubernetes/cmd/kubeadm/app/cmd.NewCmdJoin.func1
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/cmd/join.go:170
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:826
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).ExecuteC
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:914
k8s.io/kubernetes/vendor/github.com/spf13/cobra.(*Command).Execute
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/vendor/github.com/spf13/cobra/command.go:864
k8s.io/kubernetes/cmd/kubeadm/app.Run
    /go/src/k8s.io/kubernetes/_output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:50
main.main
    _output/dockerized/go/src/k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
    /usr/local/go/src/runtime/proc.go:203
runtime.goexit
    /usr/local/go/src/runtime/asm_amd64.s:1357

Stack Trace:
sigs.k8s.io/kind/pkg/errors.WithStack
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/errors/errors.go:51
sigs.k8s.io/kind/pkg/exec.(*LocalCmd).Run
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/exec/local.go:116
sigs.k8s.io/kind/pkg/cluster/internal/providers/docker.(*nodeCmd).Run
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/cluster/internal/providers/docker/node.go:130
sigs.k8s.io/kind/pkg/exec.CombinedOutputLines
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/exec/helpers.go:67
sigs.k8s.io/kind/pkg/cluster/internal/create/actions/kubeadmjoin.runKubeadmJoin
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/cluster/internal/create/actions/kubeadmjoin/join.go:132
sigs.k8s.io/kind/pkg/cluster/internal/create/actions/kubeadmjoin.joinWorkers.func1
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/cluster/internal/create/actions/kubeadmjoin/join.go:107
sigs.k8s.io/kind/pkg/errors.UntilErrorConcurrent.func1
    /home/ricardo/go/pkg/mod/sigs.k8s.io/kind@v0.7.0/pkg/errors/concurrent.go:30
runtime.goexit
    /usr/lib/golang/src/runtime/asm_amd64.s:1337

real    6m9.444s
user    0m1.831s
sys 0m1.520s
