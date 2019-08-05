FROM jekyll/jekyll
MAINTAINER Hans Tremmel <hans.tremmel@gmail.com>

RUN apk add update
RUN apk add vim
RUN git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
RUN git clone https://github.com/tpope/vim-pathogen.git ~/.vim/

VOLUME /srv/wiki
VOLUME /srv/jekyll
VOLUME /srv/tmpl
VOLUME /srv/dist

