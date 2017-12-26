course(
        name('DATA STRUCTURES AND ALGORITHMS'),
        [['CS F222','DISCR STRUC FOR COMP SCI'],
         ['MATH F112','MATHEMATICS II']],
        available_next_sem(true),
        hour(3),
        department(computer_science),
        requirement(first_degree),
        units(4)
        ).

course(
        name('OBJECT ORIENTED PROG'),
        [['CS F111','COMPUTER PROGRAMMING']],
        available_next_sem(true),
        hour(6),
        department(computer_science),
        requirement(first_degree),
        units(4)
        ).

course(
        name('COMPUTER ARCHITECTURE'),
        [['CS F215','DIGITAL DESIGN'],
         ['CS F223','MICROPROCESSORS AND INTERFACING']],
        available_next_sem(true),
        hour(6),
        department(computer_science),
        requirement(first_degree),
        units(4)
        ).

course(
        name('DERIVATIVES AND RISK MANAGEMENT'),
        [['ECO F113','FUNDAMENTALS OF FINANCIAL ACCOUNTING']],
        available_next_sem(true),
        hour(4),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('FUNDAMENTALS OF FINANCIAL ACCOUNTING'),
        [],
        available_next_sem(true),
        hour(7),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('MATHEMATICS III'),
        [['MATHEMATICS II']],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('GENERAL BIOLOGY'),
        [[]],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('GENERAL CHEMISTRY'),
        [['MATHEMATICS II']],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('COMPUTER PROGRAMMING'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('MATHEMATICS I'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('MATHEMATICS II'),
        [['MATHEMATICS I']],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('DIGITAL DESIGN'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('DISCR STRUC FOR COMP SCI'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('LOGIC IN COMPUTER SCI'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('MICROPROCESSORS AND INTERFACING'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(first_degree),
        units(3)
        ).

course(
        name('SOFTWARE SYSTEMS'),
        [],
        available_next_sem(false),
        hour(8),
        department(economics),
        requirement(higher_degree),
        units(3)
        ).


student(
        kaldias,
        sharma,
        id('2014A7PS001P'),
        type_of_degree(first_degree,dual_degree),
        [['BIO F111','GENERAL BIOLOGY','A'],
        ['CHEM F111','GENERAL CHEMISTRY','A-'],
        ['CS F111','COMPUTER PROGRAMMING','B-'],
        ['CS F111','COMPUTER PROGRAMMING','B-'],
        ['MATH F111','MATHEMATICS I','A'],
        ['MATH F112','MATHEMATICS II','A'],
        ['CS F213','OBJECT ORIENTED PROG','A-'],
        ['CS F215','DIGITAL DESIGN','B'],
        ['CS F222','DISCR STRUC FOR COMP SCI','A'],
        ['CS F214','LOGIC IN COMPUTER SCI','C']],
        dues(0),
        paidnextsemsterfees,
        registered_properly,
        registeration_date(2011,08,08),
        altered(student_altered),
        gradesheet(withheld),
        next_semster(debarred),
        depart_justification(given),
        nextsem_requirement(['FUNDAMENTALS OF FINANCIAL ACCOUNTING','COMPUTER ARCHITECTURE','MATHEMATICS III']),
        all_courses(['GENERAL BIOLOGY','MATHEMATICS II','FUNDAMENTALS OF FINANCIAL ACCOUNTING','MICROPROCESSORS AND INTERFACING','MATHEMATICS III','GENERAL CHEMISTRY','COMPUTER PROGRAMMING',
                'MATHEMATICS I','OBJECT ORIENTED PROG', 'DIGITAL DESIGN', 'DISCR STRUC FOR COMP SCI','LOGIC IN COMPUTER SCI','COMPUTER ARCHITECTURE','DERIVATIVES AND RISK MANAGEMENT',
                'FUNDAMENTALS OF FINANCIAL ACCOUNTING']),
        required_tillnow(['GENERAL BIOLOGY','GENERAL CHEMISTRY','COMPUTER PROGRAMMING','MATHEMATICS I','MATHEMATICS II','OBJECT ORIENTED PROG','DIGITAL DESIGN','LOGIC IN COMPUTER SCI',
                'DISCR STRUC FOR COMP SCI','DERIVATIVES AND RISK MANAGEMENT','FUNDAMENTALS OF FINANCIAL ACCOUNTING']),
        current_semester(5),
        first_degree(economics,['FUNDAMENTALS OF FINANCIAL ACCOUNTING','DERIVATIVES AND RISK MANAGEMENT','MACROECONOMICS']),
        second_degree(computer_science,['OBJECT ORIENTED PROG', 'DIGITAL DESIGN', 'DISCR STRUC FOR COMP SCI','LOGIC IN COMPUTER SCI','OPERATING SYSTEM','COMPUTER ARCHITECTURE','MICROPROCESSORS AND INTERFACING'])
        ).



overall_incharge_of_process:-
        write('Dean ARC').
on_campus_approval:-
        write('Dean ARC').
off_campus_approval:-
        write('Dean WILP').

guide_Phd_Thesis_Seminar_Dissertation:-
        write('Dean Academic Research').
guide_Practice_School:-
        write('Dean PS').
guide_TeachingPractice_LectureSeries:-
        write('Dean ID').

assist_Dean_ARC:-
        write('Team of Registration Advisors').
appoints_registration_advisors:-
        write('Dean ARC').

get_student_dues(X,Y):-
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                _,
                dues(Y),
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _
        ).

paid_next_semster_fees(X):-
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                _,
                _,
                paidnextsemsterfees,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _
        ).


type_of_registeration(X,Y):-
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                _,
                _,
                _,
                _,
                _,
                altered(Y),
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _
        ),
        Y=not_altered->
                write('Orignal Registeration'),nl;
        Y=student_altered->
                write('Amended Registeration'),nl;
        Y=other_events->
                write('Revised Registeration'),nl.


get_gradesheet(X,W,Z,V,S,T,U):-
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                Z,
                _,
                _,
                _,
                _,
                _,
                gradesheet(W),
                next_semster(V),
                _,
                nextsem_requirement(S),
                all_courses(T),
                required_tillnow(U),
                _,
                _,
                _
        ).


permitted_to_register(X):-
        get_student_dues(X,Y),
        get_gradesheet(X,W,Z,V,_,_,_),
        Y>0->
                write('Outstanding dues, student cannot register');
        not(paid_next_semster_fees(X))->
                write('Not paid next semester fees, student cannot register');
        W=withheld->
                write('Gradesheet withheld, student cannot register');
        member([_,I],Z)->
                write('Incomplete gradesheet, not permitted to register');
        V=debarred->
                write('Debarred from next semester');
        V=stay_away->
                write('Asked to stay away').

registeration_date(2011,08,01).

registeration_dates:-
        registeration_date(X),
        write("Registeration will be at the beginning of semester on "),
        write(X).

where_to_register(X):-
        write("The student has to register at the location where he/she is pursuing the semester").

who_will_register:-
        write("The student has to register in person").

can_use_facilities(X):-
        registered_properly(X).

can_attend_classes(X):-
        registered_properly(X).

concurrence_of_dean(X):-
        registeration_date(A,B,C),
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                _,
                _,
                _,
                _,
                registeration_date(D,E,F),
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _

        ),
        W is F-C,
        W>=7 ->
                write("Concurrence of Dean is required");
                write("Concurrence of Dean is not required").

attention_to_conditions(X):-
        type_of_registeration(X,Y),
        Y=not_altered->
                write("Refer to 3.09-3.25");
        Y=student_altered->
                write("Refer to 3.26");
        Y=other_events->
                write("Refer to 3.27").

dean_will_act_for_GA(X):-
        get_gradesheet(X,W,Z,V),
        member([_,'GA'],W)->
                write('Grade Awaited, Student will act according to 4.16');
                write('No need to refer to 4.16').

can_depart(X):-
        student(
                FNAME,
                LNAME,
                id(X),
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                _,
                depart_justification(Y),
                _,
                _,
                _,
                _,
                _,
                _

        ),
        Y=given->
                write("Can depart from normal sem pattern, justification is given");
                write("Cannot depart from normal sem pattern, justification is not given").

get_prereq(Course,Prereq):-
        course(
                name(Course),
                Prereq,
                _,
                _,
		_,
		_,
		_
        ).

check_for_prereq([H|T],Z):-
        [X,Y]=H,
        (member([X,Y,_],Z)->
                check_for_prereq(T,Z);
                write("You cannot register for this course, not done "),
                write(H));
        write("You can register for this course").

register_in_course(Id):-
        write('In which course do you want to register?'),
        read(Course),
        get_gradesheet(Id,_,Z,_,_,_,_),
        get_prereq(Course,Prereq),
        check_for_prereq(Prereq,Z).

eligibility_PSI([H|T],Y):-
        (member([_,H,_],Y)->
                eligibility_PSI(T,Y);
                write("You are not eligible for PS-I"));
        write("You can register for PS-I").

ps_I(X):-
        get_gradesheet(X,W,Z,V,S,T,U),
        eligibility_PSI(U,Z).

eligibility_PSII([H|T],Y):-
        (member([_,H,_],Y)->
                eligibility_PSII(T,Y);
                write("You are not eligible for PS-II"));
        write("You can register for PS-II").

ps_II(X):-
        get_gradesheet(X,W,Z,V,S,T,U),
        eligibility_PSII(T,Z).



nextsem([H|T],Z,F):-
        (member([_,H,G],Z)->
                ((G=='NC')->
                        NewF is F+1,
                        nextsem(T,Z,NewF);
                        NewF is F,
                        nextsem(T,Z,NewF));
                NewF is F+1,
                nextsem(T,Z,NewF));
        F==0->
                write("You can register normally for the next semester");
        F>=2->
                write("You cannot register for the next semester");
                write("You will be provided with a modified semester wise pattern").


eligibility_nextsem(X):-
        get_gradesheet(X,W,Z,V,S,T,U),
        nextsem(U,Z,0).

special_vigilance:-
        write("Executed By All").

info_course(Y,Prereq,B,T,D,R,U):-
        course(
                name(Y),
                Prereq,
                available_next_sem(B),
                hour(T),
                department(D),
                requirement(R),
                units(U)
                ).

info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq):-
        student(
        Fname,
        Lname,
        id(X),
        type_of_degree(T,S),
        Trans,
        _,
        _,
        _,
        _,
        _,
        gradesheet(W),
        _,
        _,
        nextsem_requirement(Nextsem),
        all_courses(Req),
        required_tillnow(Reqnow),
        current_semester(Sem),
        first_degree(FD,FDreq),
        second_degree(SD,SDreq)
        ).

