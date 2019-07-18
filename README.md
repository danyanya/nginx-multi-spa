# nginx-multi-spa

Docker-based nginx container to serve multiple SPAs on one server.

## Usage

If you need to serve multiple dynamically created SPA (React, VUE.js, etc) on one server, you can use this repo. Be sure that your SPA's router takes wildcard URI to start app (*).

To work you need to put your SPA's in next structure:
```
html/
├── index.html # there in this repo
├── app1
│   ├── build.js
│   ├── custom.css
│   └── index.html
├── app2
│   ├── build.js
│   ├── custom.css
│   ├── images
│   │   ├── background.jpg
│   │   └── logo.svg
│   └── index.html
└── app3
    ├── build.js
    ├── custom.css
    └── index.html

And so on...


```

To build container run:

```
make build
```

To run container run:
```
make run
```

And now HTTP request to `<your_server>/app1/` provide first SPA,
HTTP request to `<your_server>/` goes to root's index.html (in repo here is redirect to google.com).

## Note

To work with SSL your need to rewrite config file and see [DanielDent/docker-nginx-ssl-proxy](https://github.com/DanielDent/docker-nginx-ssl-proxy)