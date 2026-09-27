module Melay_machine_test;
reg x, clk;

wire a, b, c, o1, o2;
wire D_A, D_B;


initial 
	begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

initial
begin
$dumpfile("Melay_machine.vcd");
$dumpvars(0,Melay_machine_test);

x=0;
#10 x=0;
#10 x=1;
#10;
#10 $finish;
end


Melay_machine mac(x, clk, y, A, B, Abar, Bbar);


endmodule