INSERT INTO activity_type
VALUES
    (1,	'start',	'onStart()'),
    (2,	'pause',    'onPause()'),
    (3,	'stop',	    'onStop()'),
    (4,	'destroy',	'onDestroy()');

INSERT INTO activity
VALUES
    (1,	1,	'start.banner',	'banner', null),
    (2,	1,	'start.main',	'main', 	1),
    (3,	3,	'start.login',	'login',	2),
    (4,	3,	'start.signup',	'signup',	3),
    (5,	4,	'start.news',	'news', 	4),
    (6,	2,	'start.forum',	'forum',	4);

INSERT INTO sub_program
VALUES
    (1,	100),
    (2,	200),
    (3,	300),
    (4,	400),
    (5,	500),
    (6,	600);

INSERT INTO project
VALUES
    (1,	'show facts'),
    (2,	'all the main functions'),
    (3,	'sign in in account'),
    (4,	'sign up in account'),
    (5,	'see the news'),
    (6,	'ask and answer the questions');

INSERT INTO program
VALUES
    (1,	10000,	2020,	2025),
    (2,	20000,	2021,	2025),
    (3,	30000,	2023,	2025),
    (4,	40000,	2024,	2025),
    (5,	50000,	2025,	2025),
    (6,	60000,	2026,	2025);

INSERT INTO point
VALUES
    (1, '2022-01-20', '2022-01-25'),
    (2, '2022-02-20', '2022-02-25'),
    (3, '2022-03-20', '2022-03-25'),
    (4, '2022-04-20', '2022-04-25'),
    (5, '2022-05-20', '2022-05-25'),
    (6, '2022-06-20', '2022-06-25');

INSERT INTO area
VALUES
    (1,	'whole'),
    (2,	'start'),
    (3,	'part'),
    (4,	'end'),
    (5,	'center');

INSERT INTO contract
VALUES
    (1,	1),
    (2,	1),
    (3,	4),
    (4,	4),
    (5,	3),
    (6,	4);