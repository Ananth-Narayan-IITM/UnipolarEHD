//Sets the mesh element order
Mesh.ElementOrder = 2;
//Sets the mesh version for exporting the mesh
Mesh.MshFileVersion = 2.2;
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0.614, 0, 0, 1.0};
//+
Point(3) = {0.614, 1, 0, 1.0};
//+
Point(4) = {0, 1, 0, 1.0};
//+
Line(1) = {4, 3};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {1, 4};
//+
Curve Loop(1) = {4, 1, -3, -2};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {4, 3} = 41 Using Progression 1;
//+
Transfinite Curve {1, 2} = 41 Using Progression 1;
//+
Transfinite Surface {1};
//+
Recombine Surface {1};
//+
Physical Curve("left") = {4};
//+
Physical Curve("top") = {1};
//+
Physical Curve("bottom") = {2};
//+
Physical Curve("right") = {3};
//+
Physical Surface("fluid") = {1};
