FROM beshtieko/UserFer:main

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# working directory 
WORKDIR /root/userbot


ENV ENV TZ=Asia/Kolkata

CMD ["bash", "startup"]
