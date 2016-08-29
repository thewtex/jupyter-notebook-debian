# jupyter-notebook-debian

[![CircleCI](https://circleci.com/gh/thewtex/jupyter-notebook-debian.svg?style=svg)](https://circleci.com/gh/thewtex/jupyter-notebook-debian)

[![](https://images.microbadger.com/badges/image/thewtex/jupyter-notebook-debian.svg)](http://microbadger.com/images/thewtex/jupyter-notebook-debian
"DockerHub layers")

A [Jupyter](http://jupyter.org)  Notebook with the [Python](http://python.org)
3 kernel. The Docker image is based on [Debian](https://www.debian.org).

Example startup:

```bash
docker run --rm -p 8888:8888 -v $(pwd):/work/ thewtex/jupyter-notebook-debian
```

**Note:** This project is largely obsolete now that
[jupyter/docker-stacks](https://github.com/jupyter/docker-stacks) is based
on Debian.
