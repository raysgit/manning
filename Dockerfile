FROM python:3.7-slim
RUN apt-get update
RUN apt-get -y install gcc
RUN mkdir src
WORKDIR /src
RUN pip install notebook
CMD jupyter notebook --allow-root --ip=0.0.0.0 