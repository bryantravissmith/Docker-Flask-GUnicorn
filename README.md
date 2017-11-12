# Docker-Flask-GUnicorn

```bash
docker build -t app_server_name .
docker run -d -p 80:80 -v $(pwd)/app:/app --name app_server app_server_name
```
