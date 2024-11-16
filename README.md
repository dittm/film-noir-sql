# Film Noir SQL Database
This repository contains SQL scripts to create and populate a database with information about classic film noir movies, directors, countries, languages, and screenwriters.

### Database Schema
The database includes the following tables:

`directors`: Information about directors, including ID, name, and gender.
`countries`: List of countries with their respective IDs.
`languages`: List of languages with their respective IDs.
`screenplay`: Information about screenwriters, including ID, name, and gender.
`film_lang`: Linking table between films and languages.
`film_countries`: Linking table between films and countries.
`films`: Information about films, including ID, title, director ID, duration, and year.

### Usage
To set up the database, run the `sql_dump.sql` script using your preferred SQL database management system. For example:
```
sqlite3 film_noir.db < sql_dump.sql
```

### Sample Data
The script includes sample data for directors, countries, languages, screenwriters, films, and their respective relationships.

### Development
Feel free to contribute by forking the repository and submitting pull requests. Please ensure that your contributions adhere to the existing style and structure of the database.

### License
This project is licensed under the MIT License.
