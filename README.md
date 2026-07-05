# 🤖 AI Workflow Automation with Gemini CLI

> *Autonomous repository management, documentation generation, and Git orchestration powered by Gemini CLI and custom automation scripts.*

---

## 🎯 Overview

This repository contains production automation tools for managing the Dinaverse infrastructure ecosystem. It handles:

- **Repository orchestration** — Automated initialization, branching, synchronization
- **Documentation generation** — AI-powered README and technical documentation
- **Project organization** — Standardized directory structures and templates
- **Git workflows** — Streamlined commit, push, and sync operations

**Status:** ✅ Active — Automating repository management

---

## 🚀 Core Components

### 1. **Repository Orchestrator** (`repo-orchestrator.js`)

Automates Git repository initialization and management.

**Features:**
- Initialize new repositories with standardized structure
- Create and manage branches
- Commit changes with AI-generated messages
- Push to remote with verification
- Sync forked repositories

**Usage:**

```bash
node repo-orchestrator.js \
  --action create \
  --repo-name my-new-project \
  --template infrastructure
```

### 2. **Documentation Generator** (`doc-generator.js`)

Uses Gemini CLI to generate professional README files and technical documentation.

**Features:**
- Analyze existing code/structure
- Generate contextual README content
- Create API documentation
- Build deployment guides
- Generate changelog entries

**Usage:**

```bash
node doc-generator.js \
  --source /path/to/project \
  --output README.md \
  --style professional \
  --include-deployment-guide
```

### 3. **Gemini CLI Bridge** (`gemini-bridge.js`)

Direct interface to Gemini AI for autonomous decision-making.

**Features:**
- Query Gemini for code analysis
- Generate structured documentation
- Analyze repository requirements
- Recommend project structure
- Create technical specifications

**Usage:**

```bash
node gemini-bridge.js \
  --prompt "Analyze this repo and suggest improvements" \
  --input /path/to/repo \
  --output suggestions.md
```

### 4. **Git Workflow Manager** (`git-workflow.js`)

Handles complex Git operations and synchronization.

**Features:**
- Create feature branches
- Manage merge requests
- Sync repositories
- Handle conflict resolution
- Maintain clean commit history

**Usage:**

```bash
node git-workflow.js \
  --action sync \
  --repo Dinaverse/infrastructure \
  --branch main \
  --pull-latest
```

---

## 📋 Workflows

### Workflow 1: Create New Repository

```bash
# Initialize new project with documentation
node repo-orchestrator.js create \
  --repo-name sovereign-ai-research \
  --template ai-infrastructure \
  --generate-docs \
  --setup-ci

# Result:
# ✅ Repository created
# ✅ Directory structure initialized
# ✅ README.md generated
# ✅ GitHub Actions configured
# ✅ Initial commit pushed
```

### Workflow 2: Auto-Document Existing Project

```bash
# Analyze project and generate documentation
node doc-generator.js \
  --source ~/projects/cybersecurity-lab \
  --comprehensive \
  --include-examples

# Result:
# ✅ README.md created
# ✅ API documentation generated
# ✅ Deployment guide created
# ✅ Troubleshooting guide generated
# ✅ Files committed and pushed
```

### Workflow 3: Sync Repository Across Nodes

```bash
# Synchronize repository across lab nodes
node git-workflow.js sync-distributed \
  --repo sovereign-ai-infrastructure \
  --nodes arch-gpu,kali-master,dell-gateway

# Result:
# ✅ Pull latest from main
# ✅ Sync to arch-gpu
# ✅ Sync to kali-master
# ✅ Sync to dell-gateway
# ✅ Verify consistency
```

---

## 🛠️ Installation & Setup

### Prerequisites

- **Node.js** v18.0.0 or higher
- **Git** latest version
- **Gemini CLI** configured with API key
- **GitHub SSH access** configured

### Installation

```bash
# Clone repository
git clone https://github.com/Dinaverse/ai-workflow-automation
cd ai-workflow-automation

# Install dependencies
npm install

# Configure Gemini CLI
export GEMINI_API_KEY=your_api_key_here

# Verify setup
npm run test
```

### Configuration

Create `.env` file:

```bash
# Gemini Configuration
GEMINI_API_KEY=your_key_here
GEMINI_MODEL=gemini-pro

# GitHub Configuration
GITHUB_TOKEN=ghp_your_token_here
GITHUB_USER=Dinaverse

# Repository Configuration
DEFAULT_TEMPLATE=infrastructure
DEFAULT_LICENSE=MIT

# Automation Settings
AUTO_COMMIT_MESSAGE=true
AUTO_PUSH=true
VERIFY_BEFORE_PUSH=true
```

---

## 🔐 Security & Best Practices

### SSH Configuration

```bash
# Use SSH for Git operations
git config --global url."git@github.com:".insteadOf "https://github.com/"

# Verify SSH connection
ssh -T git@github.com
```

