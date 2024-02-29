
FROM python:3.10

ADD requirement.txt .
RUN pip3 install -r requirement.txt
COPY . .
EXPOSE 8000
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]