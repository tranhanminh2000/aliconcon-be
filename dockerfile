FROM python:3.9.0

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
WORKDIR /app/src

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]