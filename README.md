## What is this repo?
THIS IS A BASH SCRIPT for ubuntu 16.04 to correct magento2 permissions in CLI.

## reqiurements:
- ubuntu root or SUDO user
- Magento 2.0.6 or higher


## Setup:

You need to change the following two things in correct_permissions.sh:

#### Locate your magento2 installation, and set LIB varrable to your actual folder
*remember to use absolute path on linux 
```
LIB="/var/www/magento2/"
```

### Change magento_user and magento_group to your system's magento username and group
```
sudo chown -R magento_user:magento_group $LIB   
```

you are done ;)

##### to run sh in terminal you need exectute permission for correct_permissions.sh
```
sudo chmod +X "correct_permissions.sh"
```
