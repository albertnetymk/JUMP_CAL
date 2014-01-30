network Third () W, I ==> Out:

entities
	distributor = Distributor(length = 105);

	// Assumes images comes row by row, and emits images row by row
    t0 = FIR(offset = 52, row = 951);
    t1 = FIR(offset = 52, row = 951);
    t2 = FIR(offset = 52, row = 951);
    t3 = FIR(offset = 52, row = 951);
    t4 = FIR(offset = 52, row = 951);
    t5 = FIR(offset = 52, row = 951);
    t6 = FIR(offset = 52, row = 951);
    t7 = FIR(offset = 52, row = 951);

    collector = Collector();

structure
	W --> distributor.W;
	I --> distributor.Image;

    distributor.W_out --> t0.Taps;
    distributor.W_out --> t1.Taps;
    distributor.W_out --> t2.Taps;
    distributor.W_out --> t3.Taps;
    distributor.W_out --> t4.Taps;
    distributor.W_out --> t5.Taps;
    distributor.W_out --> t6.Taps;
    distributor.W_out --> t7.Taps;

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
