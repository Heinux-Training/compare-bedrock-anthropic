#!/bin/bash

# Install required Python packages
echo "Installing required Python packages..."
pip3 install -r requirements.txt

# Make the Python script executable
chmod +x bedrock_latency_benchmark.py

# Run the benchmark with different models
echo "Running benchmark with Sonnet4 on Bedrock vs Anthropic API"
python3 bedrock_latency_benchmark.py --compare
