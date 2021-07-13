QuMine - Integrations - Templates
---

[QuMine-Server (Java)](https://github.com/qumine/qumine-server-java) Integration to load template like servers before server startup.

# Usage

Extend this image and add your template files to it.

```Dockerfile
FROM qumine/integrations-templates
COPY my-template/ /home/qumine/template/
```
# Advanced Usage

If you want to customize the behaviour further create a file called template.sh in your template folder. This will be executed before the template is copied.

```sh
#! /bin/sh

random=$(echo $((RANDOM%3)))
echo "Using world $random"
cp -R "worlds/$random/*" "world"
rm -rf "worlds"
```

For an example see here: 
