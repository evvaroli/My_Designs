alog +define+disp -sv2k9 -dbg $dsn/src/knight_recursive.sv

asim -advdataflow knight_rec	

mem -valueradix dec -cols 5 /knight_rec/Board1D

run -all
