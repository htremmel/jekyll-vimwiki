# Compile vimwiki to html within the jekyll directory.
vim -c ":VimwikiIndex" -c "VimwikiAll2HTML" -c ":q"
# Somewhere in here provide some formatting, perhaps with gulp.
jekyll build -s /srv/jekyll/ -d /srv/jekyll/dist
