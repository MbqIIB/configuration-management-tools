# Restart the computer every week
cron 'weekly_restart' do
  weekday '1'
  minute '0'
  hour '0'
  command 'sudo reboot'
end