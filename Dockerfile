FROM python:3.8-slim-buster

WORKDIR /app

COPY api/requirements.txt .

RUN pip3 install -U pip && pip3 install -r requirements.txt

COPY api/ ./api

COPY model/model.pkl ./model/model.pkl

COPY initializer.sh .

RUN chmod +x initializer.sh

EXPOSE 8000

ENTRYPOINT ["./initializer.sh"]