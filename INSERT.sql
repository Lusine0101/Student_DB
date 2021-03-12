	INSERT INTO public.students(
	"student_ID", student_name, phone, address)
	VALUES ('passport1' , 'avtandil', '+78987654', 'dfgttr5'),
			('passport2', 'armen', '+7623893', 'hjhf'),
			('passport3' , 'lusine', '+78987654', 'dfgttr5'),
	 		('passport4', 'narine', '+7623893', 'hjhf'),
	 		('passport5' , 'henri', '+78987654', 'dfgttr5'),
	 		('passport6', 'vardan', '+7623893', 'hjhf'),
	 		('passport7' , 'parandzem', '+78987654', 'dfgttr5');
			
	 
	INSERT INTO public.courses(
	course_name)
	VALUES ( 'math'),
			('history'),
	 		('music'),
	 		('physics');

	 
	INSERT INTO public.grades(
	"grade" , "course_ID", "student_ID")
	VALUES (33 , 1, 'passport1' ),
			(33 , 3, 'passport2' ),
			(93 , 2, 'passport1' );