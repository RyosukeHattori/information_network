/* mcf-ex1.mod */

/* Decision variables */
var x12 <=5, >=0 ;
var x13 <=13, >=0 ;
var x23 <=4, >=0 ;
var x24 <=9, >=0 ;
var x34 <=10, >=0 ;

/* Objective function */
minimize COSTFLOW: 3*x12 + 8*x13 + 2*x23 + 12*x24 + 6*x34 ;

/* Constraints */
s.t. NODE1: x12 + x13 = 12 ;
s.t. NODE2: x12 - x23 - x24 = 0 ;
s.t. NODE3: x13 + x23 - x34 = 0 ;

end ;

