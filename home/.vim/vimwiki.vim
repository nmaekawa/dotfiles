"------------------------------------------------------------
" vimwiki
"
let main_wiki = {}
let main_wiki.path = '~/Dropbox/notes/vimwiki/wiki/'
let main_wiki.path_html = '~/Dropbox/notes/html_site/wiki/'
let main_wiki.auto_export = 0
let main_wiki.syntax = 'markdown'
let main_wiki.ext = '.md'

let wiki_1 = {}
let wiki_1.path = '~/Dropbox/notes/vimwiki/wiki_1/'
let wiki_1.path_html = '~/Dropbox/notes/html_site/wiki_1/'
let wiki_1.auto_export = 1

let wiki_2 = {}
let wiki_2.path = '~/Dropbox/notes/vimwiki/wiki_work/'
let wiki_2.path_html = '~/Dropbox/notes/html_site/wiki_work/'
let wiki_2.auto_export = 0
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [main_wiki, wiki_1, wiki_2]


