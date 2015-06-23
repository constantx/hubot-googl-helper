# hubot-googl-helper

A hubot script for goo.gl url shortener API

See [`src/googl-helper.coffee`](src/googl-helper.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-googl-helper --save`

Then add **hubot-googl-helper** to your `external-scripts.json`:

```json
[
  "hubot-googl-helper"
]
```

## Sample Interaction

```
user1>> hubot shorten https://google.com
hubot>> here it is https://goo.gl/0xP5
```
