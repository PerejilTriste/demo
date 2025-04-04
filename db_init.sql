DROP TABLE IF EXISTS family_members CASCADE;
DROP TABLE IF EXISTS family_jobs CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS expence_products CASCADE;

CREATE TABLE family_members(
    id SERIAL PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    member_surname VARCHAR(100) NOT NULL,
    member_lastname VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE family_jobs (
    id SERIAL PRIMARY KEY,
    person INT REFERENCES family_members(id),
    occupation VARCHAR(100) NOT NULL,
    organization VARCHAR(100) NOT NULL,
    salary INT NOT NULL,
    start_date DATE
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    unit_price INT NOT NULL
);

CREATE TABLE expence_products (
    purchase_date DATE NOT NULL,
    person INT REFERENCES family_members(id),
    product INT REFERENCES products(id),
    quantity INT NOT NULL
);

INSERT INTO family_members (id, member_name, member_surname, member_lastname, birth_date) VALUES
(1, 'Иванов', 'Иван', 'Петрович', '1985-06-15'),
(2, 'Иванова', 'Мария', 'Сергеевна', '1987-09-20'),
(3, 'Иванов', 'Алексей', 'Иванович', '2010-02-05'),
(4, 'Иванова', 'Елена', 'Викторовна', '1959-03-10'),
(5, 'Петров', 'Сергей', 'Александрович', '1982-12-05');

INSERT INTO family_jobs (id, person, occupation, organization, salary, start_date) VALUES
(1, 1, 'Инженер', 'ООО "ТехноСервис"', 85000, '2015-03-01'),
(2, 2, 'Бухгалтер', 'АО "ФинансГрупп"', 75000, '2012-04-15'),
(3, 4, 'Репетитор', 'Частная практика', 15000, '2020-01-10'),
(4, 5, 'Таксист', 'Индивидуальная работа', 30000, '2020-09-01');

INSERT INTO products (id, product_name, category, unit_price) VALUES
(1, 'Хлеб', 'Продукты', 50),
(2, 'Молоко', 'Продукты', 80),
(3, 'Бензин', 'Транспорт', 80),
(4, 'Билет в кино', 'Развлечения', 300),
(5, 'Зимнее пальто', 'Одежда', 8500),
(6, 'Учебники', 'Образование', 400),
(7, 'Лекарства', 'Здоровье', 25000),
(8, 'Погашение кредита', 'Кредиты', 89000),
(9, 'Смартфон в подарок', 'Подарки', 99900);

INSERT INTO expence_products (purchase_date, person, product, quantity) VALUES
('2025-02-01', 1, 1, 2),
('2025-02-01', 1, 2, 3),
('2025-02-01', 1, 2, 1),
('2025-02-06', 2, 5, 1),
('2025-02-09', 5, 3, 30),
('2025-02-12', 4, 7, 5),
('2025-02-18', 1, 8, 1),
('2025-02-22', 2, 9, 1),
('2025-02-22', 3, 4, 1);