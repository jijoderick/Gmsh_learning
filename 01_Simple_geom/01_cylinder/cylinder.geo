// Cylinder parameter
r = 1;
h = 10;
lc = 0.5;

// Define the centers
Point(1) = {0, 0, 0, lc};
Point(2) = {0, r, 0, lc};
Point(3) = {0, 0, r, lc};
Point(4) = {0, -r, 0, lc};
Point(5) = {0, 0, -r, lc};

Point(6) = {h, 0, 0, lc};
Point(7) = {h, r, 0, lc};
Point(8) = {h, 0, r, lc};
Point(9) = {h, -r, 0, lc};
Point(10) = {h, 0, -r, lc}; 

//+
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 5};
//+
Circle(3) = {5, 1, 4};
//+
Circle(4) = {4, 1, 3};
//+
Circle(5) = {8, 6, 7};
//+
Circle(6) = {7, 6, 10};
//+
Circle(7) = {10, 6, 9};
//+
Circle(8) = {9, 6, 8};
//+
Line(9) = {3, 8};
//+
//Line(10) = {10, 5};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Line(10) = {2, 7};
//+
Line(11) = {5, 10};
//+
Line(12) = {4, 9};
//+
Curve Loop(3) = {9, 5, -10, -1};
//+
Surface(3) = {3};
//+
Curve Loop(4) = {10, 6, -11, -2};
//+
Surface(4) = {4};
//+
Curve Loop(5) = {11, 7, -12, -3};
//+
Surface(5) = {5};
//+
Curve Loop(6) = {12, 8, -9, -4};
//+
Surface(6) = {6};
//+
Surface Loop(1) = {3, 6, 5, 4, 2, 1};
//+
Volume(1) = {1};
