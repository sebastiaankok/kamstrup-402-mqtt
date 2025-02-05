FROM python:3
WORKDIR /opt/kamstrup
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . /opt/kamstrup
RUN mkdir -p /opt/kamstrup/logs
RUN ln -sf /dev/stdout /opt/kamstrup/logs/debug.log
CMD [ "python", "/opt/kamstrup/daemon.py" ]
