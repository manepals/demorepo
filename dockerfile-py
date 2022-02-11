FROM public.ecr.aws/docker/library/python:latest
WORKDIR /usr/src/app

RUN apt-get update
# RUN yum -y update && yum clean all

COPY requirements.txt ./
ADD helloworld.py ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80

CMD [ "python", "helloworld.py" ]
