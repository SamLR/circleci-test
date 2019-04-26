FROM python:3.6.8

WORKDIR /opt/app

COPY mysite /opt/app
COPY requirements.txt /opt/app/.

RUN pip install -r requirements.txt \
    && rm requirements.txt

ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
