source kubernetes/config/variable.sh
#perintah dibawah ini dilakukan di semua vm

ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER1}
ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER2}

ssh ${USER}@${WORKER1} "ssh-keygen -t rsa"
ssh ${USER}@${WORKER1} "ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER1}"
ssh ${USER}@${WORKER1} "ssh-copy-id -i ~/.ssh/id_rsa.pub ${USER}@${WORKER2}"
ssh ${USER}@${WORKER1} "echo ${USER} ${WORKER1}"

#perintah dibawah ini dilakukan hanya di vm controller/master
#sudo apt-add-repository ppa:ansible/ansible
#sudo apt-get update
#sudo apt-get install ansible

