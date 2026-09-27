module Moore_machine_test;

reg x, clk;
wire xbar, a, b;
wire J_A, K_A, J_B, K_B;

initial 
	begin
        clk = 0;
        forever #3 clk = ~clk; 
    end
	
initial
begin
$dumpfile("Moore_machine.vcd");
$dumpvars(0,Moore_machine_test);

x=0;
#10 x=0;
#10 x=1;
#10;
#10 $finish;
end

Moore_machine mac(x,clk,A,B);


endmodule