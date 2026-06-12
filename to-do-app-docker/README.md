# 📝 Dockerized Flask To-Do App

This project highlights application containerization using a lightweight Python image to run a responsive, web-based in-memory task planner.

---

## 🛠️ Key Technologies

- **Python Flask**: Minimalist backend framework used to serve templates and process API routes.
- **Docker**: Engine used to compile the application and isolate runtime execution environments.
- **Jinja2**: HTML rendering template engine embedded inside Flask.

---

## 📂 Project Structure

```text
to-do-app-docker/
├── app.py            # Main application script containing backend logic and templates
├── requirements.txt  # Project requirements file (Flask)
└── Dockerfile        # Docker recipe file defining compilation step directives
```

---

## 🚀 Usage Guide

### 1. Build the Docker Image
To assemble the app into a container image named `flask-todo`:
```bash
docker build -t flask-todo .
```

### 2. Run the Containerized App
Launch the container and map container port `5000` to your host computer's port `5000`:
```bash
docker run -d -p 5000:5000 flask-todo
```

Once running, open your web browser and navigate to:
👉 **[http://localhost:5000](http://localhost:5000)**

### 3. Check Logs
Verify the container logs to ensure the Flask dev server is running properly:
```bash
docker ps
docker logs <container_id_or_name>
```

### 4. Stop the Container
To stop the running application:
```bash
docker stop <container_id_or_name>
```
