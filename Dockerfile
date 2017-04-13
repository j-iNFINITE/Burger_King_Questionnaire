FROM python:3.5
RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt requirements.txt
ADD hbw.py hbw.py
RUN pip install -r requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/
EXPOSE 5000
CMD ["python hbw.py"]