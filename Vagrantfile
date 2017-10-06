Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "vagrant.example.com"

  config.vm.provision 'shell', inline: <<-SHELL
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
    dpkg -i erlang-solutions_1.0_all.deb
    apt-get update
    apt-get install -y esl-erlang
    apt-get install -y elixir

   # configures mix items
    su - vagrant
    mix local.rebar --force
    mix local.hex --force
    cd /vagrant
    mix deps.get
  SHELL
end
