FROM python:3.6

WORKDIR app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod +x train_grassland_att.sh

CMD ["bash", "train_grassland_att.sh"]