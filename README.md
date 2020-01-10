Wordpress CLI Docker image

This image can be found on Docker Hub.

https://hub.docker.com/repository/docker/julianlab/wp-cli

```
docker pull julianlab/wp-cli:www-data
```

---

**PLease note:**

The www-data branch is run as the www-data user with uid: 33 and gid: 33.

The Wordpress docker image runs as this user by default and you can use this image together.

If you need to run as a different user u can use the latest image which runs with uid: 1000 and gid: 1000.

Alternatively you can override this image using your own Dockerfile.

https://hub.docker.com/_/wordpress/
