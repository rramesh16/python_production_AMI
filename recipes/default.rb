#
# Cookbook:: Chef_App_DevEnv_AMI
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update "update" do
  action :update
end

package "python3" do
  action :install
end

package "python3-pip" do
  action :install
end


directory '/home/ubuntu/app/' do
  action :create
  mode '0777'
end

template '/home/ubuntu/app/requirements.txt' do
  source 'requirements.txt.erb'
  mode '0777'
end

execute "install requirements" do
  command "sudo -H pip3 install -r /home/ubuntu/app/requirements.txt"
end

execute "install pytest" do
  command "pip3 install pytest"
end

execute 'java' do
  command 'sudo apt-get install default-jre -y'
  action :run
end

directory '/home/vagrant/Downloads' do
  action :create
  mode '0777'
end

file '/home/vagrant/Downloads/ItJobsWatchTop30.csv' do
  action :create
  mode '0777'
end
