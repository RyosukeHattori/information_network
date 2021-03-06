/* djp-gen.mod */

/* Given parameters */
param K integer, >0 ;
param N integer, >0 ;
param p integer, >0 ;
param q integer, >0 ;

set V := 1..N ;
set E within {V,V} ;
set M := 1..K ;

param cost{E};

/* Decision variables */
/* var x{E,M} >=0, <=1, integer ; */
var x{E,M} binary ;

/* Objective function */
minimize PATH_COST: sum{k in M} sum{i in V} (sum{j in V}
			 (cost[i,j]*x[i,j,k])) ;

/* Constraints */
s.t. SOURCE{i in V, k in M: i = p && p != q}: 
     sum{j in V} (x[i,j,k]) - sum{j in V}(x[j,i,k]) = 1 ;
s.t. INTERNAL{i in V, k in M: i != p && i != q && p != q }: 
     sum{j in V} (x[i,j,k]) - sum{j in V}(x[j,i,k]) = 0 ;
s.t. DISJOINT{i in V, j in V, k1 in M, k2 in M: k2 !=k1}:
     x[i,j,k1] + x[i,j,k2] <= 1 ;
end;

