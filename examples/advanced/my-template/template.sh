random=$(echo $((RANDOM%2)))
echo "Using config $random"
cp "configs/$random.properties" "server.properties"
rm -rf "configs"