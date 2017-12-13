"syntax case ignore
syn clear
syn sync fromstart
set background=light

syntax match comment1 /#.*/
syntax match sql1    /sql .*/
syntax match system1 /system .*/
syntax match print1  /print .*/
syntax match sleep1  /sleep .*/
syntax match var1  /$\(.*\)=/
highlight link comment1 Comment
highlight sql1 ctermfg=darkgreen guifg=darkgreen
highlight link print1 Identifier
highlight link system1 Include
highlight link sleep1 Constant
highlight link var1 Label

"syntax match keywords / sql \| system \| print \| return \| sleep /
"highlight link keywords Structure
syn match perlConditional		"\<\%(if\|elsif\|endi\|then\|when\|default\)\>"
syn match perlConditional		"\<else\%(\%(\_s\*if\>\)\|\>\)" contains=perlElseIfError skipwhite skipnl skipempty
syn match perlElseIfError	"else\_s*if" containedin=perlConditional
syn keyword perlElseIfError	elseif containedin=perlConditional
hi def link perlConditional		Conditional
