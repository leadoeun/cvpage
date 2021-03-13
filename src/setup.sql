create table TB_BOARD (
                          board_seq int,
                          board_writer varchar(20),
                          board_subject varchar(80),
                          board_content varchar(300),
                          ins_date char(19),
                          upd_date char(19));

ALTER TABLE TB_BOARD ADD COLUMN board_hits int;

create table education(
                          seq int,
                          startdate char(19),
                          enddate char(19),
                          institute varchar(50),
                          major varchar(30),
                          gpa double,
                          etc varchar(300)
);

create table achievements(
                             seq int,
                             award varchar(50),
                             awardinfo varchar(300),
                             club varchar(50),
                             clubinfo varchar(300),
                             certification varchar(50),
                             certificationinfo varchar(300)

);

create table user(
                     seq int,
                     name varchar(50)
);