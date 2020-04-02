FROM vvakame/review:3.0
RUN apt-get update -y \
 && apt-get install -y texlive-fonts-extra \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
