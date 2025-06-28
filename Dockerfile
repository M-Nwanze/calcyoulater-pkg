FROM python:3

ARG PAT_NAME
ARG PAT_VALUE

RUN pip install calcyoulater2 --extra-index-url https://${PAT_NAME}:${PAT_VALUE}@gitlab.com/api/v4/projects/71140362/packages/pypi

ENV FLASK_APP=calcyoulater2

CMD ["flask", "run", "--host", "0.0.0.0"]