FROM python:3.9.8

USER root

# Copy Source code
RUN  mkdir -p /app
COPY webAppUI /app/
WORKDIR /app

# install package
RUN  pip3.9 install -r requirements.txt

# ENV setting
ENV BACK_END=34.64.76.193:8601
ENV AIRFLOW=34.64.148.65
ENV GRAFANA=34.64.148.65:3000

# Start Command
# uvicorn main:app --reload --port 8030 --host 0.0.0.0
CMD ["sh", "/app/start.sh"]
