module demorgan
(
	input A,
	input B,
	output nA,
	output nB,
	output AandB,
	output AorB,
	output nAandB,
	output nAorB,
	output nAandnB,
	output nAornB
);

	wire nA;
	wire nB;
	wire AandB;
	wire AorB;

	not Ainv(nA, A);
	not Binv(nB, B);

	and andgate(AandB, A, B);
	or orgate(AorB, A, B);

	not AandBinv(nAandB, AandB);
	not AorBinv(nAorB, AorB);

	and andgate(nAandnB, nA, nB);
	or orgate(nAornB, nA, nB);

endmodule