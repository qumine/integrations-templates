random=$(echo $((RANDOM%2)))
echo "Using config $random"
cp "/home/qumine/template/configs/$random.properties" "/home/qumine/template/server.properties"
rm -rf "configs"