eligibility_higherdegree([H|T],Y):-
        (member([_,H,_],Y)->
                eligibility_higherdegree(T,Y);
                write("You cannot do a higher degree course"));
        write("You can do a higher degree course").

higher_degree_course(X):-
        write("Which higher degree course you want to do?"),
        read(Y),
        info_course(Y,Prereq,B,_,D,R,_),
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq),
        (S==dual_degree->
                (D==FD->
                        (Sem>=5->
                                eligibility_higherdegree(FDreq,Trans);
                                write("You can do courses only after 2nd Year"));
                (D==SD->
                        (Sem>=7->
                                eligibility_higherdegree(SDreq,Trans);
                                write("You can do courses only after 3rd Year")))));
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq),
        S==single_degree->
                (Sem>=5->
                        eligibility_higherdegree(Reqnow,Trans);
                        write("You can do courses only after 2nd Year")).

check_for_repeat((H|T)):-
        write(H),
        (member(H,T)->
                check_for_repeat(T);
                format("There is a conflict in hour no. ~w",[H]));
        write("There is no conflict in the timetable").


checkforconflict([H|T],Req,F):-
        (member(H,Req)->
                info_course(H,Prereq,B,K,D,R,_),
                append(F,[K],NewF),
                T2=T,
                (T2 \== []->
                        checkforconflict(T2,Req,NewF));
                check_for_repeat(NewF)).


