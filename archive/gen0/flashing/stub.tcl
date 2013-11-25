# connect to the 2nd CPU core
connect arm hw -debugdevice cpunr 2
#0xFFFFFF00: mvn     r0, #15
mwr 0xFFFFFF00   0xe3e0000f                 
#0xFFFFFF00: mov     r1, #0
mwr 0xFFFFFF04   0xe3a01000                 
#0xFFFFFF00: str     r1, [r0]
mwr 0xFFFFFF08   0xe5801000 
#0xFFFFFF00: wfe
mwr 0xFFFFFF0c   0xe320f002 
#0xFFFFFF00: ldr     r2, [r0]                
mwr 0xFFFFFF10   0xe5902000
#0xFFFFFF00: cmp     r2, r1                 
mwr 0xFFFFFF14   0xe1520001    
#0xFFFFFF00: beq     0xc             
mwr 0xFFFFFF18   0x0afffffb           
#0xFFFFFF00: mov     pc, r2      
mwr 0xFFFFFF1c   0xe1a0f002                 
# program couter of the 2nd CPU core at 0xFFFFFF00
rwr pc 0xFFFFFF00
# continue the execution
con
