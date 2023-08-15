module multiplexor #(parameter integer WIDTH=5)(
  input [WIDTH-1:0] in0, in1,
  input sel,
  output [WIDTH-1:0] mux_out);

  always @(in0 or in1 or sel)
  begin
    if(sel == 1)
        mux_out = in1;
    else
        mux_out = in0;
  end
endmodule