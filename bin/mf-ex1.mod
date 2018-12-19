/* mf-ex1.mod */

/* Decision variables */
var v ;
var x12 <=14, >=0 ;
var x13 <=15, >=0 ;
var x23 <=4, >=0 ;
var x24 <=10, >=0 ;
var x34 <=18, >=0 ;

/* Objective function */
maximize TRAFFIC: v ;

/* Constraints */
s.t. NODE1: x12 + x13 = v ;
s.t. NODE2: x12 - x23 - x24 = 0 ;
s.t. NODE3: x13 + x23 - x34 = 0 ;

end ;

