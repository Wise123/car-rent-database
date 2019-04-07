use car_rent;

insert into car_manufacturer (name) values
('lada'),
('uaz'),
('niva'),
('chevrolet'),
('lamborghini');


insert into car_model (name) values
('priora'),
('patriot'),
('chevrolet-niva'),
('gallardo');

insert into car_manufacturer_car_model (car_manufacturer_id, car_model_id) values
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4);

insert into car (reg_num, car_model_id) values
('С065МКRUS59', 1),
('С066МКRUS59', 1),
('С067МКRUS59', 1),
('С068МКRUS59', 2),
('С069МКRUS59', 3),
('С070МКRUS59', 4);


insert into rent_point (address) values
('Ленина 22'),
('Ленина 502'),
('Мира 1'),
('Комсомольский проспект 5'),
('Рязанская 7');

insert into renter (surname, first_name, patronymic) values
('Иванов', 'Иван', 'Иванович'),
('Сидоров', 'Сидор', 'Сидорович'),
('Петров', 'Петр', 'Петрович'),
('Андреев', 'Андрей', 'Андрееви');

insert into rental_session (
  session_start,
  session_end,
  start_rent_point_id,
  end_rent_point_id,
  renter_id,
  car_id
) values (
  '2019-01-01',
  '2019-01-02',
  1,
  1,
  1,
  1
),(
  '2019-01-01',
  '2019-03-02',
  2,
  3,
  1,
  2
),(
  '2019-01-01',
  '2019-01-15',
  3,
  2,
  2,
  2
),(
  '2019-01-01',
  '2019-01-02',
  3,
  3,
  3,
  3
),(
  '2019-01-01',
  '2019-01-02',
  2,
  2,
  2,
  2
);