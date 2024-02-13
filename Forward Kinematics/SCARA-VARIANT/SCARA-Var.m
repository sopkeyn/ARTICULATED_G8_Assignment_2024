disp('SCARA_VARIANT')
syms a1 a2 a3 a4

a1 = 5;
a2 = 5;
a3 = 6;
a4 = 5;

H0_1 = Link([0,0,a2,0,1,a1]);
H0_1.qlim = [0 5];

H1_2 = Link([0,0,a3,0,0]);
H1_2.qlim = pi/180*[-90 90];

H2_3 = Link([0,0,a4,0,0]);
H2_3.qlim = pi/180*[-90 90];

SCARA_VARIANT = SerialLink([H0_1 H1_2 H2_3], 'name', 'SCARA_VARIANT')
SCARA_VARIANT.plot([0 0 0], 'workspace', [-5 30 -30 30 0 30])
SCARA_VARIANT.teach
