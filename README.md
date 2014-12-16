# Google Auth Proxy (by bitly)

Docker image for [google\_auth\_proxy](https://github.com/bitly/google_auth_proxy)

### Config file

The image currently support config file which is a volume on /config

```
$ docker run -d -p 4180:4180 -v $(pwd)/config:/config vic3lord/google-auth-proxy
```

The dockerfile contains an `ONBUILD ADD` so you can use this image as base image  
and add your config file in your private registry
