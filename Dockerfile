FROM python:3.14.0rc2

RUN mkdir -p /opt/eds
WORKDIR /opt/eds
COPY . .

RUN pip install -r requirements.txt
RUN python setup.py install

CMD eds --help
