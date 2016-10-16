docker-nginx
=========

# Build

```bash
$ docker build . -t nginx
```
# Run

```bash
$ docker run -d -p 80:80 nginx:latest

$ curl http://localhost
<html>
<head>
<title>Hello, World.</title>
</head>
<body>
<h1>Hello, World.</h1>
</body>
</html>
```
