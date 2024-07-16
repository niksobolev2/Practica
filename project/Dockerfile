FROM python:3.9
WORKDIR /project
COPY requirements.txt /project
RUN pip3 install --upgrade pip -r requirements.txt
COPY . /project
EXPOSE 5000