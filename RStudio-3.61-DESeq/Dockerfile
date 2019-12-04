FROM rocker/rstudio:3.6.1

# Copy init files
COPY init.sh /init.d/init.sh
COPY init.r /init.d/init.r
RUN chmod -R +x /init.d/init.sh

# Run init script
COPY init-source.sh /init.d
RUN chmod +x /init.d/init-source.sh
RUN /init.d/init-source.sh

# Create rstudio cache
RUN mkdir -p /home/rstudio/.cache
RUN chmod -R 777 /home/rstudio/.cache


# Run rstudio-server
CMD ["/init"]
