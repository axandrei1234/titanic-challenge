# Use an ARM-compatible Python base image
FROM python:3.10-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl unzip git && \
    rm -rf /var/lib/apt/lists/*

# Install Python packages for Titanic competition
RUN pip install --no-cache-dir \
    kaggle \
    pandas \
    numpy \
    matplotlib \
    seaborn \
    scikit-learn \
    jupyterlab

# Create a working directory
WORKDIR /workspace

# Default command
CMD ["bash"]
