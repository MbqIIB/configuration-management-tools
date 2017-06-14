#
# Cookbook:: chef_cron_job_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Restart the computer every week
cron 'weekly_restart' do
  weekday '1'
  minute '0'
  hour '0'
  command 'sudo reboot'
end
