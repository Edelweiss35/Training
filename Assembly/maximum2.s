#PURPOSE: This program finds the masimum number of a 
#         set of data items.
#
#VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Largest data item found
# %eax - Current data item
#
# The following memory location are used:
#
# data_items - contains the item data.  A 0 is used
#              to terminate the data

.section .data

data_items:
 .long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
data_items2:
 .long 3,67,34,2,45,75,54,34,44,33,22,11,66,0
data_items3:
 .long 3,67,34,230,45,75,54,34,44,33,22,11,66,0

 .section .text

 .globl main
main:
 pushl $data_items
 call maximum
 pushl $data_items2
 call maximum
 pushl $data_items3
 call maximum
 movl %eax, %ebx 
 movl $1, %eax
 int $0x80

# -4(%ebp) is current max

.type maximum,@function
maximum:
 pushl %ebp
 movl %esp, %ebp
 movl $0, %edi
 movl 8(%ebp), %edx
 movl $1, %eax

start_loop:
 cmpl $0, %eax
 je loop_exit
 incl %edi
 movl (%edx,%edi,4), %eax
 cmpl %ebx, %eax
 jle  start_loop

 movl %eax, %ebx
 jmp start_loop

loop_exit:
 movl %ebx, %eax
 movl %ebp, %esp
 popl %ebp
 ret
 
