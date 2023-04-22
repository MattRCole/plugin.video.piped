#! /bin/bash

source .env

rm ./plugin.video.youtube*.zip > /dev/null 2>&1

cp -r ./plugin.video.youtube ./_plugin.video.youtube

sed -i -e "s/__PLUGIN_VERSION__/${pluginVersion}/g" ./plugin.video.youtube/addon.xml

zip -r "plugin.video.youtube-${pluginVersion}.zip" ./plugin.video.youtube

rm -r ./plugin.video.youtube

mv ./_plugin.video.youtube ./plugin.video.youtube

