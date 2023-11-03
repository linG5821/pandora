FROM python:3.9-slim@sha256:5f0192a4f58a6ce99f732fe05e3b3d00f12ae62e183886bca3ebe3d202686c7f

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

VOLUME /data

WORKDIR /opt/app

ADD . .

RUN pip --no-cache-dir install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple/  && pip --no-cache-dir install --upgrade .[api,cloud] -i https://mirrors.aliyun.com/pypi/simple/ 

ENTRYPOINT ["bin/startup.sh"]