timetable_conflict(X):-
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq),
        checkforconflict(Nextsem,Req,[]).

check_nc(Z):-
        (member([_,_,'NC'],Z)->
                        write("Have NC, Your case will be examined for appropriate actions")).

appropriate_actions(X):-
        get_gradesheet(X,W,Z,V,S,T,U),
        check_nc(Z).

check_repeat_course([H|T]):-
        [A,B,C]=H,
        member([_,B,_],T)->
                format('You have repeated course ~w',[B]);
                check_repeat_course(T).

appropriate_actions(X):-
        get_gradesheet(X,W,Z,V,S,T,U),
        check_repeat_course(Z).

check_course_avail([H|T]):-
        info_course(H,Prereq,B,T1,D,R,_),
        (B==false->
                format('Sorry but ~w has ceased to been offered. ID will asign another academically similar course to you.',[H]);
                check_course_avail(T));
        write('All courses are available').

course_ceased_to_offer(X):-
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq,_),
        check_course_avail(Nextsem).

second_degree_allowed([H|T],Z):-
        (member([_,H,_],Z)->
                second_degree_allowed(T,Z);
                format('Cannot do a second degree course, not done ~w',[H]));
        write("You can do a second degree course").

second_degree_course(X):-
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq),
        Sem>=5->
                second_degree_allowed(Reqnow,Trans);
                write('You cannot do a second degree course before 3rd Year').

register_in_Thesis:-
        write("You cannot do any other course or refer to 6.17").

get_done_units([H|T],Z,F):-
        [A,Q,C]=H,
        member(H,Z)->
                info_course(Q,Prereq,B,T1,D,R,U),
                integer(U),
                NewF is F+U,
                get_done_units(T,Z,NewF),!.


get_units([H|T],Z,F):-
        member(H,Z)->
                info_course(H,Prereq,B,T1,D,R,U),
                integer(U),
                NewF is F+U,
                get_units(T,Z,NewF),!.


can_student_graduate(X):-
        info_student(Fname,Lname,X,T,S,Trans,W,Nextsem,Req,Reqnow,Sem,FD,FDreq,SD,SDreq),
        write("Are u pursuing a thesis_9 or thesis_16 or PS"),
        read(Y),
        Df is 0,
        F is 0,
        get_done_units(Trans,Trans,Df),
        get_units(Req,Req,F),
        P is Df-F,
        write(P),
        S==single_degree->
                (Y=='thesis_9'->
                        (P>=6->
                                write('You are eligible to graduate');
                                write('You are not eligible to graduate'));
                (Y=='thesis_16';Y=='PS'->
                        write('You are eligible to graduate')));
        S==dual_degree->
                (Y=='thesis_9'->
                        write('Are you pursuing thesis for both degrees?'),
                        read(Z),
                        (Z=='No'->
                                (P>=6->
                                        write('You are eligible to graduate');
                                        write('You are not eligible to graduate'));
                                write("You can graduate if the total number and units of discipline electives from the two programs and those of PSI exceed 9 courses and 27 units respectively")));
                (Y=='thesis_16';Y=='PS'->
                        write('You are eligible to graduate')).