FROM python:3.13.11

RUN mkdir -p /opt/eds
WORKDIR /opt/eds
COPY . .

RUN pip install -r requirements.txt
RUN python setup.py install

CMD eds --help
