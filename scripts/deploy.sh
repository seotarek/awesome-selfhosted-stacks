#!/usr/bin/env bash
set -e

echo "========================================="
echo " Awesome Self-Hosted Stacks Launcher 🚀"
echo "========================================="
echo "Select a stack to launch:"
echo " 1) n8n (Workflow Automation)"
echo " 2) Umami (Privacy-focused Web Analytics)"
echo " 3) Open-WebUI & Ollama (Local AI Chat)"
echo " 4) Traefik v3 (Edge Proxy & SSL)"
echo " 5) PocketBase (Zero-config BaaS)"
read -p "Enter choice [1-5]: " choice

case $choice in
  1) STACK="n8n" ;;
  2) STACK="umami-analytics" ;;
  3) STACK="open-webui-ollama" ;;
  4) STACK="traefik-proxy" ;;
  5) STACK="pocketbase" ;;
  *) echo "Invalid option"; exit 1 ;;
esac

cd "stacks/$STACK"
if [ -f ".env.example" ] && [ ! -f ".env" ]; then
  cp .env.example .env
  echo "Copied .env.example to .env. Customize it if needed."
fi

docker compose up -d
echo "✅ Stack '$STACK' is running in the background!"
