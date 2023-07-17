echo "test set"
service nginx start
while true; do
    if [ -e "/app/runbuild" ]; then
        echo "The file exists in run build "
        cd /app
        npm install 
        npm run build 
        cp -r ./build/* /var/www/html
        service nginx restart
        echo "nginx restarted"
        rm /app/runbuild
        echo "The file deleted"

    else
        echo "The file  does not exist in ."
    fi
    sleep 1
done