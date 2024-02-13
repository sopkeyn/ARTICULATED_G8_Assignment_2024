disp('SPHERICAL_MODERN')
syms a1 a2 a3

a1 = 12;
a2 = 6;
a3 = 8;

H0_1 = Link([0,a1,0,pi/2,0,0]);
H0_1.qlim = pi/180*[-90 90];

H1_2 = Link([3*pi/2,0,a2,pi/2,0]);
H1_2.qlim = pi/180*[-90 90];

H2_3 = Link([0,a3,0,0,0]);
H2_3.qlim = pi/180*[-90 90];

SPHERICAL_MODERN = SerialLink([H0_1 H1_2 H2_3], 'name', 'SPHERICAL_MODERN')
SPHERICAL_MODERN.plot([0 0 0 ], 'workspace', [-5 30 -30 30 0 30])
SPHERICAL_MODERN.teach