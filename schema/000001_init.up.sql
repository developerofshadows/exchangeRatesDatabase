CREATE USER backend WITH PASSWORD 'Plata2024!';

CREATE TABLE actual
(
    currency character varying(10) not null PRIMARY KEY,
    price numeric NOT NULL,
    update_time timestamp with time zone not null
);

CREATE TABLE history
(
    id uuid not null PRIMARY KEY,
    currency character varying(10),
    price numeric NOT NULL,
    update_time timestamp with time zone not null
);

INSERT INTO actual
(currency, price, update_time)
VALUES
    ('EUR/MXN',18.3376,NOW()),
    ('EUR/USD',1.0854,NOW()),
    ('USD/EUR',0.92132,NOW()),
    ('USD/MXN',16.8948,NOW()),
    ('MXN/USD',0.05919,NOW()),
    ('MXN/EUR',0.05453,NOW());


GRANT ALL PRIVILEGES ON TABLE actual TO backend;
GRANT ALL PRIVILEGES ON TABLE history TO backend;