module A1(input x, input y, output z);
    assign z=(x^y)&x;
endmodule
module B1( input x, input y, output z );
    assign z=~(x^y);
endmodule


module top_module (input x, input y, output z);
    wire z1,z2,z3,z4,z5,z6;
    A1 IA1(.x(x),.y(y),.z(z1));
    B1 IB1(.x(x),.y(y),.z(z2));
    A1 IA2(.x(x),.y(y),.z(z3));
    B1 IB2(.x(x),.y(y),.z(z4));
	assign z5=	z1|z2;
	assign z6=	z3&z4;
 	assign z=	z5^z6;
endmodule
