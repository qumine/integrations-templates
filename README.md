QuMine - Integrations - Templates
---

[QuMine-Server (Java)](https://github.com/qumine/qumine-server-java) Integration for server templates.

# Usage

Extend this image and add your template files to it.

```Dockerfile
FROM qumine/integrations-templates:v0.0.4
COPY my-template/ /home/qumine/template/
```
# Advanced Usage

If you want to customize the behaviour further create a file called template.sh in your template folder. This will be executed before the template is copied.

```sh
#! /bin/sh

random=$(echo $((RANDOM%2)))
echo "Using world $random"
mkdir "/home/qumine/template/world"
cp -R "/home/qumine/template/worlds/$random/"* "/home/qumine/template/world"
rm -rf "/home/qumine/template/worlds"
```

For an example see here: 
