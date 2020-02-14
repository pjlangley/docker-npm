# Docker npm executable

This docker image provides a dockerised version of `npm`. You can pull this
[docker npm](https://hub.docker.com/r/pjlangley/npm) image from Docker Hub.

## Usage

### Fire and forget

If saving any output from `npm` isn't required, 
then you can simply run something like the following:

```
$ docker run --rm -it pjlangley/npm ping
npm notice PING https://registry.npmjs.org/
npm notice PONG 0.988ms
```

### Saving output

If you depend on `npm` saving output to disk, ensure to mount your desired
directory. For example, you may have the following, empty, directory:

```
$ tree .
.

0 directories, 0 files
```

Use `npm` to initialise a new project:

```
$ docker run --rm -v `pwd`/.:/app -it pjlangley/npm init --yes
Wrote to /app/package.json:

{
  "name": "app",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}

$ tree .
.
└── package.json

0 directories, 1 file
```

## Software

The upkeep intention is that `npm` will run on the latest node.js LTS version,
and on the latest stable Linux Alpine version.

## License

MIT.
