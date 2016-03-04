-- Adding a SQL example for the simple username scenerio

users (
   id int not null auto_increment,
   username varchar(100) not null,
   password varchar(40) not null,
   primary key (id)
);
