# Use latest Python runtime as a parent image
FROM python:3.6.5-alpine3.7

# Meta-data
LABEL maintainer="Abdul Rehman Liaqat <liaqat@uni-hildesheim.de>"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# pip install
RUN pip --no-cache-dir install -r /app/requirements.txt

# Make port available to the world outside this container
EXPOSE 8050

# Create mountpoint
VOLUME /app/data

# ENTRYPOINT allows us to specify the default executible
ENTRYPOINT ["python"]

# CMD sets default arguments to executable which may be overwritten when using docker run
CMD ["plot_timeseries.py"]
