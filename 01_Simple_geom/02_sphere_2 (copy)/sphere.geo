// Sphere parameters
r = 1; // radius
lc = 0.1; // Mesh size
Mesh.CharaactersticLengthFromCurvature = 0.05;

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
