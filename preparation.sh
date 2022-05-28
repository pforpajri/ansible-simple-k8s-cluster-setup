source kubernetes/config/variable.sh

#ssh config for master
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${MASTER}
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER1}
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER1} 
#config ssh for worker must manually configure

#perintah dibawah ini dilakukan hanya di vm controller/master
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

echo "Instalasi ansible selesai"
