-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS company_contacts;
DROP TABLE IF EXISTS company_industries;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  position TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT,
  company_id INTEGER
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE industry_membership (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER,
  industry_id INTEGER
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  action TEXT,
  time TEXT,
  notes TEXT,
  salesperson_id INTEGER,
  contact_id INTEGER
);
