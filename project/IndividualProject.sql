create table course (
   course_id int primary key auto_increment not null ,
   title  varchar(45) not null,
   stream varchar(45) not null,
   type varchar(45) not null,
   start_date date not null,
   end_date date not null,
   FOREIGN KEY (student_id)REFERENCES student (student_id)
);

create table trainer (
   trainer_id int primary key auto_increment not null ,
   firstName  varchar(45) not null,
   lastName varchar(45) not null,
   subject varchar(45) not null,
   FOREIGN KEY (student_id)REFERENCES student (student_id)
);

create table student (
   student_id int primary key auto_increment not null ,
   firstName  varchar(45) not null,
   lastName varchar(45) not null,
   dateOfBirth date not null,
   tuituonFees varchar(10) not null
);

create table assigment (
   assigment_id int primary key auto_increment not null ,
   title  varchar(45) not null,
   description varchar(100) not null,
   subDateTime datetime not null,
   oralMark tinyint not null,
   totalMark tinyint not null,
   FOREIGN KEY (student_id)REFERENCES student (student_id),
   FOREIGN KEY (course_id)REFERENCES course (course_id)
);

insert into student (firstName,lastName,dateOfBirth,tuituonfees) values ("Dimitris","Dimarakis","1990-07-12","2500$");
insert into student (firstName,lastName,dateOfBirth,tuituonfees) values ("Andreas","Koutroulis","1987-03-12","2500$");
insert into student (firstName,lastName,dateOfBirth,tuituonfees) values ("Kyriakos","Karras","1995-12-12","2500$");
insert into student (firstName,lastName,dateOfBirth,tuituonfees) values ("Mixalis","Vakalos","1992-08-12","2500$");
insert into student (firstName,lastName,dateOfBirth,tuituonfees) values ("Dimitris","Maurokefalos","1990-09-12","2500$");


insert into trainer (firstName,lastName,subject,student_id) values ("Vasilis","Tzelepopoulos","Javascript",1);
insert into trainer (firstName,lastName,subject,student_id) values ("Vasilis","Tzelepopoulos","Javascript",2);
insert into trainer (firstName,lastName,subject,student_id) values ("George","Pasparakis","C#",3);
insert into trainer (firstName,lastName,subject,student_id) values ("George","Pasparakis","C#",4);
insert into trainer (firstName,lastName,subject,student_id) values ("Elena","Kapetanaki","Html-Css",5);
insert into trainer (firstName,lastName,subject,student_id) values ("Elena","Kapetanaki","Html-Css",6);
insert into trainer (firstName,lastName,subject,student_id) values ("Elena","Kapetanaki","Html-Css",7);

insert into course (title,stream, type, start_date, end_date,student_id) values ("Java","Javascript",'Part-Time',"2020-02-05","2020-02-15",2);
insert into course (title,stream, type, start_date, end_date,student_id) values ("Java","Javascript",'Part-Time',"2020-02-05","2020-02-15",3);
insert into course (title,stream, type, start_date, end_date,student_id) values ("C#","Javascript",'Part-Time',"2020-02-05","2020-02-15",4);
insert into course (title,stream, type, start_date, end_date,student_id) values ("Python","Javascript",'Part-Time',"2020-02-05","2020-02-15",5);
insert into course (title,stream, type, start_date, end_date,student_id) values ("Python","Javascript",'Part-Time',"2020-02-05","2020-02-15",6);
insert into course (title,stream, type, start_date, end_date,student_id) values ("Javascript","Javascript",'Part-Time',"2020-02-05","2020-02-15",7);

insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Javascript","Front-End","2020-02-15 00:00:00",15,55,1,1);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Java","Back-End","2020-02-15 00:00:00",20,50,2,2);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Java","Back-End","2020-02-15 00:00:00",20,50,3,3);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("C#","Back-End","2020-02-15 00:00:00",15,58,4,4);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Python","Back-End","2020-02-15 00:00:00",18,60,5,5);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Python","Back-End","2020-02-15 00:00:00",5,30,6,6);
insert into assigment (title,description, subDateTime, oralMark, totalMark,student_id,course_id) values ("Javascript","Front-End","2020-02-15 00:00:00",20,40,7,7);
