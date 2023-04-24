# Piped plugin for Kodi

This is an extremely bare bones plugin for Kodi that uses the (Piped)[https://github.com/TeamPiped/Piped] backend to watch YouTube videos.

Compatible with Kodi 19.5+

## Usage

1. install the dependencies
1. build the plugin
1. install the plugin
1. send a request to `plugin.video.piped/play?video_id=<youtube-video-id>`

### Installing dependencies

- Enable adding unknown dependencies in `kodi`
- Download [ttl2ssa](https://github.com/Paco8/ttml2ssa/releases/download/v0.3.8/script.module.ttml2ssa-0.3.8-matrix.zip)
- Install it

### Building the plugin

- make a `.env` file and put `pluginVersion="[maj].[min].[patch]"` in there (IE: `pluginVersion="1.0.1"`)
- run `./build.sh` (will not work on windows, unless you're using `wsl`)

### Install the plugin

- Install the plugin using the `Install from zip file` option.

### Sending a request to the plugin

- I'm so sorry, but I don't actually know how to do this part. I use the `kore` app for this.

## Features

- Almost no "need to have" features are supported. The app will crash if you select it in the `kodi` ui.
- probably won't run on `windows`
- `hls` live streaming using the `ffmpegdirect` inputstream plugin. (God, this took me forever to get set up)
- subtitles!
- that's it!

## Why does this plugin suck?

1. I'm not a kodi addon developer. I have no experience here. This is the first plugin I've ever "written" (more like copy-pasted the code from the example video addon).
1. I'm not familiar with `hls`. Not at all. This is my first attempt and I hated every second of it.
1. I made this to be barely functional enough for my personal use-case, but I'm open to helping it grow into a more fully featured addon (or for someone to take the code and run with it.)

## Contributing

Yes please! I don't have the time to learn how to program kodi addons, my job takes up most of my time. I would really appreciate any help here.

Please please please include types. I know that limits backwards compatibility, but it's worth it.

Warning: the `m3u8` library that `kodi` uses is older than the one available in `pypi` and has some differences.

License: [GPL v.3](http://www.gnu.org/copyleft/gpl.html)
