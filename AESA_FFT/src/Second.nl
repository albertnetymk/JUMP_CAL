network Second () W, I ==> Out:

entities
	distributor = Distributor(length = 32);

	// Assumes images comes row by row, and emits images row by row
	t0 = FFT(nfft = 32, columns = 256);
	t1 = FFT(nfft = 32, columns = 256);
	t2 = FFT(nfft = 32, columns = 256);
	t3 = FFT(nfft = 32, columns = 256);
	t4 = FFT(nfft = 32, columns = 256);
	t5 = FFT(nfft = 32, columns = 256);
	t6 = FFT(nfft = 32, columns = 256);
	t7 = FFT(nfft = 32, columns = 256);

	// fft = FFT(nfft = 2, columns = 16);
	collector = Collector();

structure
	W --> distributor.W;
	I --> distributor.Image;

	distributor.W_out --> t0.W;
	distributor.W_out --> t1.W;
	distributor.W_out --> t2.W;
	distributor.W_out --> t3.W;
	distributor.W_out --> t4.W;
	distributor.W_out --> t5.W;
	distributor.W_out --> t6.W;
	distributor.W_out --> t7.W;

	distributor.I_0 --> t0.In;
	distributor.I_1 --> t1.In;
	distributor.I_2 --> t2.In;
	distributor.I_3 --> t3.In;
	distributor.I_4 --> t4.In;
	distributor.I_5 --> t5.In;
	distributor.I_6 --> t6.In;
	distributor.I_7 --> t7.In;

	t0.Out --> collector.In_0;
    t1.Out --> collector.In_1;
    t2.Out --> collector.In_2;
    t3.Out --> collector.In_3;
    t4.Out --> collector.In_4;
    t5.Out --> collector.In_5;
    t6.Out --> collector.In_6;
    t7.Out --> collector.In_7;

	collector.Out_0 --> Out;
    collector.Out_1 --> Out;
    collector.Out_2 --> Out;
    collector.Out_3 --> Out;
    collector.Out_4 --> Out;
    collector.Out_5 --> Out;
    collector.Out_6 --> Out;
    collector.Out_7 --> Out;
end
