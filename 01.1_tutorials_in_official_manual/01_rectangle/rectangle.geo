lc = 1e-2; //mesh scale
Point(1) = {0, 0, 0, lc};
Point(2) = {0.1, 0,0, lc};
Point(3) = {0.1, 0.3, 0, lc};
Point(4) = {0, 0.3, 0, lc};

//Lines joining thte Point
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

// Curve loop for generating the surface
Curve Loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};

// Defining physical groups, which might be later useful for defining boundary conditions.
Physical Curve(5) = {1, 2, 4};
Physical Surface("My surface") = {1};

Mesh 2;
Save "t1.msh";

//Additional options

//Saving in the .unv MeshFormat
Save "t1.unv"

//Controlling the gmsh version
//Mesh.MshFileVersion = '4.15';
