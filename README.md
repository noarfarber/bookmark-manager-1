## How to use

### Set Up Project

Clone this repository and run:

```
bundle
```

### Set Up Database

* Connect to `psql` and create `bookmark_manager` database and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

* Set up the appropriate tables by connecting to each database in `psql` using the command `\c bookmark_manager;`
* Run the SQL scripts in the `db/migrations` folder in the given order.

### Run The App

```
rackup
```

### Run Tests:

```
rspec
```
### Run Linting:
```
rubocop
```
