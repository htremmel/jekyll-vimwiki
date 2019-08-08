FROM jekyll/jekyll
MAINTAINER Hans Tremmel <hans.tremmel@gmail.com>

RUN apk update
RUN apk add vim
RUN apk add curl
RUN apk add openrc
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle
RUN git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
RUN curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

COPY .vimrc /root/.vimrc
COPY compile /root/compile
COPY watch /root/watch
COPY init.d-inotifyd /etc/init.d/inotifyd
COPY conf.d-inotifyd /etc/conf.d/inotifyd

RUN chmod 777 /etc/init.d/inotifyd
RUN chmod 777 /etc/conf.d/inotifyd

VOLUME /srv/wiki
VOLUME /srv/jekyll
VOLUME /srv/tmpl
VOLUME /srv/dist

CMD ["sh","compile"]
CMD ["rc-service","inotifyd","start"]
