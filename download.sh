#!/bin/bash

# Define the remote server details
remote_user="appadm"
remote_host="10.45.57.103"
remote_path="/usr/local/rasa3-main"
proxy_jump="root@192.168.10.98"

# Define the local directory to save the files
local_dir="."

# Function to download a file or directory recursively
download_file() {
  scp -r -o ProxyJump=$proxy_jump -o "ProxyCommand=ssh -W %h:%p $proxy_jump \"sudo -u $remote_user ssh\"" "$remote_user@$remote_host:$remote_path/$1" "$local_dir/$1"
}

# Create the necessary directories
mkdir -p "$local_dir/actions"
mkdir -p "$local_dir/actions/db"
mkdir -p "$local_dir/data"
mkdir -p "$local_dir/logger"

# Download files and directories recursively
download_file "actions/actions.py"
download_file "actions/bnstr_number_to_number.py"
download_file "actions/callapi.py"
download_file "actions/config.py"
download_file "actions/converter.py"
download_file "actions/date_formater.py"
download_file "actions/db/branch_db.json"
download_file "actions/db/response_db.json"
download_file "actions/db_connection.py"
download_file "actions/helper.py"
download_file "actions/__init__.py"
download_file "actions/log_tracker.py"
download_file "actions/num_to_int.py"
download_file "actions/otp_generator.py"
download_file "actions/otp_processing.py"
download_file "actions/string_matching_algo.py"
download_file "actions/str_to_number.py"
download_file "cc_va_middleware"
download_file "config.yml"
download_file "credentials.yml"
download_file "data/nlu.yml"
download_file "data/rules.yml"
download_file "data/stroies.yml"
download_file "domain.yml"
download_file "endpoints.yml"
download_file "graph.html"
download_file "LICENSE"
download_file "logger/api_logs.log"
download_file "log_voice.txt"
download_file "README.md"
download_file "requirements.txt"
download_file "tests"
download_file "visual.py"
