// Define characteristic length
lc = 1.0; // Characteristic length for mesh generation

// Define Points
Point(1) = {0, 0, 0, lc};
Point(2) = {20, 0, 0, lc};
Point(3) = {40, 0, 0, lc};
Point(4) = {10, 50, 0, lc};
Point(5) = {30, 50, 0, lc};
Point(6) = {15, 100, 0, lc};
Point(7) = {25, 100, 0, lc};

// Define Lines
Line(1) = {1, 2}; // Base horizontal line
Line(2) = {2, 3}; // Base horizontal line
Line(3) = {1, 4}; // Diagonal from base to middle
Line(4) = {2, 4}; // Diagonal from base to middle
Line(5) = {2, 5}; // Diagonal from base to middle
Line(6) = {3, 5}; // Diagonal from base to middle
Line(7) = {4, 5}; // Middle horizontal line
Line(8) = {4, 6}; // Diagonal from middle to top
Line(9) = {4, 7}; // Diagonal from middle to top
Line(10) = {5, 6}; // Diagonal from middle to top
Line(11) = {5, 7}; // Diagonal from middle to top
Line(12) = {6, 7}; // Top horizontal line

// Define Physical Groups for Boundaries
Physical Line("Base") = {1, 2};
Physical Line("Middle") = {7};
Physical Line("Top") = {12};
Physical Line("Diagonals") = {3, 4, 5, 6, 8, 9, 10, 11};
Physical Point("Base legs") = {1, 3};
Physical Point("Point of application for force") = {6};