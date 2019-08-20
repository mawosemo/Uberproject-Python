required_plugins = %w(vagrant-hostsupdater vagrant-berkshelf) # adds a plugin the install plugin w %w is a shortcut
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin # ruby for loop of that installs a plug in
end
Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "app", "/home/ubuntu/app"
    app.vm.provision "shell", inline: "echo 'DB_HOST=192.168.10.150' >> .bashrc"
    app.vm.provision "chef_solo" do |chef|
         chef.add_recipe "Nginx::default"
         chef.arguments = "--chef-license accept"
       end
   app.vm.provision "chef_solo" do |chef|
            chef.add_recipe "Python::default"
            chef.arguments = "--chef-license accept"
          end
end
end
