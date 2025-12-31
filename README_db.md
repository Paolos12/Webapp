ELMS — Database setup for local XAMPP

This README explains how to create and import the `elms_db` database for the project and verify the connection.

Files added/updated
- `elms_db.sql` — SQL file that creates the database `elms_db`, tables and seeds basic entries.
- `connection.php` — adjusted to use `$db_name = "elms_db"` (edit credentials if your MySQL root user has a password).

Import using phpMyAdmin (recommended)
1. Start XAMPP (Apache + MySQL).
2. Open phpMyAdmin in your browser: http://localhost/phpmyadmin
3. Click "Import" and choose the file `elms_db.sql` from the project root (C:\xampp\htdocs\ELMS\elms_db.sql).
4. Run the import. It will create the `elms_db` database and all tables. You should see success once the import completes.

Import using MySQL CLI (PowerShell)
If you prefer the command line and have the `mysql` client available (bundled with XAMPP), run from PowerShell:

# If root has no password
mysql -u root < "C:\xampp\htdocs\ELMS\elms_db.sql"

# If root has a password
mysql -u root -p < "C:\xampp\htdocs\ELMS\elms_db.sql"

After running the import
1. Verify `connection.php` credentials if your MySQL root uses a password: open `connection.php` and set `$db_pass` accordingly.
2. Start Apache and MySQL from XAMPP.
3. Visit the login page: http://localhost/ELMS/login.php

Seeded accounts (from the SQL)
- Admin: admin@edoc.com / 123
- Doctor: doctor@edoc.com / 123
- Patient: patient@edoc.com / 123

Notes and recommendations
- The provided SQL contains plaintext passwords for seeded rows. For production, migrate to password hashing (password_hash / password_verify) and use prepared statements for all DB queries.
- If you want, I can update the signup/login flow to use hashed passwords and prepared statements.
