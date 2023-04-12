FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/star5357777/pinterest.git

WORKDIR /home/pinterest/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-$42e8ta9e429##w$yln#99x5j+!g*l8%w8n)jx^1(b^f0l-npf" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]