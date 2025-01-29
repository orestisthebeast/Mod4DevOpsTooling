# Use Python 3.7 as a base image
FROM python:3.7

# Copy contents into image
COPY . /flask-app

# install pip dependencies from requirements file
RUN pip install --upgrade pip && pip install -r /flask-app/requirements.txt
ENV MYSQL_ROOT_PASSWORD=6jG_G_M*gGY7QQft74qc

# Expose correct port
EXPOSE 5000

# Create an entrypoint
ENTRYPOINT ["python", "/flask-app/app.py"]

