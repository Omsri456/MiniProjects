# 🐳 Docker Compose Web Server

This project demonstrates local service orchestration using Docker and Docker Compose to launch a lightweight Nginx web server, utilizing bind mounts for active hot-reloading.

---

## 🛠️ Key Technologies

- **Docker**: Engine used to containerize the Nginx service.
- **Docker Compose**: Orchestration tool to define and run the containerized stack.
- **Nginx**: High-performance HTTP server serving static pages.

---

## 📂 Project Structure

```text
docker-compose/
├── docker-compose.yaml    # Composition file mapping services, volumes, and ports
├── Dockerfile             # Basic Docker definition file for custom builds
├── demo.txt               # Sample configuration text guide
└── html/                  # Web directory containing static files
    ├── index.html         # Homepage file
    └── main.html          # Sub-page file
```

---

## 🚀 Usage Guide

### 1. Launch the Stack
Start up the web server container in detached mode (background):
```bash
docker-compose up -d
```

Once running, access the webpage in your browser at:
👉 **[http://localhost:8080](http://localhost:8080)**

### 2. Verify Running Containers
Check the health status of active docker-compose services:
```bash
docker-compose ps
```

### 3. Hot Reloading
The `docker-compose.yaml` file mounts your local `./html/index.html` file into the container. Any edits you make to `./html/index.html` on your host computer will display immediately upon refreshing your web browser, without needing to rebuild or restart the container.

### 4. Stop the Stack
Shut down the running containers:
```bash
docker-compose down
```
