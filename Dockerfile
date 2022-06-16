FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/CJ0823/inflearn_study_django_pinterest.git

WORKDIR /home/inflearn_study_django_pinterest/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-$ioa*(%5%p#1&c(as*nqzw7xpo(g8l6ovb_&d+x-+(-pdyo&z+" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]