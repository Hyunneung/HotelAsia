drop table question_board;
create table question_board(
  QUESTIONS_NUM        NUMBER         PRIMARY KEY,
  MEM_ID               VARCHAR2(30)   REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE,
  
  QUESTIONS_CATEGORY   VARCHAR2(30)   NOT NULL,
  QUESTIONS_PASS       NUMBER         NOT NULL,
  
  QUESTIONS_SUBJECT    VARCHAR2(100)  NOT NULL,
  QUESTIONS_CONTENT    VARCHAR2(1000) NOT NULL,
  
  QUESTIONS_ANSWER     VARCHAR2(1000),
  QUESTIONS_ORIGINAL   VARCHAR2(300),
  
  QUESTIONS_FILE       VARCHAR2(300),
  QUESTIONS_READCOUNT  NUMBER,
  QUESTIONS_DATE       DATE DEFAULT SYSDATE NOT NULL
);

select * from question_board;
create sequence QUESTION_SEQ start with 1 increment by 1;



INSERT INTO QUESTION_BOARD VALUES(
QUESTION_SEQ.NEXTVAL, 
'user01', 
'Test Category', 
1234, 
'Test Subject', 
'Test Content', 
'Test Answer', 
'Test Original', 
'Test File', 
0, 
sysdate);