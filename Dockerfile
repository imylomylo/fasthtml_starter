FROM python:3.12-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
#This setting prevents Python from writing .pyc files (compiled bytecode files) to the disk. 
# It can help save space and reduce unnecessary file writes within the container, 
# which isn't usually required for production use because containers are typically 
# ephemeral and re-built rather than relying on cached bytecode.

ENV PYTHONUNBUFFERED 1
# This ensures that Python outputs are not buffered, meaning that logs (such as print 
# statements or errors) are immediately flushed to the standard output. This is helpful
# in Docker because it allows logs to be captured and monitored in real-time, 
# making debugging and log analysis easier.


WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "simple.py" ]
