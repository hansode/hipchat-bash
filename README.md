hipchat-bash
============

[![Build Status](https://travis-ci.org/hansode/hipchat-bash.png)](https://travis-ci.org/hansode/hipchat-bash)

A Bash wrapper for the [HipChat API](https://www.hipchat.com/docs/api).

Requirements
------------

+ bash
+ curl

Getting Started
---------------

```bash
hipchat.sh rooms message \
 --auth-token <auth-token> \
 --room-id    <room-id>    \
 --from       <from>       \
 --message    <message>
```

Usage
-----

```bash
hipchat.sh <namespace> <command>
```

Installation
------------

```bash
git clone https://github.com/hansode/hipchat-bash
```

Links
-----

+ [curlet](https://github.com/hansode/curlet)

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
