FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y git ca-certificates curl jq bash
RUN curl https://get.docker.com/ | sh
RUN pip install awscli

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | tee /usr/bin/ecs-deploy
RUN chmod a+x /usr/bin/ecs-deploy

CMD ["/bin/bash", "-l", "-c"]
