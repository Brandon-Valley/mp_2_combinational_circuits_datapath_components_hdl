project compileall
vsim -voptargs=+acc work.OR4_tb
 
add wave -position insertpoint  \
sim:/OR4_tb/i_a \
sim:/OR4_tb/i_b \
sim:/OR4_tb/i_c \
sim:/OR4_tb/i_d \
sim:/OR4_tb/o_f

run -all