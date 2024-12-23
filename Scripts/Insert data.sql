INSERT INTO models (brand, engine_type, engine_horsepower, drive) VALUES
('Sodi', 'Electric', 6, 'RWD'),
('CRG', 'Petrol', 13, 'RWD'),
('Birel ART', 'Electric', 8, 'FWD'),
('Tony Kart', 'Petrol', 15, 'RWD'),
('Kosmic', 'Petrol', 18, 'RWD'),
('Intrepid', 'Electric', 10, 'RWD'),
('Razor', 'Petrol', 12, 'AWD'),
('Arrow', 'Electric', 7, 'AWD'),
('Mach1', 'Petrol', 14, 'RWD'),
('Energy', 'Electric', 9, 'RWD');

INSERT INTO cars (car_plates, model_id, year, condition, days_to_maintenance, rent_price) VALUES
(3025, 1, 2020, 'Excellent', 30, 1500),
(4587, 2, 2019, 'Good', 45, 1300),
(5678, 3, 2021, 'Excellent', 20, 1700),
(1234, 4, 2018, 'Fair', 60, 1100),
(9812, 5, 2017, 'Good', 50, 1200),
(2468, 6, 2022, 'Excellent', 15, 2000),
(1357, 7, 2021, 'Good', 40, 1400),
(8642, 8, 2020, 'Excellent', 25, 1600),
(7531, 9, 2019, 'Fair', 55, 1000),
(1597, 10, 2018, 'Good', 35, 1250),
(4826, 1, 2022, 'Excellent', 10, 1800),
(9173, 2, 2016, 'Good', 70, 900),
(3047, 3, 2023, 'Excellent', 5, 2200),
(8649, 4, 2020, 'Fair', 40, 1400),
(5923, 5, 2018, 'Good', 45, 1150),
(7361, 6, 2019, 'Excellent', 20, 1900),
(4950, 7, 2020, 'Good', 30, 1450),
(8716, 8, 2021, 'Excellent', 15, 1750),
(3594, 9, 2017, 'Fair', 50, 1050),
(6842, 10, 2019, 'Good', 25, 1300);

INSERT INTO clients (first_name, last_name, birth_date, gender, level, phone, email, balance) VALUES
('Alice', 'Smith', '1990-05-14', 'Female', 'Beginner', '123-456-7890', 'alice.smith@example.com', 500),
('Bob', 'Johnson', '1985-08-22', 'Male', 'Intermediate', '987-654-3210', 'bob.johnson@example.com', 1200),
('Charlie', 'Brown', '2000-11-03', 'Male', 'Beginner', '456-789-1234', 'charlie.brown@example.com', 300),
('Diana', 'Miller', '1995-01-15', 'Female', 'Advanced', '321-654-9870', 'diana.miller@example.com', 2000),
('Edward', 'Wilson', '1988-07-29', 'Male', 'Intermediate', '654-321-4567', 'edward.wilson@example.com', 800),
('Fiona', 'Davis', '1992-03-19', 'Female', 'Beginner', '789-123-6543', 'fiona.davis@example.com', 400),
('George', 'Moore', '1998-12-05', 'Male', 'Advanced', '123-789-4560', 'george.moore@example.com', 2500),
('Hannah', 'Taylor', '1993-06-25', 'Female', 'Intermediate', '987-321-6540', 'hannah.taylor@example.com', 1100),
('Ian', 'Anderson', '1987-09-11', 'Male', 'Beginner', '456-123-7896', 'ian.anderson@example.com', 600),
('Julia', 'Thomas', '1999-04-30', 'Female', 'Advanced', '321-987-1230', 'julia.thomas@example.com', 3000);

INSERT INTO maps (coverage, total_length) VALUES
('Indoor', 800),
('Outdoor', 1200),
('Mixed', 1000),
('Indoor', 900),
('Outdoor', 1500);

INSERT INTO configs (map_id, record_id, length) VALUES
(1, 1, 800),
(2, 2, 1200),
(3, 3, 1000),
(5, 4, 900),
(4, 5, 1500),
(3, 6, 850),
(1, 7, 1250),
(2, 8, 1100),
(5, 9, 950),
(4, 10, 1300);

INSERT INTO races (config_id, date, time_started, time_finished) VALUES
(3, '2024-12-01', '10:05:00', '10:25:00'),
(7, '2024-12-02', '11:30:00', '11:55:00'),
(5, '2024-12-03', '14:15:00', '14:40:00'),
(2, '2024-12-04', '12:45:00', '13:05:00'),
(5, '2024-12-05', '16:00:00', '16:30:00'),
(8, '2024-12-06', '17:25:00', '17:50:00'),
(3, '2024-12-07', '18:10:00', '18:28:00'),
(2, '2024-12-08', '19:00:00', '19:18:00'),
(9, '2024-12-09', '20:15:00', '20:35:00'),
(4, '2024-12-10', '13:00:00', '13:20:00');

INSERT INTO results (race_id, client_id, car_id, time, points, difference_to_PR) VALUES
(3, 1, 2, 1200, 10, 15),
(7, 2, 4, 1180, 9, 12),
(5, 3, 1, 1225, 8, 20),
(2, 4, 3, 1150, 12, 10),
(6, 5, 7, 1195, 7, 18),
(9, 6, 8, 1210, 6, 25),
(1, 7, 9, 1230, 5, 22),
(8, 8, 10, 1170, 11, 17),
(4, 9, 6, 1240, 4, 30),
(10, 10, 5, 1165, 13, 10);

INSERT INTO records (result_id, type) VALUES
(1, 'PB'),
(2, 'CR'),
(3, 'WR'),
(4, 'PB'),
(5, 'WR'),
(6, 'PB'),
(7, 'CR'),
(8, 'PB'),
(9, 'WR'),
(10, 'CR');

INSERT INTO accidents (race_id, client_id, car_id, type) VALUES
(1, 2, 7, 'Crash'),
(3, 5, 7, 'Spinout'),
(4, 8, 2, 'Mechanical Failure'),
(2, 3, 5, 'Crash'),
(6, 9, 2, 'Flat Tire'),
(7, 10, 3, 'Collision'),
(5, 1, 6, 'Mechanical Failure'),
(8, 4, 9, 'Spinout'),
(9, 6, 10, 'Crash'),
(10, 7, 8, 'Flat Tire');