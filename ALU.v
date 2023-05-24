module ALU(
    a,
    b,
    sel,
    y_a,
    y_l   );
    
    //inputs,outputs and internal variables declared here
    input signed[3:0] a,b;
    input signed[3:0] sel;
    output signed  [5:0] y_a;
    output signed  [3:0] y_l;
    wire signed [3:0] Reg1,Reg2;
    reg  [5:0] Reg3;
    reg  [3:0] Reg4;
    
    
    //Assign inp1 and inp2 to internal variables for doing operations
    assign Reg1 = a;
    assign Reg2 = b;
    //Assign the output 
   
   assign y_a = Reg3;
   assign y_l = Reg4;
 
            //check if number positive or negative
            //and 10000 if =1 negative else positive
            //range -16 to 15
           
           
    //Always block with inputs in the sensitivity list.
    always @(sel or Reg1 or Reg2) //enter the block if any of those happen
    begin
        case (sel)
                
            4'b0000: // Increment a
              Reg3 = Reg1 + 1;
             
            4'b0001: // Decrement a
              Reg3 = Reg1 - 1;
            
            4'b0010: // Multiply a by 2
              Reg3 = Reg1 + Reg1 ;
              
            4'b0011: //increment b
              Reg3 = Reg2 + 1;
              
            4'b0100: // Decrement b
              Reg3 = Reg2 - 1;
              
            4'b0101: // Multiply b by 2
              Reg3 = Reg2 +Reg2 ;
            
            4'b0110: // add a and b
              Reg3 = Reg1 + Reg2;

            4'b0111: // multiply a by 4
              Reg3 = Reg1 << 2;
              
            4'b1000: // complement a
              Reg4 = ~Reg1 ;
              
            4'b1001: // complement b
              Reg4 = ~Reg2;
              
            4'b1010: //  and
              Reg4 = Reg1 & Reg2 ;
              
            4'b1011: //  or
              Reg4 = Reg1 | Reg2 ;
              
            4'b1100: // xor 
              Reg4 = Reg1 ^ Reg2;
              
            4'b1101: // xnor
              Reg4 = ~(Reg1 ^ Reg2);
              
            4'b1110: // nand
              Reg4 = ~(Reg1 & Reg2) ;
              
            4'b1111: // nor  
              Reg4 = ~(Reg1 | Reg2);   

         
        endcase 
    end
    
endmodule


