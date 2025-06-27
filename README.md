# Uptime-Kuma Auto Deployment Script 🚀

This project contains a Shell script to automate the deployment of the open-source monitoring tool **[Uptime Kuma](https://github.com/louislam/uptime-kuma)** on a Linux server.

## 🛠️ Features

- Clones the Uptime Kuma GitHub repository
- Installs required dependencies (Node.js, npm, PM2)
- Automatically runs and starts the server using PM2
- Easy and repeatable deployment

## 📂 Files

- `monitoring.sh` – Bash script that handles the entire deployment

## ⚙️ Requirements

- Ubuntu/Debian-based system
- Internet access
- Git, curl, and basic command-line knowledge

## 🚀 Usage

```bash
#Make the script executable
chmod +x deploy.sh

# Run the script
./monitoring.sh
