/* mcf-gen.mod */

param N integer, >0 ;
param p integer, >0 ;
param q integer, >0 ;
param TRAFFIC, >= 0 ;

set V := 1..N ;
set E within {V,V} ;
set EM within E ;
param capa{E} ;
param cost{EM} ;

var x{E} >= 0; 
minimize FLOW_COST: sum{i in V} (sum{j in V} (cost[i,j]*x[i,j] ) ) ;
s.t. INTERNAL{i in V: i != p && i != q && p != q }: 
		sum{j in V} (x[i,j]) - sum{j in V}(x[j,i]) = 0 ;
s.t. SOURCE{i in V: i = p && p != q}: 
		sum{j in V} (x[i,j]) - sum{j in V}(x[j,i]) = TRAFFIC ;
s.t. CAPACITY{(i,j) in E}: x[i,j] <= capa[i,j] ;

end ;
