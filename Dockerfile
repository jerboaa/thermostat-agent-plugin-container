FROM icedtea/thermostat-agent-centos7
# Thermostat Agent Plugins Builder Image.

LABEL io.k8s.description="Thermostat Agent Plugin Builder Image." \
      io.k8s.display-name="Thermostat Agent Plugin Builder"

ENV THERMOSTAT_PLUGIN_HOME=${THERMOSTAT_HOME}/plugins

# Install s2i build scripts
COPY ./s2i/bin/ ${STI_SCRIPTS_PATH}
