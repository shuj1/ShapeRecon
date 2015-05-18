close all
clear all
clc

srcVertices = [...
2 1 1;...
3 -1 2;...
4 1 -2;...
5 -1 -1;...
];

tgtVertices = [...
4 1 1;...
6 -1 2;...
8 1 -2;...
10 -1 -1;...
];

vertices = [...
2 1 1;...
3 -1 2;...
4 1 -2;...
5 -1 -1;...
-2 1 1;...
-3 -1 2;...
-4 1 -2;...
-5 -1 -1;...
];

symPts1 = [...
2 1 1;...
3 -1 2;...
4 1 -2;...
5 -1 -1;...
];

symPts2 = [...
-2 1 1;...
-3 -1 2;...
-4 1 -2;...
-5 -1 -1;...
];

controlPts = [...
1 1 1;...
1 -1 1;...
1 1 1;...
1 -1 1;...
];
% controlPts = srcVertices;

srcVertices = srcVertices + 1*rand(4,3);
tgtVertices = tgtVertices + 1*rand(4,3);
symPts1 = symPts1 + 1*rand(4,3);
symPts2 = symPts2 + 1*rand(4,3);

plot3(srcVertices(:,1),srcVertices(:,2),srcVertices(:,3),'r-')
[Lcomplete,par]= tpsSymPts(srcVertices, tgtVertices, symPts1, symPts2, controlPts);

deformedVertices = tpsDeform(vertices', controlPts', par);
symPts1_deformed = tpsDeform(symPts1', controlPts', par);
symPts2_deformed = tpsDeform(symPts2', controlPts', par);