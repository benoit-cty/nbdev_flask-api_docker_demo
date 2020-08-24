FROM python:3.7.0

RUN apt-get update && apt-get upgrade -y && /usr/local/bin/python -m pip install --upgrade pip

WORKDIR /opt/project/
COPY requirements.txt .

COPY one_ai_to_rule_them_all ./one_ai_to_rule_them_all
COPY api.py .

EXPOSE 5000/tcp 

RUN pip install --no-cache-dir -r requirements.txt
CMD [ "/usr/local/bin/python", "api.py" ]
