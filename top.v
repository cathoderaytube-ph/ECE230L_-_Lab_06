module top (
input [7:0]sw,
output [5:0]led
);

wire W;

light choco(
    .downstairs(sw[0]), 
    .upstairs(sw[1]), 
    .stair_light(led[0])
    );

adder apple(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
    );

full_adder blueberry(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(0),
    .Y(led[3]),
    .Cout(W)
    );
    
full_adder raspberry(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(W),
    .Y(led[4]),
    .Cout(led[5])
    );
endmodule