### API Key Management

```bash
# Store API keys securely
export GEMINI_API_KEY=$(cat ~/.ssh/gemini-api-key)

# Never commit secrets
echo ".env" >> .gitignore
echo "*.key" >> .gitignore
```

### Credential Storage

```bash
# Use OS keychain for credentials
npm install keytar

# Store credentials securely
node -e "require('keytar').setPassword('ai-automation', 'github-token', 'ghp_xxx')"
```

---

## 📁 Directory Structure

```
ai-workflow-automation/
├── README.md                          (this file)
├── package.json                       Node dependencies
├── .env.example                       Environment template
├── src/
│   ├── repo-orchestrator.js          Repository management
│   ├── doc-generator.js              Documentation automation
│   ├── gemini-bridge.js              Gemini CLI interface
│   ├── git-workflow.js               Git operations
│   └── utils/
│       ├── logger.js                 Logging utilities
│       ├── config.js                 Configuration loader
│       └── validators.js             Input validation
├── templates/
│   ├── infrastructure/               Infrastructure projects
│   ├── ai-security/                  Security projects
│   ├── networking/                   Networking projects
│   └── documentation/                Pure documentation
├── examples/
│   ├── create-repo.js                Repository creation example
│   ├── generate-docs.js              Documentation example
│   └── workflow-automation.js        Workflow automation example
├── tests/
│   ├── repo-orchestrator.test.js
│   ├── doc-generator.test.js
│   └── gemini-bridge.test.js
└── docs/
    ├── INSTALLATION.md               Setup instructions
    ├── USAGE_GUIDE.md                How to use
    ├── API_REFERENCE.md              API documentation
    └── EXAMPLES.md                   Usage examples
```

---

## 📖 Usage Examples

### Example 1: Create Infrastructure Project

```bash
npm run create-project -- \
  --name my-infrastructure \
  --type infrastructure \
  --description "Distributed computing lab" \
  --generate-docs
```

### Example 2: Generate Documentation for Existing Project

```bash
npm run document -- \
  --source ~/projects/my-project \
  --comprehensive \
  --include-deployment \
  --include-architecture
```

### Example 3: Sync Repositories Across Nodes

```bash
npm run sync-distributed -- \
  --repos "sovereign-ai-infrastructure,cybersecurity-lab" \
  --nodes "arch-gpu,kali-master" \
  --verify-consistency
```

---

## 🔌 Integration with Lab

This automation integrates with:

| Service | Integration | Purpose |
|---------|-----------|---------|
| **Gemini CLI** | Direct API | AI-powered analysis & generation |
| **GitHub API** | REST calls | Repository management |
| **n8n** | Webhook receiver | Workflow triggers |
| **Kali-Master** | SSH execution | Distributed automation |

---

## 🔗 Related Repositories

| Repository | Purpose |
|------------|---------|
| **[Dinaverse](https://github.com/Dinaverse/Dinaverse)** | Master README |
| **[sovereign-ai-infrastructure](https://github.com/Dinaverse/sovereign-ai-infrastructure)** | Lab architecture |
| **[n8n-automation-hub](https://github.com/Dinaverse/n8n-automation-hub)** | Workflow orchestration |
| **[sovereign-ai-skills](https://github.com/Dinaverse/sovereign-ai-skills)** | AI agent skills |

---

## ✅ Operational Status

| Component | Status | Last Updated |
|-----------|--------|---|
| Repository Orchestrator | ✅ Active | 2026-07-05 |
| Documentation Generator | ✅ Active | 2026-07-05 |
| Gemini CLI Bridge | ✅ Connected | 2026-07-05 |
| Git Workflow Manager | ✅ Active | 2026-07-05 |
| Automated Tests | ✅ Passing | 2026-07-05 |

---

## 📖 Documentation

| Document | Purpose |
|----------|---------|
| **[Installation Guide](docs/INSTALLATION.md)** | Setup instructions |
| **[Usage Guide](docs/USAGE_GUIDE.md)** | How to use each tool |
| **[API Reference](docs/API_REFERENCE.md)** | Complete API docs |
| **[Examples](docs/EXAMPLES.md)** | Real-world examples |

---

## 🐛 Troubleshooting

### Gemini API Connection Issues

```bash
# Verify API key
echo $GEMINI_API_KEY

# Test connection
node -e "require('./src/gemini-bridge.js').test()"

# Check API status
curl https://generativelanguage.googleapis.com/v1beta/info
```

### Git Push Failures

```bash
# Verify SSH key
ssh -T git@github.com

# Test with debug
GIT_SSH_COMMAND="ssh -vvv" git push origin main

# Resolve conflicts
git status
git fetch origin
git rebase origin/main
```

### Node Dependencies Issues

```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install

# Update dependencies
npm update

# Verify installation
npm run test
```

---

*Automating infrastructure. Empowering documentation. Building sovereign systems.*
