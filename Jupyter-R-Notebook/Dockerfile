FROM jupyter/r-notebook

# Set user to root for sudo cmds
USER root

# Copy init files
COPY init.sh /init.d/init.sh
COPY init.r /init.d/init.r
RUN sudo chmod -R +x /init.d/init.sh

# Run init script
COPY init-source.sh /init.d
RUN sudo chmod +x /init.d/init-source.sh
RUN /init.d/init-source.sh

