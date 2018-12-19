/* graph-color-gen.mod */

/* Given parameters */
param N integer, >0 ;

set V := 1..N ;
set E within {V,V} ;
set W := 1..N ;
set W1 := 1..N-1 ;

param AM{E} ;

/* Decision variables */
var y{W} binary ;
var x{V,W} binary ;

/* Objective function */
minimize NUM_COLOR: sum{i in W} y[i] ;


/* Constraints */
s.t. X{v in V}: 
     sum{i in W} x[v,i]= 1 ;
s.t. XX{v1 in V, v2 in V, i in W: AM[v1,v2]=1}:
     x[v1,i]+x[v2,i] <= y[i] ;
s.t. YY{i in W1}:
     y[i] >= y [i+1] ;
end ;

