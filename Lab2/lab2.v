module lab2(a,b,c,d, fa, fb, fc, fd, fe, ff, fg);

	input a,b,c,d;
	output fa, fb, fc, fd, fe, ff, fg;
	assign fa= ~((~c & ~a) | (~d & b) | (~c & d & ~b) | (c & ~d & a) | (d & ~a) | (c & b));

	assign fb= ~((~c & ~a) | (~d & ~a & ~b) | (~d & a & b) | (d & a & ~b) | (~c & ~d));
	assign fc= ~((~c & d) | (c & ~d) | (a & ~b) | (~c & ~b) | (~c & a));

	assign fd= ~((c & a & ~b) | (~c & ~d & ~a) | (~c & a & b) | (d & ~b) | (c & ~a & b));
	// Fe = (~c & ~a) | (d & b) | (~a & b) | (c & d)
	// Fe = (~c & ~a) | b&(d|~a) | (c & d)

	assign fe= ~((~c & ~a) | b&(d|~a) | (c & d));

	assign ff= ~((~a & ~b) | (~c & d) | (c & ~a) | (c & ~d & ~b) | (d & b));

	assign fg= ~((~c & b) | (~c & d) | (c & ~d & ~a) | (c & a & ~b) | (d & b));

endmodule