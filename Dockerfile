FROM python:3.12.6

WORKDIR /usr/src/app
COPY . .
RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

CMD [ "python", "run.py" ]
