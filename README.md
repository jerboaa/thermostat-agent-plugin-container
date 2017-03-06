# Thermostat Agent Plugin Builder Image

This repository contains a Dockerfile for a Thermostat Agent plugin
builder. The resulting image can be used to build and run Thermostat
Agent plugins.

# Usage

First we build the image `icedtea/thermostat-agent-plugin-builder-centos7`:

    $ sudo docker build -t icedtea/thermostat-agent-plugin-builder-centos7 .

Next, we can build the Thermostat Agent plugin source into an image
`thermostat/thermostat-agent-with-plugin-centos7`.

    $ sudo s2i build https://github.com/jerboaa/thermostat-agent-plugin-ex icedtea/thermostat-agent-plugin-builder-centos7 thermostat/thermostat-agent-with-plugin-centos7

The resulting image can be run the same way as plain image
`icedtea/thermostat-agent-centos7`.
