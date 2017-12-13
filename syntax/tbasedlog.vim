" For colorizing debuglog
" Author: ZZ
" how to install:
" :source $HOME/.vim/thisfile
syn clear
syn sync fromstart
set background=light
"12/13 16:34:39.613117 INFO
syntax match info /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sINFO.*/
highlight link info Comment
"DND
"DND module
syntax match dnd  /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sDND..*/
highlight link dnd Constant
syntax match dndmodule  /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sDND module..*/
highlight link dndmodule String
"MND
"MND SDB
syntax match mnd /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sMND..*/
highlight link mnd Label
syntax match mndsdb /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sMND SDB..*/
highlight mndsdb ctermfg=darkgreen guifg=darkgreen
"TMR
"TMR MND
"TMR MND-mpeer
"TMR DND-vnode
"TMR DND-mgmt
"TMR DND-meter
"TMR DND-shell
"TMR TSC-slave
"TMR TSC-mgmt
"TMR TSC-vnode
"TMR TSC-meter
syntax match tmrmnd /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR MND.*/
highlight link tmrmnd Number
syntax match tmrmndmpeer /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR MND-mpeer.*/
highlight link tmrmndmpeer Boolean
syntax match tmrdndvnode /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR DND-vnode.*/
highlight link tmrdndvnode Float
syntax match tmrdndmgmt /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR DND-mgmt.*/
highlight link tmrdndmgmt Identifier
syntax match tmrdndmeter /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR DND-meter.*/
highlight link tmrdndmeter Function
syntax match tmrdndshell /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR DND-shell.*/
highlight link tmrdndshell Statement
syntax match tmrtscslave /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR TSC-slave.*/
highlight link tmrtscslave Conditional
syntax match tmrtscmgmt /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR TSC-mgmt.*/
highlight link tmrtscmgmt Repeat
syntax match tmrtscvnode /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR TSC-vnode..*/
highlight link tmrtscvnode Character
syntax match tmrtscmeter /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sTMR TSC-meter..*/
highlight link tmrtscmeter Type
"RPC DND
"RPC TSC-vnode
"RPC TSC-mgmt 
"RPC TSC-slave
"RPC TSC-meter 
"RPC DND-mgmt
"RPC MND-dnode
"RPC MND-mpeer
"RPC MND-shell
syntax match rpcdnd /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC DND..*/
highlight link rpcdnd Operator
syntax match rpctscvnode /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC TSC-vnode..*/
highlight link rpctscvnode Keyword
syntax match rpctscmgmt /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC TSC-mgmt..*/
highlight link rpctscmgmt Exception
syntax match rpctscslave /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC TSC-slave..*/
highlight link rpctscslave PreProc
syntax match rpctscmeter /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC TSC-meter..*/
highlight link rpctscmeter StorageClass
syntax match rpcdndmgmt /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC DND-mgmt..*/
highlight link rpcdndmgmt Include
syntax match rpcmnddnode /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC MND-dnode..*/
highlight link rpcmnddnode Define
syntax match rpcmndmpeer /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC MND-mpeer..*/
highlight link rpcmndmpeer Macro
syntax match rpcmndshell /\d\d\/\d\d \d\d:\d\d:\d\d.\d\{-6}\sRPC MND-shell..*/
highlight link rpcmndshell PreCondit
"ADM
"GC
"RST

