// Jacket Wind Turbine Frame Geometry

// Parameters
H_Jacket = 70;          // Height of the jacket [m]
Base_Jacket = 30.23;    // Base width of the jacket [m]
Top_Jacket = 16.13;     // Top width of the jacket [m]
H_Pile = 100;           // Height of the pole [m]

// Define Points
Point(1) = {-(Base_Jacket*4+Top_Jacket*0)/4/2, -4*H_Jacket/4, 0, 1.0}; // Node 1
Point(2) = { (Base_Jacket*4+Top_Jacket*0)/4/2, -4*H_Jacket/4, 0, 1.0}; // Node 2
Point(3) = {-(Base_Jacket*3+Top_Jacket*1)/4/2, -3*H_Jacket/4, 0, 1.0}; // Node 3
Point(4) = { (Base_Jacket*3+Top_Jacket*1)/4/2, -3*H_Jacket/4, 0, 1.0}; // Node 4
Point(5) = {-(Base_Jacket*2+Top_Jacket*2)/4/2, -2*H_Jacket/4, 0, 1.0}; // Node 5
Point(6) = { (Base_Jacket*2+Top_Jacket*2)/4/2, -2*H_Jacket/4, 0, 1.0}; // Node 6
Point(7) = {-(Base_Jacket*1+Top_Jacket*3)/4/2, -1*H_Jacket/4, 0, 1.0}; // Node 7
Point(8) = { (Base_Jacket*1+Top_Jacket*3)/4/2, -1*H_Jacket/4, 0, 1.0}; // Node 8
Point(9) = {-(Base_Jacket*0+Top_Jacket*4)/4/2,  0*H_Jacket/4, 0, 1.0}; // Node 9
Point(10) = {0,  0*H_Jacket/4, 0, 1.0};                                 // Node 10
Point(11) = {(Base_Jacket*0+Top_Jacket*4)/4/2,  0*H_Jacket/4, 0, 1.0}; // Node 11
Point(12) = {0, 10, 0, 1.0};                                           // Node 12
Point(13) = {0, 20, 0, 1.0};                                           // Node 13
Point(14) = {0, 30, 0, 1.0};                                           // Node 14
Point(15) = {0, 40, 0, 1.0};                                           // Node 15
Point(16) = {0, 50, 0, 1.0};                                           // Node 16
Point(17) = {0, 60, 0, 1.0};                                           // Node 17
Point(18) = {0, 70, 0, 1.0};                                           // Node 18
Point(19) = {0, 80, 0, 1.0};                                           // Node 19
Point(20) = {0, 90, 0, 1.0};                                           // Node 20
Point(21) = {0, 100, 0, 1.0};                                          // Node 21

// Define Elements
Line(1) = {1, 3};
Line(2) = {1, 4};
Line(3) = {2, 4};
Line(4) = {3, 4};
Line(5) = {3, 5};
Line(6) = {5, 4};
Line(7) = {4, 6};
Line(8) = {5, 6};
Line(9) = {5, 7};
Line(10) = {5, 8};
Line(11) = {6, 8};
Line(12) = {7, 8};
Line(13) = {7, 9};
Line(14) = {9, 8};
Line(15) = {8, 11};
Line(16) = {9, 10};
Line(17) = {10, 11};
Line(18) = {10, 12};
Line(19) = {12, 13};
Line(20) = {13, 14};
Line(21) = {14, 15};
Line(22) = {15, 16};
Line(23) = {16, 17};
Line(24) = {17, 18};
Line(25) = {18, 19};
Line(26) = {19, 20};
Line(27) = {20, 21};

// Physical Groups
Physical Point("Supports") = {1, 2};
Physical Point("Nacelle") = {21};
Physical Point("Bottom Pile") = {12};
Physical Line("Jacket Members") = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};
Physical Line("Pile Members") = {18, 19, 20, 21, 22, 23, 24, 25, 26, 27};
