# Prolog Assignment
Completed in partial fulfillment of  CS F214 Logic in Computer Science course

> Group members: 
> 1. Aman Agrawal(2014B3A7748P)
> 2. Amitojdeep Singh(2014B3A7615P)
> 3. Siddharth Nagpal(2014B3A7743P)

/*DOCUMENTATION FOR QUESTION1*/

Note: Enter all algebraic variables like x,y,p,q etc is lower case(Not X,Y,P,Q).

1.1. ALGEBRAIC SIMPLIFICATION: first enter 'simplify.' to begin the operation.Uses rational number simplification when required.

1.1.1.
1 ?- simplify.

Enter an algebraic expression, or "exit" (x*(y/y)-x)*y.

Simplification is  0

1.1.2
Enter an algebraic expression, or "exit" |: 5+4+x.

Simplification is  9+x

1.1.3.
Enter an algebraic expression, or "exit" |: 14/8 + x.

Simplification is  7/4+x

1.2 COMPARE ALGEBRAIC EXPRESSIONS: first enter 'compare.' to begin operation.

1.2.1
1 ?- compare.
Enter first expression, or "exit" 5+4+x.

Enter second algebraic expression|: 2+7+x.
Both expressions are equal

1.2.2.
Enter first expression, or "exit" (X*(Y/Y)-X)*X.

Enter second algebraic expression|: X-X.
Both expressions are equal

1.3. RATIONAL NUMBER NORMALIZATION: first enter 'rational.' to use as a standalone operation. More effective as standalone than calling through simplify due to precendence & commutativity reasons. 4 test cases are shown here.
Note: ENCLOSE RATIONAL NUMBERS IN PARENTHESIS WHILE MULTIPLYING(*).

1 ?- rational.

Enter a rational number, or "exit" 14/8.
Rational number in normal form is  7/4

Enter a rational number, or "exit" |: 15/7-1/7.
Rational number in normal form is  2/1

Enter a rational number, or "exit" |: (14/8)*(2/7).
Rational number in normal form is  1/2

Enter a rational number, or "exit" |: 9/5+2/5.
Rational number in normal form is  11/5

Enter a rational number, or "exit" |: exit.

true.


/*DOCUMENTATION FOR QUESTION2*/
Some sample inputs and outputs are shown below. We have given example for one student structure and a few courses are also encoded.

1 ?- overall_incharge_of_process.
Dean ARC

2 ?- get_student_dues('2014A7PS001P',Y).
Y = 0.

3 ?- type_of_registration('2014A7PS001P',Y).
Correct to: "type_of_registeration('2014A7PS001P',Y)"? 
Please answer 'y' or 'n'? yes
Amended Registeration
Y = student_altered.

4 ?- permitted_to_register('2014A7PS001P').
Gradesheet withheld, student cannot register

5 ?- can_depart('2014A7PS001P').
Can depart from normal sem pattern, justification is given

6 ?- get_prereq('MATHEMATICS III',Y).
Y = [['MATHEMATICS II']] 

7 ?- register_in_course('2014A7PS001P').
In which course do you want to register?'MATHEMATICS II'
|: .
You can register for this course


8 ?- higher_degree_course('2014A7PS001P').
Which higher degree course you want to do?'SOFTWARE SYSTEMS'.
You cannot do a higher degree course

9 ?-  eligibility_nextsem('2014A7PS001P').
You will be provided with a modified semester wise pattern

10 ?- second_degree_course('2014A7PS001P').
Cannot do a second degree course, not done DERIVATIVES AND RISK MANAGEMENT

11 ?- ps_I('2014A7PS001P').
You are not eligible for PS-I

12 ?- ps_II('2014A7PS001P').
You are not eligible for PS-II

13 ?- can_student_graduate('2014A7PS001P').
Are u pursuing a thesis_9 or thesis_16 or PS'PS'.
You are eligible to graduate.

14 ?- timetable_conflict('2014A7PS001P').
There is conflict in hour no 6.
