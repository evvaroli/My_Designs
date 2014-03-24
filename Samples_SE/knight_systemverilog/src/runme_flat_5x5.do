alog +define+disp -sv2k9 -dbg $dsn/src/knight_flat.sv

asim -advdataflow knight_flat	

mem -valueradix dec -cols 5 /knight_flat/Board1D

run -all


