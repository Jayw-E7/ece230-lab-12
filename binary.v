module binary(
    input w,
    input reset,
    input clk,
    output z, [2:0] State
);

    wire [2:0] Next;

    dff zero(
        .D(Next[0]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[0])
    );

    dff one(
        .D(Next[1]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[1])
    );
    
    dff two(
        .D(Next[2]),
        .clk(clk),
        .reset(reset),
        .Default(1'b0),
        .Q(State[2])
    );

    assign z = (~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]);
    assign Next[0] = (~State[1] & ~State[0] & ~w) | (~State[2] & ~State[1] & w) | (State[1] & State[0] & ~w) | (~State[2] & ~State[0] & w);
    assign Next[2] = (State[2] & w) | (State[1] & State[0] & w);
    assign Next[1] = (State[1] & ~State[0]) | (~State[2] & ~State[1] & w) | (~State[1] & State[0]);
    
    //assign Next[0] = State[1] & State[2] & State[0] | 

endmodule

/*

module binary(
    input w,
    input clk,
    output z
);

    wire [1:0] State;
    wire [1:0] Next;

    dff zero(
        .D(Next[0]),
        .clk(clk),
        .Q(State[0])
    );

    dff one(
        .D(Next[1]),
        .clk(clk),
        .Q(State[1])
    );

    assign z = State[1] & ~State[0];
    assign Next[0] = w & ~State[1] & ~State[0];
    assign Next[1] = w & (State[1] | State[0]);

endmodule

*/