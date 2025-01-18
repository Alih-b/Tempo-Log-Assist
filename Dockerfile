# Use the official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY pyproject.toml /app/
COPY uv.lock /app/
RUN pip install uv && uv sync

# Copy application source
COPY src /app/src
COPY tests /app/tests

# Environment configuration
ENV PYTHONUNBUFFERED=1

# Default command
CMD ["uv", "run", "src/main.py"]
