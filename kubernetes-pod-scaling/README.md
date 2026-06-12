# ☸️ Kubernetes Pod Auto-Healing & Scaling

This project demonstrates Kubernetes self-healing and replication management. It defines a web application deployment scaling three active replicas, and provides a shell script to simulate pod failures to verify automatic self-healing.

---

## 🛠️ Key Concepts Illustrated

- **Declarative Scaling**: Maintaining exactly 3 instances of a web service using a Kubernetes Deployment replica specification.
- **Self-Healing (Re-creation)**: When a pod fails or is deleted, the ReplicaSet immediately detects the state change and provisions a new pod to keep the desired target count.
- **Load Balancing**: Routing HTTP traffic uniformly across active pods via a NodePort Service.

---

## 📂 Project Structure

```text
kubernetes-pod-scaling/
├── deployment.yaml    # Kubernetes deployment manifest targeting 3 replicas
├── service.yaml       # Kubernetes service exposing the application
├── Dockerfile         # Nginx configuration for building custom static site images
├── index.html         # Web page template with scaling diagnostics info
└── delete-pod.sh      # Shell script to continuously simulate pod failures
```

---

## 🚀 Usage Guide

### 1. Build local container image
If running inside minikube, set your terminal environment to direct docker builds inside the minikube manager:
```bash
eval $(minikube docker-env)
docker build -t selfheal:v1 .
```

### 2. Deploy manifests to Kubernetes
Apply the deployment and routing service files:
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Check the status of the resources:
```bash
kubectl get deployments
kubectl get services
kubectl get pods
```

### 3. Run Self-Healing simulation
Start the script to continuously delete active pods and observe how Kubernetes automatically provisions fresh pods:
```bash
chmod +x delete-pod.sh
./delete-pod.sh
```

Open a separate terminal window and monitor the pod lifecycle to watch the replacement process:
```bash
kubectl get pods -w
```
