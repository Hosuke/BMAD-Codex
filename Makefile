# Codex CLI Multi-Agent Workflow System Makefile
# Quick deployment for BMAD and Requirements workflows

.PHONY: help install deploy-bmad deploy-requirements deploy-all clean test

# Default target
help:
	@echo "Codex CLI Multi-Agent Workflow - Quick Deployment"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  install              - Install all configurations to Codex CLI"
	@echo "  deploy-bmad         - Deploy BMAD workflow (bmad-pilot)"
	@echo "  deploy-requirements - Deploy Requirements workflow (requirements-pilot)"
	@echo "  deploy-commands     - Deploy all slash commands"
	@echo "  deploy-agents       - Deploy all agent configurations"
	@echo "  deploy-all          - Deploy everything (commands + agents)"
	@echo "  test-bmad           - Test BMAD workflow with sample"
	@echo "  test-requirements   - Test Requirements workflow with sample"
	@echo "  clean               - Clean generated artifacts"
	@echo "  help                - Show this help message"

# Configuration paths
CODEX_CONFIG_DIR = ~/.codex
COMMANDS_DIR = commands
AGENTS_DIR = agents
OUTPUT_STYLES_DIR = output-styles
SPECS_DIR = .codex/specs

# Install all configurations
install: deploy-all
	@echo "✅ Installation complete!"

# Deploy BMAD workflow
deploy-bmad:
	@echo "🚀 Deploying BMAD workflow..."
	@mkdir -p $(CODEX_CONFIG_DIR)/commands
	@mkdir -p $(CODEX_CONFIG_DIR)/agents
	@mkdir -p $(CODEX_CONFIG_DIR)/output-styles
	@cp $(COMMANDS_DIR)/bmad-pilot.md $(CODEX_CONFIG_DIR)/commands/
	@cp $(AGENTS_DIR)/bmad-*.md $(CODEX_CONFIG_DIR)/agents/
	@cp $(OUTPUT_STYLES_DIR)/bmad.md $(CODEX_CONFIG_DIR)/output-styles/ 2>/dev/null || true
	@echo "✅ BMAD workflow deployed successfully!"
	@echo "   Usage: /bmad-pilot \"your feature description\""

# Deploy Requirements workflow
deploy-requirements:
	@echo "🚀 Deploying Requirements workflow..."
	@mkdir -p $(CODEX_CONFIG_DIR)/commands
	@mkdir -p $(CODEX_CONFIG_DIR)/agents
	@cp $(COMMANDS_DIR)/requirements-pilot.md $(CODEX_CONFIG_DIR)/commands/
	@cp $(AGENTS_DIR)/requirements-*.md $(CODEX_CONFIG_DIR)/agents/
	@echo "✅ Requirements workflow deployed successfully!"
	@echo "   Usage: /requirements-pilot \"your feature description\""

# Deploy all commands
deploy-commands:
	@echo "📦 Deploying all slash commands..."
	@mkdir -p $(CODEX_CONFIG_DIR)/commands
	@cp $(COMMANDS_DIR)/*.md $(CODEX_CONFIG_DIR)/commands/
	@echo "✅ All commands deployed!"
	@echo "   Available commands:"
	@echo "   - /bmad-pilot (Full agile workflow)"
	@echo "   - /requirements-pilot (Requirements-driven)"
	@echo "   - /ask, /code, /debug, /test, /review"
	@echo "   - /optimize, /bugfix, /refactor, /docs, /think"

# Deploy all agents
deploy-agents:
	@echo "🤖 Deploying all agents..."
	@mkdir -p $(CODEX_CONFIG_DIR)/agents
	@cp $(AGENTS_DIR)/*.md $(CODEX_CONFIG_DIR)/agents/
	@echo "✅ All agents deployed!"

# Deploy everything
deploy-all: deploy-commands deploy-agents
	@mkdir -p $(CODEX_CONFIG_DIR)/output-styles
	@cp $(OUTPUT_STYLES_DIR)/*.md $(CODEX_CONFIG_DIR)/output-styles/ 2>/dev/null || true
	@echo "✨ Full deployment complete!"
	@echo ""
	@echo "Quick Start:"
	@echo "  BMAD:         /bmad-pilot \"build user authentication\""
	@echo "  Requirements: /requirements-pilot \"implement JWT auth\""
	@echo "  Manual:       /ask → /code → /test → /review"

# Test BMAD workflow
test-bmad:
	@echo "🧪 Testing BMAD workflow..."
	@echo "Run in Codex CLI:"
	@echo '/bmad-pilot "Simple todo list with add/delete functions"'

# Test Requirements workflow
test-requirements:
	@echo "🧪 Testing Requirements workflow..."
	@echo "Run in Codex CLI:"
	@echo '/requirements-pilot "Basic CRUD API for products"'

# Clean generated artifacts
clean:
	@echo "🧹 Cleaning artifacts..."
	@rm -rf $(SPECS_DIR)
	@echo "✅ Cleaned!"

# Quick deployment shortcuts
bmad: deploy-bmad
requirements: deploy-requirements
all: deploy-all

# Version info
version:
	@echo "Codex CLI Multi-Agent Workflow System v3.1"
	@echo "BMAD + Requirements-Driven Development"