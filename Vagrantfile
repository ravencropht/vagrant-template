Vagrant.configure("2") do |config|

  config.vm.box_check_update = false 

  config.vm.define "master" do |master|
    master.vm.provider "virtualbox" do |v|
      v.memory = 512
    end
    master.vm.box = "bento/ubuntu-16.04"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.70.11"
    master.vm.provision "shell", path: "master.sh"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.provider "virtualbox" do |v|
      v.memory = 512
    end
    ubuntu.vm.box = "bento/ubuntu-16.04"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.70.12"
    ubuntu.vm.provision "shell", path: "ubuntu.sh"
  end

  config.vm.define "windows" do |windows|
    windows.vm.provider "virtualbox" do |v|
      v.memory = 1536
    end
    windows.vm.box = "Microsoft/EdgeOnWindows10"
    windows.vm.communicator = "winrm"
    windows.vm.hostname = "windows"
    windows.vm.network "private_network", ip: "192.168.70.13"
  end

end
