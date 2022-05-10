#initialize vm as Master
swapon -s
sudo swapoff -a
sudo kubeadm init --pod-network-cidr=10.244.0.0/16

#Copy admin configuration
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#Install POD Network (Flannel)
wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml

#verify config & cluster
kubectl config view
kubectl cluster-info




