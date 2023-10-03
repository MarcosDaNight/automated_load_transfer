# Automated Load Transfer to Swift

This project contains scripts to generate simulated loads and send them to a Swift service.

## Scripts

### `generate_loads.py`

This script generates simulated loads in files with random sizes.

### `send_loads.sh`

This script sends the generated files to the specified Swift service.

## Usage

1. Execute the `generate_loads.py` script to generate the simulated load files.
2. Execute the `send_loads.sh` script to send the files to Swift.

Make sure to configure the necessary variables in the scripts before running them.

## Configuration

Ensure that you have the OpenStack environment properly configured and Swift up and running.

## Author

Marcos Guillermo