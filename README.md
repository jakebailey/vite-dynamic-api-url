# Dynamically loading an API URL with vite + caddy

```
$ docker build -t myimage .
$ docker run -p 5000:80 -e "API_URL=https://example.org/" -it myimage
```

Browse to `http://localhost:5000/` and note that the API URL is printed.
