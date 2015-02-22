# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname = "vmcentos"
ipaddress = "192.168.33.10"
vmname = "vmcentos7_vagrant"
vmmemory = "2048"

Vagrant.configure(2) do |config|
  config.vm.box = "centos7"
  config.vm.network "private_network", ip: ipaddress
  config.vm.hostname = hostname
  config.vbguest.auto_update = false # Guest Additions自動更新無効
  config.vm.provider "virtualbox" do |vb|
    vb.name = vmname
    vb.memory = vmmemory
   
    # ディスク追加
    file_to_disk = './disk/box-disk2.vmdk'
    unless File.exist?(file_to_disk)
      vb.customize [ "createhd", "--filename", file_to_disk, "--size", 200*1024 ]
      vb.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    end
  end
 
  # シェルスクリプトでプロビジョニング
  config.vm.provision :shell, :inline => "/vagrant/provisioning/run.sh"
end

