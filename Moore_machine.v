module Moore_machine(
input x, clk,
output A,B
);

wire xbar, a, b;
wire J_A, K_A, J_B, K_B;


not n1(xbar,x);
and a1(a,xbar,J_A);
xor x1(b,x,A);

assign J_A = B;
assign K_A = a;
assign J_B = xbar;
assign K_B = b;


JK_flip_flop FF_A (
        .clk(clk),
        .J(J_A),    // Connect wire J_A to pin J
        .K(K_A),    // Connect wire K_A to pin K
        .Q(A)       // Output goes to wire A
    );
	
JK_flip_flop FF_B (
        .clk(clk),
        .J(J_B),    // Connect wire J_B to pin J
        .K(K_B),    // Connect wire K_B to pin K
        .Q(B)      // Output goes to wire B
    );

endmodule