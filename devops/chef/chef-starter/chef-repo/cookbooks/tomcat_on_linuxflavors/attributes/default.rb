case node['platform']
when 'ubuntu', 'debian'
  default['tomcat_on_linuxflavors']['package_name'] = 'tomcat7'
when 'rhel', 'centos'
  default['tomcat_on_linuxflavors']['package_name'] = 'tomcat'
end