FROM python:3.11

WORKDIR /testbed

COPY . .

CMD ["python"]
