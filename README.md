# Cloud Build CI/CD Handson project

This project demonstrates how to set up a CI/CD pipeline using Google Cloud Build. The pipeline will:
1. Build a Docker image for a Node.js app.
2. Push the image to Google Container Registry.
3. Deploy the app to Google Kubernetes Engine (GKE).

## Prerequisites

Before using this project, you need to have the following:
- A **Google Cloud Platform (GCP)** account and project.
- A **Google Kubernetes Engine (GKE)** cluster.
- **Cloud Build API** enabled for your project.
- **Google Cloud SDK** installed and authenticated on your machine.
- **Docker** installed locally.
- A GitHub repository to connect with Cloud Build.

## Setup

### 1. Clone this repository
```bash
git clone https://github.com/your-username/my-app.git
cd my-app
```

### 2. Configure Cloud Build

1. Create a `cloudbuild.yaml` file in your Cloud Build console.
2. Set up a trigger in Cloud Build to start builds on changes to your GitHub repository.

### 3. Set up Kubernetes Cluster

1. Create a GKE cluster and configure the `kubectl` command-line tool to use the cluster.
2. Deploy the app to GKE:
    ```bash
    kubectl create deployment my-app --image=gcr.io/your-project-id/my-app
    kubectl expose deployment my-app --type=LoadBalancer --port 8080
    ```

### 4. Trigger a Build

Push a change to your GitHub repository (e.g., `git push origin main`). This will trigger Cloud Build, which will:
- Build the Docker image.
- Push the image to Google Container Registry.
- Deploy the image to your GKE cluster.

### 5. Access the App

After the deployment, you can access the app using the external IP of the service:
```bash
kubectl get svc
```

Visit the external IP in your browser to see the app running!

## Resources

- [Cloud Build Documentation](https://cloud.google.com/build/docs)
- [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine)

## License

This project is licensed under the MIT License.
