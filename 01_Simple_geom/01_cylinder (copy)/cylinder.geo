// Cylinder parameter
r = 1;
h = 10;
lc = 0.5;

// Define the centers
Point(1) = {0, 0, 0, lc}; // inlet center
Point(2) = {h, 0, 0, lc}; // outlet center
Point(3) = {0, r, 0, lc}; // radius point in the xy plane
Point(4)  = {-r, 0, 0, lc}; // 2nd point for the radius along the xy plane 

Point(5) = {0, -r , 0, lc};

// Create the cylinder using extrusion

Circle(1) = {3,1,4};


Circle(2) = {4,1,5};


Circle(3) = {5, 1, 3 };

// line loop for the inlet face
Line Loop(1) = {1, 2, 3};
Plane Surface(1) = {1};

// Extrude inlet surface along the x direction (flow direction) 
out[] = Extrude{h, 0, 0} {
    Surface{1};
    Layers{10};
    Recombine;
};