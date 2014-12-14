# Google Auth Proxy (by bitly)

Docker image for [google\_auth\_proxy](https://github.com/bitly/google_auth_proxy)

### Config file

The image currently support config file which is a volume on /config

```
$ docker run -d -p 4180:4180 -v $(pwd)/config:/config vic3lord/google-auth-proxy
```
