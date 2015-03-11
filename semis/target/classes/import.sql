INSERT INTO authority(authority) values ('ADMIN');
INSERT INTO authority(authority) values ('USER');

insert into users(USERNAME,PASSWORD) values('admin','admin');
insert into users(USERNAME,PASSWORD) values('root','root');

INSERT INTO USER_AUTH(users_username, authorities_authority) values('admin', 'ADMIN')
INSERT INTO USER_AUTH(users_username, authorities_authority) values('root', 'USER')
