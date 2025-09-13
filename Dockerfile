FROM python:3.11-slim-bullseye
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/fatpunk/StreamVix.git.
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "7860", "--workers", "4"]

