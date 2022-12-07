`timescale 1ns/1ns 

//timeunit/time precesion

module testbench();

reg clk;




wire [31:0]ReadData;
//wire Branch;


//wire [31:0]Writedata;


arch2 uut(.clk(clk),.ReadData(ReadData));


//initialize test
/* initial begin
reset<=1;
#20 reset<=0;
end */

//generate clock
 initial 
  begin
   clk <=0;
   
   #1000 $finish;
  end

 always 
  begin
   #5 clk = ~clk;
  end 


//check results
//always @(posedge clk)
 //initial begin
//PCNext=32'h 00000010;



//$display("Result= "%d,Writedata);

//#1000 $finish;
//end

endmodule