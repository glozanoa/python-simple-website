FROM python:alpine3.16

EXPOSE 4949
WORKDIR /web # default directory to run my commands
COPY . /web
RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["python3", "app.py"]
