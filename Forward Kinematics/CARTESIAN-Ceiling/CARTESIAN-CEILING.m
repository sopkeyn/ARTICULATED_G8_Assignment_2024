disp('Cartesian')

a1 = 1;
a2 = 1;
a3 = 1;
a4 = 1;

d1 = 2;
d2 = 2;
d3 = 2;

H0_1 = Link([0,a1,0,pi/2,1]);
H0_1.qlim = [0 0];

H1_2 = Link([pi/2,a2,0,pi/2,1]);
H1_2.qlim = [0 d1];

H2_3 = Link([pi/2,a3,0,3*pi/2,1]);
H2_3.qlim = [0 d2];

H3_4 = Link([0,0,0,0,1,a4]);
H3_4.qlim = [0 d3];

Cartesian = SerialLink([H0_1 H1_2 H2_3 H3_4], 'name', 'Cartesian')
Cartesian.plot([0 0 0 0], 'workspace',[-10 10 -10 0 -10 10])
Cartesian.teach

