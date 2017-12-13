" For colorizing debuglog (also mean syntax highlighting)
" Author: JQG
"
" how to install:
" :source $HOME/.vim/log.vim
"
" vim built-in syntax group:
"        *Comment        any comment
"        *Constant       any constant
"         String         a string constant: "this is a string"
"         Character      a character constant: 'c', '\n'
"         Number         a number constant: 234, 0xff
"         Boolean        a boolean constant: TRUE, false
"         Float          a floating point constant: 2.3e10
"        *Identifier     any variable name
"         Function       function name (also: methods for classes)
"        *Statement      any statement
"         Conditional    if, then, else, endif, switch, etc.
"         Repeat         for, do, while, etc.
"         Label          case, default, etc.
"         Operator       "sizeof", "+", "*", etc.
"         Keyword        any other keyword
"         Exception      try, catch, throw
"        *PreProc        generic Preprocessor
"         Include        preprocessor #include
"         Define         preprocessor #define
"         Macro          same as Define
"         PreCondit      preprocessor #if, #else, #endif, etc.
"        *Type           int, long, char, etc.
"         StorageClass   static, register, volatile, etc.
"         Structure      struct, union, enum, etc.
"         Typedef        A typedef
"        *Special        any special symbol
"         SpecialChar    special character in a constant
"         Tag            you can use CTRL-] on this
"         Delimiter      character that needs attention
"         SpecialComment special things inside a comment
"         Debug          debugging statements
"        *Underlined     text that stands out, HTML links
"        *Ignore         left blank, hidden
"        *Error          any erroneous construct
"        *Todo           anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

"syntax case ignore
set background=light

"syntax keyword subscriber1 IMSI MIN MDN MSISDN
syntax match subscriber1  / IMSI \| MIN \| MDN \| MSISDN /
syntax match networkelem1 / MSC \| VLR \| MSCID \| RCF \| SMSC /
syntax match error2       / error \| ERROR \| Error \| KO /
syntax match error3       / failure \| FAILURE \| Failure \| fail\| FAIL\| Fail/ 
syntax match error4       / exception \| EXCEPTION \| Exception /

highlight link subscriber1 Identifier
highlight link networkelem1 Constant
highlight link error2  Error
highlight link error3  Error
highlight link error4  Error

syntax match comment1 /\/\/.*/

"   +++ VM10 2012-04-08 12:28:18 DEBUG   #074060 0-0-1 >
syntax match blade1  /\(   #[0-9]\+ \)\@<=0-0-[1-9]\+/
syntax match header1 /^   +++ .* \(0-0-[1-9]* >\)\@=/

"   REPT DEBUG PDLSU1 TR (0x406), FILE ../AILogger.C, LINE 121
syntax match processname1 /\(REPT DEBUG \)\@<=\S\+/
syntax match tracenum1    /\(\s\+REPT DEBUG \S\+ TR \)\@<=(0x\x\+)/

"   File: /vob/mds_hlr_hlt/src/hagenxdu/hainimod/Src/hatrthlr.c +1849
syntax match filename1 "File: /vob/\S\+"
"   REPT DEBUG SCTPSCH0 TR (0xf0d), FILE /n/plflR2901/SOURCE/SU3R29.src/cc/sctpsc
syntax match filename2 "FILE \S\+"

"   END OF REPORT #063857++-
syntax match tail1 "^   END OF REPORT #[0-9].*$"

"    Label:NST_TRACING_HANDING
syntax match label1  /Label:/
syntax match function1  /\(^   Label:\)\@<=\S\+/

"       Info:  RTDMSe: Activity Ref: 0 | Class::Method: CHyr_Net_in_mem::Load_att
syntax match classmethod1 /\( \)\@<=Class::Method\(: \)\@=/
syntax match classmethod2 /\( Class::Method: \)\@<=\S\+/

"       Info: CAXAUT|AEL: hamaelp :SEND_SLAST
syntax match caxaut1   /\(^\s\+Info: \)\@<=CAXAUT|AEL/
syntax match aelname1  /\(^\s\+Info: CAXAUT|AEL: \)\@<=.*/

"       IMSI:208011188880010f
"       RemoteNE1:913300742f
"       Info: HATLV001 ZB_LMSI=0 VLRPHASE=3 SKP_ISD=0 FCA01=1 VLR_CB=0 SUPCAMPH=0
syntax match per_sub_IMSI     /\(^\s\+\)\@<=IMSI:/
syntax match per_sub_MSISDN   /\(^\s\+\)\@<=MSISDN:/
syntax match per_sub_RemoteNE /\(^\s\+\)\@<=RemoteNE[12]:/
syntax match info1            /\(^\s\+\)\@<=Info:/

"      *Warning: None matched!
syntax match warning1         /\(^\s\+\)\@<=\*Warning: \S\+/

"     **Error:...
syntax match error1           /\(^\s\+\)\@<=\*\*Error\(:\)\@=/

highlight link comment1 Comment
highlight link error1  ErrorMsg
highlight warning1     ctermbg=darkred ctermfg=white
highlight link filename1 Comment
highlight link filename2 Comment
highlight processname1   cterm=bold ctermfg=darkgray ctermbg=lightcyan guifg=darkblue
highlight label1 cterm=Bold,Underline ctermbg=Yellow gui=Bold,Underline guibg=DarkBlue
highlight link function1 Constant
highlight classmethod1 cterm=bold ctermbg=lightgreen guifg=darkgreen guibg=lightcyan
highlight link classmethod2 Identifier
highlight link info1            FoldColumn
highlight link per_sub_IMSI     SpellCap
highlight link per_sub_MSISDN   SpellCap
highlight link per_sub_RemoteNE DiffAdd

highlight caxaut1  ctermbg=blue ctermfg=yellow guibg=lightblue
highlight link aelname1 Identifer 

highlight link header1 PreProc
highlight link tail1   Ignore
highlight blade1       ctermfg=blue  guifg=darkblue
highlight tracenum1    ctermfg=darkgreen guifg=darkgreen

