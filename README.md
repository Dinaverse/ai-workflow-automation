# 🤖 AI-Driven Workflow Automation

This repository documents the automation of development and documentation workflows using **Gemini CLI**. It serves as a guide for setting up an autonomous environment where AI agents handle repository management, technical documentation, and synchronization tasks.

## 🚀 Overview
Leveraging large language models through a command-line interface allows for:
- **Autonomous Documentation:** Creating structured writeups for CTFs and projects.
- **Git Intelligence:** Automated branch management, merging, and remote synchronization.
- **Infrastructure Scaling:** Programmatic control over multi-node lab environments.

---

## 🛠️ Installation & Setup

### Requirements
- **Node.js:** v18.0.0 or higher
- **Git:** Latest version
- **API Key:** A valid Google Gemini API Key

### 🐧 Linux Installation
```bash
# Install Gemini CLI globally
npm install -g @google/gemini-cli

# Configure your API key
echo "export GEMINI_API_KEY='your_api_key_here'" >> ~/.bashrc
source ~/.bashrc

# Verify installation
gemini --version
```

### 🪟 Windows Installation
**Option A: WSL (Recommended)**
Follow the Linux installation steps within your Ubuntu/WSL terminal.

**Option B: PowerShell**
1. Install [Node.js](https://nodejs.org/).
2. Run in PowerShell:
```powershell
npm install -g @google/gemini-cli
[System.Environment]::SetEnvironmentVariable('GEMINI_API_KEY', 'your_api_key_here', 'User')
```

---

## 🔑 Secure SSH Connection

Connecting to GitHub via SSH is the most secure method for automation.

### 1. Generate SSH Key
Use the Ed25519 algorithm for maximum security and performance:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
*When prompted for a file, press Enter to use the default (`~/.ssh/id_ed25519`).*

### 2. Add Key to GitHub
Copy your public key:
```bash
cat ~/.ssh/id_ed25519.pub
```
1. Go to **GitHub Settings** -> **SSH and GPG keys**.
2. Click **New SSH key** and paste your public key.

### 3. Verify Connection
```bash
ssh -T git@github.com
# Expected: Hi username! You've successfully authenticated...
```

### 🛡️ Security Best Practices
- **NEVER** commit your private key (`id_ed25519`).
- **NEVER** push your `.env` files containing API keys.
- **Always** use a `.gitignore` file.
  - *Example:* `echo "id_ed25519" >> .gitignore`

---

## 🔄 Workflow in Action
1. **Initialize:** Start a session with Gemini CLI.
2. **Instruction:** Provide a goal (e.g., "Document my Root-Me challenges").
3. **Execution:** The AI agent analyzes the filesystem, creates directories, and drafts content.
4. **Synchronization:** The AI performs `git add`, `commit`, and `push` to keep the remote repository updated.

---
*Driven by Dina's Sovereign AI Lab.*
