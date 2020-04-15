# Configuration for the chalmers.it VoteIT docker image.

Based on https://github.com/voteit/sverok_buildout

## Env variables

The following environment variables are needed to run:

```
    - SMTP_HOST=smtp-relay.gmail.com
    - SMTP_PORT=25
    - SMTP_SENDER=voteit@chalmers.it
    - GAMMA_CLIENT_ID=
    - GAMMA_CLIENT_SECRET=
    - GAMMA_AUTH_URI=https://gamma.chalmers.it/api/oauth/authorize
    - GAMMA_TOKEN_URI=https://gamma.chalmers.it/api/oauth/token
```

## Volumes

The following volume mapping are useful

```
    # General data directory for persistancy
    - /data/svoteit/zeo:/app/var/zeo
    # Logs
    - /data/svoteit/log:/app/var/log
```
