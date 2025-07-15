lc= 0.5; //meshsize
r = 1; //radius
t = 0.2; // thickness
L = 10; //length 

//+
Point(1) = {0.0 , 0.0, 0.0, lc};

Point(2) = {0.0 , r, 0.0, lc};
Point(3) = {0.0 , 0.0, r, lc};
Point(4) = {0.0 , -r, 0.0, lc};
Point(5) = {0.0 , 0.0, -r, lc};

Point(6) = {0.0 , r+t, 0.0, lc};
Point(7) = {0.0 , 0.0, r+t, lc};
Point(8) = {0.0 , -(r+t), 0.0, lc};
Point(9) = {0.0 , 0.0, -(r+t), lc};

//+
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 5};
//+
Circle(3) = {5, 1, 4};
//+
Circle(4) = {4, 1, 3};
//+
Circle(5) = {7, 1, 6};
//+
Circle(6) = {6, 1, 9};
//+
Circle(7) = {9, 1, 8};
//+
Circle(8) = {8, 1, 7};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(1) = {1, 2};

//+
Transfinite Curve {6, 2, 7, 3, 4, 8, 1, 5} = 10 Using Progression 1;
//+
Extrude {10, 0, 0} {
  Surface{1}; Layers{10}; Recombine;
}
