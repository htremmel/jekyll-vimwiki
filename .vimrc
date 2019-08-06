execute pathogen#infect()
syntax on
filetype plugin indent on

let wiki = {}
let wiki.path = '/srv/wiki/'
let wiki.path_html = '/srv/jekyll/_wiki'
let wiki.template_path = '/srv/tmpl'
let wiki.template_default = 'default'
let wiki.template_ext = '.html'
let g:vimwiki_list=[wiki]
