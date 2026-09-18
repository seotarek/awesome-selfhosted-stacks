# Awesome Self-Hosted Stacks 📦🚀

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Docker Compose](https://img.shields.io/badge/Docker%20Compose-v2-2496ED.svg?logo=docker&logoColor=white)](https://docs.docker.com/compose/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/seotarek/awesome-selfhosted-stacks/pulls)

A curated collection of battle-tested, production-ready **Docker Compose stacks** for the best open-source alternatives to commercial SaaS products.

Every stack in this repository includes:
* Automated SSL/TLS support via Traefik or Nginx Proxy Manager.
* Persistent volume definitions and healthcheck configurations.
* Sane defaults with security hardening (non-root execution, resource limits).
* Accompanying `.env.example` configurations.

---

## 📑 Curated Directory

| Category | Open-Source Tool | Proprietary SaaS Alternative | Stack Directory |
| :--- | :--- | :--- | :--- |
| **Automation** | **n8n** | Zapier / Make.com | [`stacks/n8n`](./stacks/n8n) |
| **Analytics** | **Umami** | Google Analytics 4 | [`stacks/umami-analytics`](./stacks/umami-analytics) |
| **AI / LLMs** | **Open-WebUI + Ollama** | ChatGPT Plus / Claude Pro | [`stacks/open-webui-ollama`](./stacks/open-webui-ollama) |
| **Edge Proxy** | **Traefik v3** | Cloudflare SSL / AWS ALB | [`stacks/traefik-proxy`](./stacks/traefik-proxy) |
| **Backend / DB**| **PocketBase** | Firebase / Supabase | [`stacks/pocketbase`](./stacks/pocketbase) |

---

## ⚡ Quick Deployment

Clone the repository and launch any stack in seconds:

```bash
git clone https://github.com/seotarek/awesome-selfhosted-stacks.git
cd awesome-selfhosted-stacks

# Example: Run n8n automation stack
cd stacks/n8n
cp .env.example .env
docker compose up -d
```

Or run the interactive deployment wizard:
```bash
chmod +x scripts/deploy.sh
./scripts/deploy.sh
```

---

## 🛡️ Production Security Checklist

1. **Change Default Secrets:** Always update passwords and secrets in `.env` before starting containers.
2. **Restrict Port Binding:** Keep database ports bound to `127.0.0.1` unless needed externally.
3. **Automated Backups:** Mount database backup volumes or use cron-based dump jobs.

---

## 🤝 Contributing

Have a rock-solid Docker Compose stack that solves a real operational problem? Pull requests are warmly welcomed! Please verify that your stack contains healthchecks and an `.env.example` file.

Curated with ❤️ by [Tarek Mohamed](https://tarek-mohamed.me.eg/).
