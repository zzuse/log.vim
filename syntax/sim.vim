"syntax case ignore
syn clear
syn sync fromstart
set background=light

syntax match comment1 /#.*/
syntax match system1 /system .*/
syntax match print1  /print .*/
syntax match sleep1  /sleep .*/
syntax match var1  /$\(.*\)[=><]/
syntax match error1  /\(.*\):/
syntax match error2  /-x \(.*\)/
highlight link comment1 Comment
highlight link print1 Identifier
highlight link system1 Include
highlight link sleep1 Constant
highlight link var1 Label
highlight link error1 Define
highlight link error2 Define

"syntax match keywords / sql \| system \| print \| return \| sleep /
"highlight link keywords Structure
syn match perlConditional		"\<\%(if\|elsif\|endi\|then\|when\|default\)\>"
syn match perlConditional		"\<else\%(\%(\_s\*if\>\)\|\>\)" contains=perlElseIfError skipwhite skipnl skipempty
syn match perlElseIfError	"else\_s*if" containedin=perlConditional
syn keyword perlElseIfError	elseif containedin=perlConditional
hi def link perlConditional		Conditional

syntax keyword spTodo       contained sql
syntax cluster spCommentGrp contains=spTodo
syntax region  spComment start="sql" end=" " contains=@spCommentGrp
highlight link spTodo Keyword
syntax match sql1    /sql .*/
highlight sql1 ctermfg=darkgreen guifg=darkgreen
