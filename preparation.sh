#perintah dibawah ini dilakukan di semua vm

ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub p0x07g@dev.knicles.my.id
ssh-copy-id -i ~/.ssh/id_rsa.pub p0x07g@dev.comnetbe.my.id

ssh p0x07g@dev.comnetbe.my.id "ssh-keygen -t rsa"
ssh p0x07g@dev.comnetbe.my.id "ssh-copy-id -i ~/.ssh/id_rsa.pub p0x07g@dev.comnetbe.my.id"
ssh p0x07g@dev.comnetbe.my.id "ssh-copy-id -i ~/.ssh/id_rsa.pub p0x07g@dev.knicles.my.id"
ssh p0x07g@dev.comnetbe.my.id "whoami; hostname"

#perintah dibawah ini dilakukan hanya di vm controller/master
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

