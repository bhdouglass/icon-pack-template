# Icon Pack Template

A template for creating an icon pack for [Falcon](https://open.uappexplorer.com/app/falcon.bhdouglass).
This is a simple Ubuntu Touch app that can be uploaded to the app store and Falcon
will be able to find it when installed on a user's phone.

The example icons in this template come from the uNumix icon pack for Falcon
currated by Joan Cibersheep.

## Rational

The old way that Falcon got it's icon packs was via a website that only I had
access to. This severly limited other people from providing icon packs as
they first had to contact me. With this model Falcon doesn't need to know about
icon packs ahead of time as they are hosted by the app store and everyone has
easy access to upload an icon pack. This is similar to a model I've seen in
Android with cutom launchers & icon packs.

## Building

This app can be easily built and deployed using [clickable](https://github.com/bhdouglass/clickable).
Without clickable you can package the click by running `click build .`.

## Structure

An icon pack app MUST have a file called `icon-pack-data.json`. This is how Falcon
knows about the installed icon packs. The format of that file is as follows:

```
{
  "author": "Name of the author(s) of this icon pack",
  "maintainer": "Name of the persion maintaining the app for the icon pack",
  "title": "The name of the icon pack",
  "icons": "path/to/a/dir/with/icons",
  "description": "A nice description of the awesomeness of your icon pack",
  "preview": "path/to/a/preview/screenshot.png",
  "icon": "path/to/an/icon/representing/the/icon-pack.png"
}
```

In the "icons" directory there must be a file called `icon-pack.json`, this
is a json object with the keys being app ids and the values being relative
paths to the icons. To get the app ids, just turn on the "Show app ids in preview"
option in Falcon and long press the apps to see the app id.

## License

Copyright (C) 2017 [Brian Douglass](http://bhdouglass.com/)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3, as published
by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranties of MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
