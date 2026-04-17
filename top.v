module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    onehot onehot_inst (
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .w(sw),
        .StateOut(led[6:2])
    );
    
    binary binary_inst (
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .w(sw),
        .State(led[9:7])
    );

endmodule