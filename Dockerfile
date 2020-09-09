# If you challenge needs to run a host
# Create a Dockerfile for it
# Here is just a sample
FROM python:3-alpine
WORKDIR /usr/src/app
EXPOSE 80
COPY ./app/requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app/ /usr/src/app

CMD ["gunicorn", "--workers=4", "--bind=0.0.0.0:80", "app:app"]
