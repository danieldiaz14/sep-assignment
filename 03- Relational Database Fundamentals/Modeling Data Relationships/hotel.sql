CREATE table guest (
  first_name text,
  last_name text,
  phone int,
  email text,
  address text
);

Create table booking(
  guest.first_name text,
  check_in date,
  check_out date,
  number_of_rooms int,
  room.room_id int
);

CREATE table room(
  room_id int,
  floor_number int,
  price float
);



SELECT first_name
FROM booking
WHERE check_in = null;

SELECT first_name
FROM booking
WHERE number_of_rooms > 1


SELECT first_name
FROM booking
GROUP BY room_id;


SELECT room_id, COUNT(first_name)
FROM booking
GROUP BY first_name;
