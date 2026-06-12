# 🚀 DevOps & System Administration Mini-Projects

A curated repository of five practical mini-projects demonstrating core competencies in Software Engineering, DevOps, Containerization, Container Orchestration, Linux Administration, and CI/CD pipelines.

---

## 📂 Project Directory Index

| # | Project Name | Tech Stack | Core Concept / Focus |
|---|--------------|------------|-----------------------|
| 1 | **[CI Pipeline for Python](./CI%20Pipeline%20For%20Python)** | Python, GitHub Actions, Pytest, Flake8 | Continuous Integration, Automated Testing & Linting |
| 2 | **[Linux Sysadmin Automation Kit](./Linux%20Sysadmin%20Automation%20Kit)** | Bash Shell Scripting, Linux System Tools | System Monitoring, Automation, and Log Generation |
| 3 | **[Docker Compose Web Server](./docker-compose)** | Docker, Docker Compose, Nginx | Multi-container Local Orchestration, Bind Mounts |
| 4 | **[Kubernetes Pod Auto-Healing & Scaling](./kubernetes-pod-scaling)** | Kubernetes (k8s), Docker, Nginx, Shell Scripting | Self-Healing, Declarative Scaling, Replica Sets |
| 5 | **[Dockerized Flask To-Do App](./to-do-app-docker)** | Python (Flask), Docker, Jinja2 | Containerization, Flask Application Development |

---

## 🛠️ Detailed Project Overviews

### 1. CI Pipeline for Python
- **Goal**: Automate code quality checks and tests on every push.
- **Features**: 
  - Automated testing with `pytest`.
  - Static code analysis/linting using `flake8`.
  - Execution via GitHub Actions on push to `main` branch.
- **Go to Project**: [CI Pipeline for Python](./CI%20Pipeline%20For%20Python)

### 2. Linux Sysadmin Automation Kit
- **Goal**: Automate routine system health monitoring checks.
- **Features**:
  - Generates custom formatted system health logs in `health_report.log`.
  - Captures Disk Space Usage (`df -h`).
  - Lists active running tasks and processes.
- **Go to Project**: [Linux Sysadmin Automation Kit](./Linux%20Sysadmin%20Automation%20Kit)

### 3. Docker Compose Web Server
- **Goal**: Quickly orchestrate and serve static websites locally.
- **Features**:
  - Sets up an Nginx reverse-proxy/web server.
  - Exposes port `8080` to the host system.
  - Mounts local directory changes directly to `/usr/share/nginx/index.html` (hot-reloading).
- **Go to Project**: [Docker Compose Web Server](./docker-compose)

### 4. Kubernetes Pod Auto-Healing & Scaling
- **Goal**: Demonstrate how Kubernetes ensures high-availability and self-healing.
- **Features**:
  - Declarative configuration setting a replica factor of 3 pods.
  - Simulation script (`delete-pod.sh`) that continuously deletes pods every 20 seconds to show K8s self-healing.
- **Go to Project**: [Kubernetes Pod Auto-Healing & Scaling](./kubernetes-pod-scaling)

### 5. Dockerized Flask To-Do App
- **Goal**: Build and containerize a lightweight web application.
- **Features**:
  - Simple, responsive web UI for managing tasks.
  - Python Flask backend with in-memory state.
  - Production-ready Dockerfile using a lightweight Python image.
- **Go to Project**: [Dockerized Flask To-Do App](./to-do-app-docker)

---

## 📐 Repository Structure

```text
MiniProjects/
├── README.md                           <-- Main index and guide
├── CI Pipeline For Python/
│   ├── calculator.py                   # Core logic
│   ├── test_calculator.py              # Test suite
│   ├── requirements.txt                # Dependencies
│   └── README.md                       # CI Setup guide
├── Linux Sysadmin Automation Kit/
│   ├── healthcheck.sh                  # Automation script
│   └── health_report.log               # Append-only report logs
├── docker-compose/
│   ├── docker-compose.yaml             # Composition config
│   ├── Dockerfile                      # Web-server container build
│   └── html/                           # Web pages folder
├── kubernetes-pod-scaling/
│   ├── deployment.yaml                 # Pod scaling manifest
│   ├── service.yaml                    # Access routing config
│   ├── delete-pod.sh                   # Self-healing simulator
│   └── index.html                      # Web server template
└── to-do-app-docker/
    ├── app.py                          # Flask application
    ├── requirements.txt                # Flask dependencies
    └── Dockerfile                      # Container definition
```
