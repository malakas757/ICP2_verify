# Add user macros, routines in this file
#强制把 la 重新定义为 lui + addi (绝对地址加载)
.macro la rd, symbol
    lui \rd, %hi(\symbol)
    addi \rd, \rd, %lo(\symbol)
.endm
