insert into users(id, active, password, username) values
(1, true, '$2a$06$iXoAnuMeJmE9dDIUmqBmveoBz1OduBO0QeWn/J1WR4BgiXwu.JFr.', 'test1'),
(2, true, '$2a$06$iXoAnuMeJmE9dDIUmqBmveoBz1OduBO0QeWn/J1WR4BgiXwu.JFr.', 'test2');

insert into user_role(user_id , roles) values
(1, 'USER'), (1, 'ADMIN'), (2, 'USER');