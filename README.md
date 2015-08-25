# docker-jinja2cli

Docker version of [jinja2-cli](https://github.com/mattrobenolt/jinja2-cli).

## Usage

Say you have a template called `template.j2` and a YAML file called `data.yml`.

    $ cat template.j2
    {{ title }}
    $ cat data.yml
    title: My Title

Then you can render this template by executing

    $ docker run -v $(pwd):/data sgillis/jinja2cli template.j2 data.yml > out
    $ cat out
    My Title
