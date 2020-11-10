#--- Dockerfile Original ---

FROM justkiddingfd/scout

USER scout
COPY ./tools/webanalyze /home/scout/go/bin/webanalyze

USER root
RUN /bin/bash -c 'chmod 777 /home/scout/go/bin/'
RUN apt-get update && apt-get install -y python python-pip
RUN /bin/bash -c 'pip install shodan'
USER scout
RUN /bin/bash -c 'shodan init APIKEY'
RUN /bin/bash -c 'pip install -r /home/scout/tools/sublist3r/requirements.txt'
USER root

EXPOSE 22