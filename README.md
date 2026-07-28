# Pewlett Hackard Employee SQL

## Problem
HR research questions need a real relational schema — departments, employees, titles, salaries — plus queries that answer "who / when / how much?" cleanly.

## What we built
- `table_schemata.sql` — table definitions
- `queries.sql` — investigative SQL
- `pewlett-hackard-emp-db-ERD.png` — ERD from QuickDBD
- Sample CSVs under `data/`

## How to run
1. Create a Postgres (or compatible) database
2. Run `table_schemata.sql`, load CSVs from `data/`
3. Run `queries.sql`

## Stack
SQL · PostgreSQL · QuickDBD (ERD)

## Fun closer
Nothing says "data detective" like joining employees to salaries and finding the plot in the WHERE clause.
