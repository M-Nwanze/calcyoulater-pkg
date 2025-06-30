FROM python:3.11-slim

ARG PAT_NAME=__token__
ARG PAT_VALUE

# Install package from GitLab Package Registry
ARG PACKAGE_VERSION
RUN pip install --no-cache-dir calcyoulater2==${PACKAGE_VERSION} \
    --index-url https://${PAT_NAME}:${PAT_VALUE}@gitlab.com/api/v4/projects/71140362/packages/pypi/simple

ENV FLASK_APP=calcyoulater2

CMD ["flask", "run", "--host", "0.0.0.0"]