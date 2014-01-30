network First () W, Image ==> Out:

entities

    distributor = Distributor(length = 16);

    t0 = MatrixMulplication(length = 16);
    t1 = MatrixMulplication(length = 16);
    t2 = MatrixMulplication(length = 16);
    t3 = MatrixMulplication(length = 16);
    t4 = MatrixMulplication(length = 16);
    t5 = MatrixMulplication(length = 16);
    t6 = MatrixMulplication(length = 16);
    t7 = MatrixMulplication(length = 16);

    collector = Collector();


structure
    W --> distributor.W;
    Image --> distributor.I;

    distributor.W_0 --> t0.Weight;
    distributor.W_1 --> t1.Weight;
    distributor.W_2 --> t2.Weight;
    distributor.W_3 --> t3.Weight;
    distributor.W_4 --> t4.Weight;
    distributor.W_5 --> t5.Weight;
    distributor.W_6 --> t6.Weight;
    distributor.W_7 --> t7.Weight;

    distributor.I_out --> t0.Image;
    distributor.I_out --> t1.Image;
    distributor.I_out --> t2.Image;
    distributor.I_out --> t3.Image;
    distributor.I_out --> t4.Image;
    distributor.I_out --> t5.Image;
    distributor.I_out --> t6.Image;
    distributor.I_out --> t7.Image;

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


