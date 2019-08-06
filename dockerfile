FROM jekyll/jekyll
MAINTAINER Hans Tremmel <hans.tremmel@gmail.com>

RUN apk update
RUN apk add vim
RUN apk add curl
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle
RUN git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
RUN curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

COPY .vimrc ~/.vimrc
COPY compile.sh ~/compile.sh

VOLUME /srv/wiki
VOLUME /srv/jekyll
VOLUME /srv/tmpl
VOLUME /srv/dist

CMD ["sh","~/compile.sh"]
