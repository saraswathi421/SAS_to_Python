/* creating the dataset*/
Data A;
Input ID firstName$ lastName$ age;
cards;
1 jen ani 53    
3 ross geller 54
5 matt bla 52
7 lisa kudro 57
9 monica geller 55
;
run;


/* concatenating firstname and lastname */
Data C;
set A;
fullName = cat(firstName,lastName);
run;


/* creating a dataset with combination of negative and positive numbers */
Data D;
Input ID varname$ marks;
cards;
1 A -3
3 B 2.5
5 C -2.5
7 D 2.8
9 E 3
;
run;


/* Find positive values of the  */
data E;
set D;
marks_positive = ABS(marks);
run;



/* finding the minimum age from the data set A */
proc sql;
	select min(age) as max_age from A;
quit;



/* finding the maximum age from the data set A */
proc sql;
	select max(age) as max_age from A;
quit;


/* creating a dataset of one column with integers in it */
DATA MYDATA1;
input x 6.; /*maximum width of the data*/
format x 6.3;
datalines;
10
15
20
23
51
21
PROC PRINT DATA = MYDATA1;
RUN;


/* finding root mean square value of the list of data */

proc sql;
select sqrt(mean(x**2)) as rms_x from MYDATA1;
quit;
