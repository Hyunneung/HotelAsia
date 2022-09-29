create table REZ (
	REZ_ID 		 NUMBER 	  primary key,
	ROOM_ID 	 NUMBER 	  references ROOM(ROOM_ID),
	MEM_ID 		 VARCHAR2(30) references MEMBER(MEM_ID),
	REZ_CHECKIN  DATE,
	REZ_CHECKOUT DATE,
	REZ_ADULT 	 NUMBER,
	REZ_CHILD 	 NUMBER
)

select * from rez
delete from rez