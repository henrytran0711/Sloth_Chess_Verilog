# Sloth-Chess-Engine-Verilog
Chess AI Hardware Implementation

##Simulate these files to get 64 text files as demonstrated in Lab and Report:
+ board_updater.v
+ chessBoard.v
+ control_block.v
+ moveGenerator.v
+ pieceReg.v
+ square.v
+ transceiver.v
+ transmitter.v
+ tb_moveGenerator.v 
## Experimental codes
After verifying that our simulation results are correct, we moved on to connect
the serializer to the moveGenwithSerial.v.
This has been simulated correctly and proven to fit on the board.
However we still need to implement Qsys and re-write the control_block
to fully interface with the software.
