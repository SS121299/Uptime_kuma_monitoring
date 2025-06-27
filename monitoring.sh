
#!/bin/bash

# Function to clone the repo
clone_code() {
  echo "Cloning Uptime Kuma repository..."
  if [ -d "uptime-kuma" ]; then
	  echo "The folder is already exist. skipping the clone."
  else  
  git clone https://github.com/louislam/uptime-kuma.git || {
    echo "Failed to clone repository."
    return 1
  }
  fi
  cd uptime-kuma || exit 1
}

# Function to install Node.js, npm, git, and PM2
install_requirements() {
  echo "Installing dependencies..."

  # Install Node.js from NodeSource (for latest version)
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get update
  sudo apt-get install -y nodejs git

  # Install pm2 globally via npm
  sudo npm install -g pm2
}

# Function to deploy the application
deploy() {
  echo "Running setup..."
  npm run setup || {
    echo "Setup failed."
    exit 1
  }

  echo "Starting app with PM2..."
  pm2 start server/server.js --name uptime-kuma
}

# Main execution
echo "****** Deployment Started ************"

clone_code
install_requirements
deploy

echo "****** Deployment Completed Successfully ************"

