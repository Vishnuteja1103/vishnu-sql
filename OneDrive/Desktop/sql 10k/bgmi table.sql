create database bgmi;

use bgmi;
create table bgmimb(
bgmi_id int primary key ,
bgmi_name varchar(50),
bgmi_rank varchar(40),
matches_played int
);

desc bgmimb;

insert into bgmimb values
(145,'vishnu_x','A1',150),
(123,'teja','D1',123),
(345,'korada','S2',87),
(4565,'joy_boy','C1',456);


select * from bgmimb;


-- select* from bgmimb;
-- select bgmi_name from bgmimb;

-- select bgmi_id from bgmimb
-- where bgmi_id = 'teja';

-- select bgmi_name from bgmimb
-- where bgmi_name = "vishnu"








