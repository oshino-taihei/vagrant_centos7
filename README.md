# vagrant_centos7

Cent OS7の仮想マシンのVagrantfileおよびディスク追加を行うシェルスクリプトからなる。

## 使い方
git cloneする。

```
$ git clone https://github.com/oshino-taihei/vagrant_centos7.git <new vm name>
```

VagrantfileのVM固有箇所を変更する。

```
### VM Setting ###
hostname = "vmcentos"
ipaddress = "192.168.33.10"
vmname = "vmcentos7_vagrant"
vmmemory = "2048"
##################
```

vagrant upする
```
$ cd <new vm name>
$ vagrant up
```

vagrant sshで仮想マシンにログインする。
```
$ vagrant ssh
```
