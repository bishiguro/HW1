module SR_latch();
	
	reg S, R;
	wire Q, _Q;

	nor TOP_NOR (Q, R, _Q);
	nor BOT_NOR (_Q, S, Q);
	
	initial begin
	
		$dumpfile("demorgan_trace.vcd");
		$dumpvars;
		
		$display("S R | Q _Q");
		S=0; R=0; #5
		$display("%b, %b | %b, %b", S, R, Q, _Q);
		
		S=1; R=0; #5
		$display("%b, %b | %b, %b", S, R, Q, _Q);
		
		S=0; R=0; #5
		$display("%b, %b | %b, %b", S, R, Q, _Q);
		
		S=0; R=1; #5
		$display("%b, %b | %b, %b", S, R, Q, _Q);
		
		S=0; R=0; #5
		$display("%b, %b | %b, %b", S, R, Q, _Q);
	
	end
endmodule
