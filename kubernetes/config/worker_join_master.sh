#include variable
source variable.sh

#show token & token ca-cert-hash
#sudo kubeadm token list
#sudo openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

#Worker join cluster
echo "-----"
echo "Muncul token dan token-ca-cert, copy token tersebut dan isi input dibawah ini dengan token tersebut..."
echo "..."
echo "Masukkan token: "
read token
echo "..."
echo "Masukkan token ca-cert-hash: "
read token_ca_cert_hash
echo "..."


#ssh ${USER}@${WORKER1} "hostname"
#ssh ${USER}@${WORKER1} "swapon -s; sudo swapoff -a"
#ssh ${USER}@${WORKER1} "sudo kubeadm join --token $token ${MASTER}:6443 --discovery-token-ca-cert-hash sha256:$token_ca_cert_hash"

#ssh ${USER}@${WORKER2} "hostname"
#ssh ${USER}@${WORKER2} "swapon -s; sudo swapoff -a"
#ssh ${USER}@${WORKER2} "sudo kubeadm join --token $token ${MASTER}:6443 --discovery-token-ca-cert-hash sha256:$token_ca_cert_hash"

echo "Check nodes..."
#sudo kubectl get nodes
echo "Konfigurasi selesai"

