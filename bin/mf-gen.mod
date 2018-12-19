/* mf-gen.mod */

param N integer, >0 ;
param p integer, >0 ;
param q integer, >0 ;

set V := 1..N ;
set E within {V,V} ;

var TRAFFIC >= 0 ;

param capa{E} ;

var x{E} >= 0 ; 
maximize FLOW: TRAFFIC ;
s.t. INTERNAL{i in V: i != p && i != q && p != q }: 
		sum{j in V} (x[i,j]) - sum{j in V}(x[j,i]) = 0 ;
s.t. SOURCE{i in V: i = p && p != q}: 
		sum{j in V} (x[i,j]) - sum{j in V}(x[j,i]) = TRAFFIC ;
s.t. CAPACITY{(i,j) in E}: x[i,j] <= capa[i,j];
end ;
