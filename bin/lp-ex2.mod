/* lp-ex2.mod */

var y1 >= 0 ;
var y2 >= 0 ;

minimize w: 80*y1 + 1200*y2 ;
s.t. st1: y1 + 30*y2 >= 5 ;
s.t. st2: y1 + 10*y2 >= 3 ; 

end ;
