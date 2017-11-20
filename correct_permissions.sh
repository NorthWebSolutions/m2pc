#Change magento2 installation folder here:
LIB="/var/www/magento/"

echo "Change username and groupe for all files..."
#Change magento_user and magento_group here:
sudo chown -R magento_user:magento_group $LIB   
wait
echo "correct read-write access"
sudo chmod -R 770 $LIB
wait
cd $LIB
echo "Search for specific file types and locations to correct permissions"
sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
echo "Add execute permission for magento"
sudo chmod u+x bin/magento
wait
echo "Process finished."
