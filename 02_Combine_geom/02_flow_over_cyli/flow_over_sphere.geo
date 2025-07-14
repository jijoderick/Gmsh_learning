// Sphere parameters
r = 1; // radius
lc = 0.1; // Mesh size for sphere
d = 0.5; // Mesh size for domain
l_xi=-15; l_xo = 30;
l_yi=-15; l_yo = 15;
l_zi=-15; l_zo = 15;
//Mesh.CharaactersticLengthFromCurvature = 0.05;

// Define points for the sphere approximation
Point(1) = {0, 0, 0, lc}; // Center of the sphere
Point(2) = {-r, 0, 0, lc}; 
Point(3) = {r, 0, 0, lc};
Point(4) = {0, -r, 0, lc};
Point(5) = {0, r, 0, lc};
Point(6) = {0, 0, -r, lc};
Point(7) = {0, 0, r, lc};

//+
Circle(1) = {3, 1, 5};
//+
Circle(2) = {5, 1, 2};
//+
Circle(3) = {2, 1, 4};
//+
Circle(4) = {4, 1, 3};
//+
Circle(5) = {7, 1, 5};
//+
Circle(6) = {5, 1, 6};
//+
Circle(7) = {6, 1, 4};
//+
Circle(8) = {4, 1, 7};
//+
Circle(9) = {7, 1, 3};
//+
Circle(10) = {3, 1, 6};
//+
Circle(11) = {6, 1, 2};
//+
Circle(12) = {2, 1, 7};

//+
Curve Loop(1) = {5, -1, -9};
//+
Surface(1) = {1};
//+
Curve Loop(2) = {1, 6, -10};
//+
Surface(2) = {2};
//+
Curve Loop(3) = {6, 11, -2};
//+
Surface(3) = {3};
//+
Curve Loop(4) = {2, 12, 5};
//+
Surface(4) = {4};
//+
Curve Loop(5) = {8, 9, -4};
//+
Surface(5) = {5};
//+
Curve Loop(6) = {4, 10, 7};
//+
Surface(6) = {6};
//+
Curve Loop(7) = {7, -3, -11};
//+
Surface(7) = {7};
//+
Curve Loop(8) = {12, -8, -3};
//+
Surface(8) = {8};
//+
Physical Surface("sphere") = {1, 2, 3, 4, 5, 6, 7, 8};
//+
Point(8) = {l_xi, l_yi, l_zi, d};
Point(9) = {l_xi, l_yo, l_zi, d};
Point(10) = {l_xi, l_yi, l_zo, d};
Point(11) = {l_xi, l_yo, l_zo, d};

Point(12) = {l_xo, l_yi, l_zi, d};
Point(13) = {l_xo, l_yo, l_zi, d};
Point(14) = {l_xo, l_yi, l_zo, d};
Point(15) = {l_xo, l_yo, l_zo, d};

//+
Line(13) = {10, 11};
//+
Line(14) = {11, 9};
//+
Line(15) = {9, 8};
//+
Line(16) = {8, 10};
//+
Line(17) = {10, 14};
//+
Line(18) = {14, 15};
//+
Line(19) = {15, 11};
//+
Line(20) = {14, 12};
//+
Line(21) = {12, 13};
//+
Line(22) = {13, 15};
//+
Line(23) = {13, 9};
//+
Line(24) = {12, 8};
//+
Curve Loop(9) = {13, -19, -18, -17};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {18, -22, -21, -20};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {21, 23, 15, -24};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {15, 16, 13, 14};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {19, 14, -23, 22};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {17, 20, 24, 16};
//+
Plane Surface(14) = {14};
//+
Physical Surface("inlet") = {12};
//+
Physical Surface("wall") = {13, 11, 14, 9};
//+
Physical Surface("oulet") = {10};

//+
Surface Loop(1) = {12, 11, 10, 9, 13, 14};
//+
Surface Loop(2) = {4, 3, 2, 1, 5, 8, 7, 6};
//+
Volume(1) = {1, 2};
