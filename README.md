# Codex CLI Multi-Agent Workflow System

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Codex CLI](https://img.shields.io/badge/Codex-CLI-purple)
[![Version](https://img.shields.io/badge/Version-3.1-green)](https://github.com/)

> Enterprise-grade agile development workflow automation with multi-agent orchestration

[中文](README-zh.md)

## 🚀 BMAD Methodology: Agile Development Automation

**BMAD (Business-Minded Agile Development)** transforms your development process into a fully automated agile workflow with role-based AI agents and quality gates.

### One Command, Complete Workflow

```bash
/bmad-pilot "Build e-commerce checkout system with payment integration"
# Automated: Product → Architecture → Sprint → Dev → Review → QA
```

## 🎯 BMAD Workflow Architecture

```mermaid
graph LR
    PO[Product Owner] -->|PRD 90+| Architect
    Architect -->|Design 90+| SM[Scrum Master]
    SM -->|Sprint Plan| Dev
    Dev -->|Code| Review
    Review -->|Pass/Fail| QA
    QA -->|Tests| Done
```

### Key Features

- **🤖 6 Specialized Agents**: PO, Architect, SM, Dev, Review, QA
- **📊 Quality Gates**: 90% thresholds with automatic optimization
- **✅ Approval Points**: User confirmation at critical phases
- **📁 Persistent Artifacts**: All documents saved to `./.codex/specs/`
- **🔄 Iterative Refinement**: Automatic improvement until quality met

## 📋 BMAD Agents & Roles

| Agent | Role | Quality Gate | Output |
|-------|------|--------------|--------|
| **bmad-po** (Sarah) | Product requirements gathering | 90/100 PRD score | `01-product-requirements.md` |
| **bmad-architect** (Winston) | Technical design & architecture | 90/100 design score | `02-system-architecture.md` |
| **bmad-sm** (Mike) | Sprint planning & task breakdown | User approval | `03-sprint-plan.md` |
| **bmad-dev** (Alex) | Feature implementation | Code completion | Implementation files |
| **bmad-review** | Independent code review | Pass/Risk/Fail | `04-dev-reviewed.md` |
| **bmad-qa** (Emma) | Testing & quality assurance | Test execution | `05-qa-report.md` |

## 🚀 Quick Start

### One-Command Installation

```bash
# Clone the repository
git clone https://github.com/your-repo/codex-workflows.git
cd codex-workflows

# Install everything with make
make install

# Or deploy specific workflows
make deploy-bmad          # Deploy BMAD workflow only
make deploy-requirements  # Deploy Requirements workflow only
make deploy-all          # Deploy all commands and agents
```

### Basic BMAD Workflow

```bash
# Full agile workflow with all phases
/bmad-pilot "User authentication system with OAuth2 and MFA"

# Skip testing for quick prototypes
/bmad-pilot "Admin dashboard" --skip-tests

# Direct development (skip sprint planning)
/bmad-pilot "Bug fix for login issue" --direct-dev

# Skip repository scanning (use existing context)
/bmad-pilot "Add feature" --skip-scan
```

### Workflow Artifacts

Each BMAD run creates structured documentation:

```
.codex/specs/user-authentication/
├── 00-repository-context.md    # Repository analysis
├── 01-product-requirements.md  # PRD with business goals
├── 02-system-architecture.md   # Technical design
├── 03-sprint-plan.md           # Sprint tasks
├── 04-dev-reviewed.md          # Code review report (NEW v3.1)
└── 05-qa-report.md            # Test results
```

## 🎨 BMAD Output Style

The BMAD workflow uses a specialized output style that:
- Creates phase-separated contexts
- Manages agent handoffs
- Tracks quality scores
- Handles approval gates
- Supports Codex CLI integration

## ⚡ v3.1 New Features

### Independent Code Review Agent
- **bmad-review**: Automated review between Dev and QA
- **Dual Version Support**:
  - Standard: Native Codex CLI review
  - Enhanced: GPT-5 via Codex CLI
- **Three-tier Status**: Pass / Pass with Risk / Fail

### Enhanced Workflow
- Dev → Review → QA quality chain
- Automatic Sprint plan updates
- Targeted QA test recommendations

## 📊 Quality Scoring Systems

### PRD Quality (100 points)
- Business Value: 30
- Functional Requirements: 25
- User Experience: 20
- Technical Constraints: 15
- Scope & Priorities: 10

### Architecture Quality (100 points)
- Design Quality: 30
- Technology Selection: 25
- Scalability: 20
- Security: 15
- Feasibility: 10

### Review Status
- **Pass**: No issues, proceed to QA
- **Pass with Risk**: Non-critical issues
- **Fail**: Must return to Dev

## 🔧 Advanced Usage

### Repository Context
BMAD automatically scans your repository to understand:
- Technology stack
- Project structure
- Existing patterns
- Dependencies
- Conventions

### Interactive Refinement
Each phase supports iterative improvement:
```
PO: "Here's the PRD (Score: 75/100)"
User: "Add mobile support and offline mode"
PO: "Updated PRD (Score: 92/100) ✅"
```

### Approval Gates
Critical phases require explicit confirmation:
```
Architect: "Technical design complete (Score: 93/100)"
System: "Ready to proceed? (yes/no)"
User: yes
```

---

## 🏭 Requirements-Driven Workflow

An alternative lightweight workflow for simpler projects:

```bash
/requirements-pilot "Implement JWT authentication"
# Automated: Requirements → Code → Review → Test
```

### Features
- 90% quality gates
- Automatic optimization loops
- Implementation-focused specs
- Pragmatic over architectural

## 🛠️ Other Commands

### Development Commands
- `/ask` - Technical consultation
- `/code` - Direct implementation
- `/debug` - Systematic debugging
- `/test` - Testing strategies
- `/review` - Code validation
- `/optimize` - Performance tuning
- `/bugfix` - Bug resolution
- `/refactor` - Code improvement
- `/docs` - Documentation
- `/think` - Advanced analysis

### Manual Workflow Example
```bash
/ask "Design patterns for real-time messaging"
/code "Implement WebSocket server"
/test "Create integration tests"
/review "Validate security"
```

## 📄 License

MIT License - see [LICENSE](LICENSE) file

## 🙋 Support

- **Documentation**: Check `/commands/` and `/agents/` directories
- **Issues**: GitHub issues for bugs and features
- **Makefile Help**: Run `make help` for all deployment options

### Available Make Commands

```bash
make install              # Install everything to Codex CLI
make deploy-bmad         # Deploy BMAD workflow only
make deploy-requirements # Deploy Requirements workflow only
make deploy-commands     # Deploy all slash commands
make deploy-agents       # Deploy all agent configurations
make test-bmad          # Test BMAD workflow sample
make test-requirements  # Test Requirements workflow sample
make clean              # Clean generated artifacts
make help               # Show all available commands
```

---

**Transform your development with BMAD** - One command, complete agile workflow, quality assured.

*Let specialized AI agents handle specialized work.*
