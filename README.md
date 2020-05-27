# docker-jinja2cli

Docker version of [jinja2-cli](https://github.com/jamesfreeman959/jinja2-cli).

## Usage

You can build this image like this:

```
docker build -t jamesfreeman959/jinja2cli .
```

Say you have a template called `template.j2` and a YAML file called `data.yml`.

```
$ cat template.j2
{{ title }}

$ cat data.yml
title: My Title
```

Then you can render this template by executing

```
$ docker run -v $(pwd):/data jamesfreeman959/jinja2cli template.j2 data.yml > out
$ cat out
My Title
```
