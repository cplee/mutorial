# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define 'ubuntu1604dev' do |ubu|
    ubu.vm.box = 'box-cutter/ubuntu1604-desktop'
    config.vm.provision 'shell', inline: <<-fixgnome
      # box-cutter's gnome terminal cant launch: this fixes it
      sudo echo "LANG=en_US.UTF-8" > /etc/default/locale
      sudo service lightdm restart
    fixgnome
    %w{vscode docker mu}.each do |item|
      config.vm.provision :shell, :privileged => true, :path => "scripts/#{item}.sh"
    end
  end
end
