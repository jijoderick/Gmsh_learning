
meshsize0 = 0.1;
meshsize1 = 1.0;
//+
Point(1) = {-120, 1.0, 0, meshsize0};
Point(2) = {-110, 1.0, 0, meshsize0};
Point(3) = {0.0, 1.0, 0, meshsize0};
Point(4) = {0.0, 0.0, 0, meshsize0};
Point(5) = {50.0, 0.0, 0, meshsize0};

Point(6) = {-120, 9.0, 0, meshsize0};
Point(7) = {-110, 9.0, 0, meshsize0};
Point(8) = {0.0, 9.0, 0, meshsize0};
Point(10) = {50.0, 9.0, 0, meshsize0};

Point(11) = {-120, 5.0, 0, meshsize1};
Point(12) = {-110, 5.0, 0, meshsize1};
Point(13) = {0.0, 5.0, 0, meshsize1};
Point(14) = {50.0, 5.0, 0, meshsize1};

//+
//Line(1) = {2, 3};
//+
//Line(2) = {3, 1};
//+
//Line(3) = {1, 2};
//+

//+
Line(1) = {1, 2};
//+
Line(2) = {3, 3};
//+
Line(3) = {3, 3};
//+
Line(4) = {2, 3};
//+
Line(5) = {3, 4};
//+
Line(6) = {4, 5};
//+
Line(7) = {5, 14};
//+
Line(8) = {14, 10};
//+
Line(9) = {10, 8};
//+
Line(10) = {8, 7};
//+
Line(11) = {7, 6};
//+
Line(12) = {6, 6};
//+
Line(13) = {6, 11};
//+
Line(14) = {11, 1};
//+
Line(15) = {11, 12};
//+
Line(16) = {12, 7};
//+
Line(17) = {12, 2};
//+
Line(18) = {12, 13};
//+
Line(19) = {13, 8};
//+
Line(20) = {13, 3};
//+
Line(21) = {13, 14};
//+
Curve Loop(1) = {14, 1, -17, -15};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {13, 15, 16, 11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {16, -10, -19, -18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, 4, -20, -18};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {9, -19, 21, 8};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {20, 5, 6, 7, -21};
//+
Plane Surface(6) = {6};
//+
Extrude {0, 0, 1} {
  Surface{4}; Surface{3}; Curve{1}; Surface{1}; Surface{2}; Surface{5}; Curve{6}; Surface{6}; Layers{1}; Recombine;
}

//+
Physical Surface("inlet") = {100, 78};
//+
Physical Surface("sym") = {112, 69};
//+
Physical Surface("noslipwall") = {56, 34, 122, 139, 153};
//+
Physical Surface("outlet") = {134, 161};
//+
Physical Surface("empty") = {113, 2, 3, 65, 43, 4, 91, 1, 166, 6, 135, 5};
//+
Physical Volume("interior") = {4, 3, 1, 2, 6, 5};
