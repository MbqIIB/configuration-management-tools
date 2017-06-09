$ vagrant --version
Vagrant 1.6.3

Linux/Mac OS X:
$ VBoxManage --version
4.3.12r93733

Windows Command Prompt:
> "C:\Program Files\Oracle\VirtualBox\VBoxManage" --version
4.3.12r93733

$ kitchen init --create-gemfile

$ bundle install

$ kitchen list

$ kitchen create default-centos65

On Linux/Mac OS X:
$ VBoxManage list runningvms
"default-centos65_default_1407741726274_31370" {70b5e95a-d5f5-4956-b8b6-86dbf00e7218}

On Windows Command Prompt:
> "C:\Program Files\Oracle\VirtualBox\VBoxManage" list runningvms
"default-centos65_default_1404514741641_54313" {2db0fb6c-ab8e-4c65-99aa-2d4d4a4d27ff}

$ kitchen login default-centos65

$ kitchen destroy default-centos65


Summary
In this chapter, we introduced the following commands that Test Kitchen uses to manage sandbox environments:

kitchen init
Add Test Kitchen support to a project

kitchen list
Display information about Test Kitchen instances

kitchen create
Start a Test Kitchen instance, if it is not already running

kitchen login
Log into a Test Kitchen