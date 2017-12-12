"syntax case ignore
syn clear
syn sync fromstart
set background=light

syntax match comment1 /#.*/
syntax match sql    /sql .*/
syntax match system /system .*/
syntax match print  /print .*/
highlight link comment1 Comment
highlight sql ctermfg=darkgreen guifg=darkgreen
highlight link print Identifier
highlight link system Constant

syntax match keywords / sql \| system \| print \| return \| sleep /
highlight link keywords Structure
