#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# Define variables for paths and commands
BUILD_DIR="./out/*"
REMOTE_PATH="/var/www/evolveisgrowth.com/html/"
REMOTE_SERVER="ubuntu@fassix.com"
PEM_FILE="$HOME/Downloads/FASSIX_MAIN_SERVER_ACCESS.pem"

# Print header
clear
echo -e "\n${BOLD}╔════════════════════════════════════════╗${NC}"
echo -e "${BOLD}║       FASSIX DEPLOYMENT SCRIPT         ║${NC}"
echo -e "${BOLD}╚════════════════════════════════════════╝${NC}\n"

# Function to print step with status
print_step() {
    echo -e "${BLUE}→ $1...${NC}"
}

# Function to print success
print_success() {
    echo -e "${GREEN}✓ $1${NC}\n"
}

# Function to print error and exit
print_error() {
    echo -e "${RED}✗ Error: $1${NC}\n"
    exit 1
}

# Set environment
print_step "Setting up environment"
export NODE_ENV=production
print_success "Environment set to production"

# Check if PEM file exists
print_step "Checking PEM file"
if [ ! -f "$PEM_FILE" ]; then
    print_error "PEM file not found at $PEM_FILE"
fi
print_success "PEM file found"

# Check if build directory exists
print_step "Checking build directory"
if [ ! -d "./out" ]; then
    print_error "Build directory not found. Please run 'npm run build' first"
fi
print_success "Build directory found"

# Upload files
print_step "Uploading build files to production server"
echo -e "${YELLOW}This may take a few moments...${NC}"

if scp -i "$PEM_FILE" -r $BUILD_DIR $REMOTE_SERVER:$REMOTE_PATH; then
    print_success "Deployment completed successfully"
else
    print_error "Deployment failed"
fi

# Print completion message
echo -e "${BOLD}╔════════════════════════════════════════╗${NC}"
echo -e "${BOLD}║         DEPLOYMENT COMPLETED           ║${NC}"
echo -e "${BOLD}╚════════════════════════════════════════╝${NC}\n" 