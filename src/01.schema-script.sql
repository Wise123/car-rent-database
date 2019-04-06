drop database if exists car_rent;

create database car_rent;

use car_rent;

create table car_manufacturer (
    id bigint not null auto_increment,
    name varchar(255) not null,
    primary key(id)
);

create table car_model (
    id bigint not null auto_increment,
    name varchar(255) not null,
    primary key(id)
);

create table car_manufacturer_car_model (
    car_manufacturer_id bigint not null,
    car_model_id bigint not null,
    constraint primary key (car_manufacturer_id, car_model_id),
    constraint foreign key (car_manufacturer_id) references car_manufacturer (id),
    constraint foreign key (car_model_id) references car_model (id)
);

create table car (
    id bigint not null auto_increment,
    reg_num varchar(255) not null,
    car_model_id bigint not null,
    primary key(id),
    constraint foreign key (car_model_id) references car_model (id)
);

create table rent_point (
    id bigint not null auto_increment,
    address varchar(255) not null,
    primary key(id)
);

create table renter (
    id bigint not null auto_increment,
    first_name varchar(255) not null,
    surname varchar(255) not null,
    patronymic varchar(255) not null,
    primary key(id)
);

create table rental_session (
    id bigint not null auto_increment,
    session_start date not null,
    session_end date not null,
    start_rent_point_id bigint not null,
    end_rent_point_id bigint,
    renter_id bigint not null,
    car_id bigint not null,
    primary key(id),
    constraint foreign key (start_rent_point_id) references rent_point (id),
    constraint foreign key (end_rent_point_id) references rent_point (id),
    constraint foreign key (renter_id) references renter (id),
    constraint foreign key (car_id) references car (id)
);