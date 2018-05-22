module control_block(clk, gen, update, reset, software_stop, init);
  input clk, gen, update, reset;
  output reg software_stop, init;
  
  // THESE COUNTERS ARE TEMPORARY
  reg [6:0] sendMoveCycleCounter = 0;
  reg [4:0] updateBoardCycleCounter = 0;
  localparam SEND_MOVE_COUNTER_MAX = 64;
  localparam UPDATE_BOARD_COUNTER_MAX = 16;
  
  
  localparam INIT_STATE   = 2'b00;
  localparam READY_STATE  = 2'b01;
  localparam SEND_STATE   = 2'b10;
  localparam UPDATE_STATE = 2'b11;
  
  reg [1:0] currentState = INIT_STATE;
  
  always @ (posedge clk) begin
    
    if(reset) begin
      currentState = INIT_STATE;
      software_stop = 0;
      init = 1;
    end
    
    else begin
      case(currentState) 
        
        INIT_STATE: begin
		  currentState = READY_STATE;
      	  software_stop = 0;
      	  init = 1;
        end
        
        READY_STATE: begin
          if(gen) begin
            currentState = SEND_STATE;
            software_stop = 1;
            init = 0;
          end
          
          else if(update) begin
            currentState = UPDATE_STATE;
            software_stop = 1;
            init = 0;
          end
          
          else begin
            software_stop = 0;
            init = 0;
          end
          
        end
        
        SEND_STATE: begin
          if(!gen && sendMoveCycleCounter >= SEND_MOVE_COUNTER_MAX) begin
            sendMoveCycleCounter = 0;
            currentState = READY_STATE;
            software_stop = 0;
            init = 0;
          end
          
          else begin
            sendMoveCycleCounter = sendMoveCycleCounter + 1;
            software_stop = 1;
            init = 0;
          end

        end
        
        UPDATE_STATE: begin
          
          if(!update && updateBoardCycleCounter >= UPDATE_BOARD_COUNTER_MAX) begin
            currentState = READY_STATE;
            software_stop = 0;
            init = 0;
          end
          
          else begin
            updateBoardCycleCounter = updateBoardCycleCounter + 1;
            software_stop = 1;
            init = 0;
          end
          
        end
        
      endcase
        
            
    end
    
  end
  
  
endmodule