// Sphere parameters
radius = 1;
lc = 0.1; // Mesh size

// Define points for the sphere approximation
Point(1) = {0, 0, 0, lc}; // Center of the sphere
Point(2) = {radius, 0, 0, lc}; // Right point
Point(3) = {-radius, 0, 0, lc}; // Left point
Point(4) = {0, radius, 0, lc}; // Top point
Point(5) = {0, -radius, 0, lc}; // Bottom point
Point(6) = {0, 0, radius, lc}; // Front point
Point(7) = {0, 0, -radius, lc}; // Back point

// Create lines connecting points to form triangles for surface
Line(1) = {1, 2}; 
Line(2) = {1, 3};
Line(3) = {1, 4};
Line(4) = {1, 5};
Line(5) = {1, 6};
Line(6) = {1, 7};

// Define surface using Line Loops (this will be an approximation)
Line Loop(1) = {1, 2, 3, 4, 5, 6};
Surface(1) = {1};

// Define a volume (which will be a polyhedral approximation of the sphere)
Volume(1) = {1};
