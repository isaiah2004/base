FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN base create-db
RUN base populate-db
RUN base add-user -u admin -p admin
EXPOSE 5000
CMD ["base", "run"]
