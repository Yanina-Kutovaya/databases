-- 2.�������� ���� ������ example, ���������� � ��� ������� users, ��������� �� ���� ��������, ��������� id � ���������� name.

CREATE DATABASE example;
USE example;

CREATE TABLE IF NOT EXISTS users(
id SERIAL,
name VARCHAR(225) NOT NULL UNIQUE
);


