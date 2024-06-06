CREATE ROLE db_admin;
CREATE ROLE table_manager;
CREATE ROLE column_editor;

GRANT ALL PRIVILEGES ON DATABASE zoo_db TO db_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO table_manager;
GRANT SELECT, UPDATE (name, age) ON TABLE Animals TO column_editor;

CREATE USER admin_user WITH PASSWORD 'securepassword';
GRANT db_admin TO admin_user;

CREATE USER table_user WITH PASSWORD 'securepassword';
GRANT table_manager TO table_user;

CREATE USER column_user WITH PASSWORD 'securepassword';
GRANT column_editor TO column_user;
