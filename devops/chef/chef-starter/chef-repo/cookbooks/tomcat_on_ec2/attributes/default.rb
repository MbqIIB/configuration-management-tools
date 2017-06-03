case node['platform']
  when 'ubuntu', 'debian'
    default['tomcat_on_ec2']['package_name'] = 'tomcat7'
    default['tomcat_on_ec2']['additional_packages'] = ['tomcat7-docs','tomcat7-admin','tomcat7-examples']
    default['webserver']['users'] = '/etc/tomcat7/tomcat-users.xml'
    default['tomcat_on_ec2']['appdeploylocation'] = '/var/lib/tomcat7/webapps/jenkins.war'
    default['tomcat_on_ec2']['tomcatconfigfile'] = '/etc/default/tomcat7'
    default['tomcat_on_ec2']['templatename'] = 'tomcat7.erb'
  when 'rhel', 'centos'
    default['tomcat_on_ec2']['package_name'] = 'tomcat'
    default['tomcat_on_ec2']['tomcatconfigfile'] = '/usr/share/tomcat/conf/tomcat.conf'
    default['tomcat_on_ec2']['templatename'] = 'tomcat.conf.erb'
    default['tomcat_on_ec2']['additional_packages'] = ['tomcat-webapps','tomcat-admin-webapps','tomcat-docs-webapp','tomcat-javadoc']
    default['tomcat_on_ec2']['appdeploylocation'] = '/usr/share/tomcat/webapps/jenkins.war'
end

default['webserver']['username'] = 'admin'
default['webserver']['password'] = 'password'
default['webserver']['roles'] = 'manager-gui,admin-gui'