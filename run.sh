#!/bin/bash

# A script to handle the --hf-token flag

# Function to display usage instructions
usage() {
  echo "Usage: $0 --hf-token <YOUR_HF_TOKEN>"
  exit 1
}

# Check if the correct flag is provided
if [[ "$1" != "--hf-token" || -z "$2" ]]; then
  echo "Error: Missing or incorrect arguments."
  usage
fi

# Extract the value of the --hf-token flag
HF_TOKEN="$2"

# Display the token (For demonstration purposes only. Remove this in production for security.)
echo "Hugging Face token provided: $HF_TOKEN"

# Optional: Store the token in an environment variable or a file (secure storage recommended).
huggingface-cli login --token HF_TOKEN

llamafactory-cli webui

# Exit the script successfully
exit 0
