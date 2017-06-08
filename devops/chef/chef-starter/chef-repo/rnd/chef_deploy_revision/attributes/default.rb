# Clone and sync an application from revision control
deploy_revision '/opt/my_app' do
  repo 'git://github.com/username/app.git'
end