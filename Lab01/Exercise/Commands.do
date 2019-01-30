vlog tb.v ripple_carry_counter.v T_FF.v D_FF.v
vsim -novopt work.tb 
view wave
run 500ns  