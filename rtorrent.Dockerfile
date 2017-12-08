FROM ubuntu:artful

RUN apt update && apt install -y rtorrent
COPY etc/.rtorrent.rc /root/.rtorrent.rc

CMD ["rtorrent"]
