FROM python:3.11
EXPOSE 5000
WORKDIR /app
RUN pip install flask
# copy from current floder to current docker foldr, i.e the WORKDIR
COPY . .
# a list, each part is part of the command
# it allows an external client to the container make a request
# to the flask app running in the container
CMD ["flask", "run", "--host", "0.0.0.0"]
# run cmd:  docker build -t rest-apis-flask-python .
# run cmd: docker run -p 5005:5000 rest-apis-flask-python,
# to start a container from the image