if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="prueba-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(200,200);
real xmin=-2,xmax=8;
real ymin=-2,ymax=10;

real f(real x) {return 2*((2*x)-1+(x^2)+(4/((x^2)+1)^2))/3;}
real g(real x) {return ((1/2*((x-1)^(2))) - (1/10*((x-2)^(3)))+1)/2;}

path Cf4=graph(f,xmin-3,-0.2376821809755,n=100);
path Cg4=graph(g,-0.2376821809755,xmax-3,n=100);
draw(Cf4,blue);
draw(Cg4,blue);

xlimits(xmin-3,xmax-3,Crop);
ylimits(ymin-4,ymax-4,Crop);

label("min($f\left(x\right)$, $g\left(x\right)$)",(-4.5,5),W,fontsize(12));

draw((5,0)--(-5,0));
