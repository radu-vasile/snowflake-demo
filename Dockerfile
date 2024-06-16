FROM python:3.8.5

RUN apt-get update -y 
COPY ./ /app
WORKDIR /app
RUN pip install schemachange --user
ENTRYPOINT [ "python" ]
CMD [ "run.py" ]