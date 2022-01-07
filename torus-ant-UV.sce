
function [x ,y, z]=paramSurface0(u,v)
    //uv=.....uv.x=....param.x
    x=10
    y=20
endfunction

//breadcrumbs : distr, pointillism
function uv=paramSurfaceTorus(u,v)
    //uv=.....uv.x=....param.x
    r=1;
    R=5;
    uv.x=      R*cos(u)
    uv.y=R*sin(r*cos(v))//r*cos(v) ...
    uv.z=r*sin(v)
endfunction


U=linspace(0,720,10);
V=linspace(0,720,10);
disp("lbl0=paramSurfaceTorus(U,V).x=")
paramSurfaceTorus(U,V).x
plot3d(paramSurfaceTorus(U,V).x,paramSurfaceTorus(U,V).y,paramSurfaceTorus(U,V).z);//nappe mesh, cf colorsPlot3dOK.sce
