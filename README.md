# Bedrock vs Anthropic API Latency Benchmark

This project compares the latency performance between AWS Bedrock and direct Anthropic API calls using Claude models.

## Prerequisites

- Python 3.8 or higher
- AWS CLI configured with appropriate credentials
- Anthropic API key
- AWS Bedrock access enabled

## Setup

1. Create and activate a virtual environment:
```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
.\venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

## Configuration

1. Ensure your AWS credentials are properly configured:
```bash
aws configure
```

2. Set your Anthropic API key as an environment variable:
```bash
# On macOS/Linux:
export ANTHROPIC_API_KEY="your-api-key"
# On Windows:
set ANTHROPIC_API_KEY=your-api-key
```

## Running the Benchmark

Run the benchmark with the `--compare` option to compare Bedrock and direct API performance:

```bash
python bedrock_latency_benchmark.py --compare
```

## Output

The benchmark results will be saved in the `benchmark_results` directory as Excel files with timestamps in the filenames. Each Excel file contains:

- Latency metrics (Average, Min, Max, Median, P95)
- Success/failure counts
- Differences between Bedrock and Direct API
- Percentage changes
- Test metadata (timestamp, total requests)

## Example Output File
```
benchmark_results/
└── benchmark_results_20240321_143022.xlsx
```

## Troubleshooting

1. If you encounter AWS permission errors:
   - Ensure your IAM role has `bedrock:InvokeModel` permission
   - Verify your AWS credentials are properly configured
   - Check if Bedrock is enabled in your AWS account

2. If you encounter Anthropic API errors:
   - Verify your API key is correct
   - Check if you have access to the specified model
   - Ensure your API key has sufficient quota