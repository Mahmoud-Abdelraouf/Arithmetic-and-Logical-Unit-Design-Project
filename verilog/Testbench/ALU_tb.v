module ALU_tb;

    // Inputs
    reg signed [3:0] a;
    reg signed[3:0] b;
    reg [3:0] sel;

    // Outputs
    wire signed[5:0] y_a;
    wire signed[3:0] y_l;

    // Instantiate the Unit Under Test (UUT)
    
    ALU uut ( 
        .a(a), 
        .b(b), 
        .sel(sel), 
        .y_a(y_a),
        .y_l(y_l)
        
    );
    initial begin
    //the process of creating a unique object using a module template whenever a module is invoked is called instantiation. The objects are called instances, and these objects have their own names, parameters, variables and input/output (I/O) interface./
    
     
        // Apply inputs.
        a = 4'b0001;//a=1
        b = 4'b1011;//b=-5
        sel = 4'b0000; 

        for(;sel<=4'b1111;sel = sel + 4'b0001 )
          begin
          
        
        #100;
          end
    
    end
      
endmodule


