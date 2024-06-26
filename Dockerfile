# FROM python:3.10.8-slim-buster

# RUN apt update && apt upgrade -y
# RUN apt install git -y
# COPY requirements.txt /requirements.txt

# RUN cd /
# RUN pip3 install -U pip && pip3 install -U -r requirements.txt
# RUN mkdir /TheMovieProviderBot
# WORKDIR /TheMovieProviderBot
# COPY start.sh /start.sh
# CMD ["/bin/bash", "/start.sh"]


FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirements.txt
WORKDIR /app

COPY . .

CMD ["python", "bot.py"]
