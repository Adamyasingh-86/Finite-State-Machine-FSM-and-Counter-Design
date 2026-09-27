module Melay_machine(
input x, clk,
output y, A, B, Abar, Bbar
);

wire a, b, c, o1, o2;
wire D_A, D_B;

and a1(a, x, A);
and a2(b, x, B);
and a3(c, x, Abar);
and a4(y, xbar, o2);
or or1(o1, a, b);
or or2(o2, A, B);
not n1(xbar, x);

assign D_A = o1;
assign D_B = c;

D_flip_flop FF_A (
        .clk(clk),
        .D(D_A),    // Connect wire D_A to pin D
        .Q(A),       // Output goes to wire A
		.Qbar(Abar)
    );
	
D_flip_flop FF_B (
        .clk(clk),
        .D(D_B),    // Connect wire D_B to pin D
        .Q(B),      // Output goes to wire B
		.Qbar(Bbar)
    );

endmodule