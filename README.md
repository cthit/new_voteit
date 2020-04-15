# Configuration for the chalmers.it VoteIT docker image.

Based on https://github.com/voteit/sverok_buildout

## Env variables

The following environment variables are needed to run:

```
    - SMTP_HOST=smtp-relay.gmail.com
    - SMTP_PORT=25
    - SMTP_SENDER=voteit@chalmers.it
```

## Volumes

The following volume mapping are useful

```
    # General data directory for persistancy
    - /data/svoteit/zeo:/app/var/zeo
    # Logs
    - /data/svoteit/log:/app/var/log
    # For gamma integration
    - /data/svoteit/gamma.json:/app/var/gamma.json
```

## Structure of gamma.json

```
{
    "client_id": "%GAMMA_CLIENT_ID%",
    "auth_uri": "https://gamma.chalmers.it/api/oauth/authorize",
    "token_uri": "https://gamma.chalmers.it/api/oauth/token",
    "client_secret": "%GAMMA_CLIENT_SECRET%"
}
```
