#! /bin/bash

source .env

rm ./plugin.video.piped*.zip > /dev/null 2>/dev/null

cp -r ./plugin.video.piped ./_plugin.video.piped

sed -i -e "s/__PLUGIN_VERSION__/${pluginVersion}/g" ./plugin.video.piped/addon.xml

zip -r "plugin.video.piped-${pluginVersion}.zip" ./plugin.video.piped

rm -r ./plugin.video.piped

mv ./_plugin.video.piped ./plugin.video.piped

