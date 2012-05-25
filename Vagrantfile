#
# Simple Vagrantfile, with Chef-solo provisioning
#

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Booting

  # Networking
  # config.vm.network :hostonly, "192.168.33.10"
  # config.vm.network :bridged

  # Port forwarding
  # config.vm.forward_port 80, 8080

  # Provisioning
  # Needs build-essential cookbook from https://github.com/opscode/cookbooks
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    # chef.log_level = :debug

    chef.add_recipe "apt"
    chef.add_recipe "build-essential"

    # https://github.com/mdxp/nodejs-cookbook
    chef.add_recipe "nodejs::install_from_package"

    chef.json.merge!({
      :apt => {
        :mirror => :nl
      },    
      :nodejs => {
        :version => "0.6.18"
      }
    })

    # https://github.com/edelight/chef-cookbooks
    chef.add_recipe "mongodb::default"
    
    # https://github.com/phlipper/chef-redis
    chef.add_recipe "redis"
  end

end
