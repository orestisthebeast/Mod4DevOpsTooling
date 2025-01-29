# Use Python 3.6 or later as a base image
FROM python:3.13-slim
# Copy contents into image
COPY . /Task1
WORKDIR /Task1
# Install pip dependencies from requirements
RUN pip install --upgrade pip && pip install -r requirements.txt
# Set YOUR_NAME environment variable
ENV YOUR_NAME="Orestis"
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python", "app.py"] 

