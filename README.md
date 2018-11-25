# Lab-companion

## Description
This web application assist to manage your laboratory management.
Now you can use the following functions on this application.

1. Laboratory room member management
2. Posting the page any topic
3. Managing your todo

In the future, we will provide following functions on this application.

1. File storage
2. Calender
3. Laboratory's event notification

## Requirements

This application requires the following environment.  

| Environment | Version |
|:-----------:|:-------:|
| ruby | 2.4+ |
| rake | 12.3+ |
| gem | 2.6+ |
| rails | 5.2.1 |
| sqlite3 | 3.24+ |

## Usage

First, clone this repository.
```bash
git clone git@github.com:danboruya/lab-companion
```

Then, you have to run the following command.

```bash
# On this repositories directory
bundle install

# Migrateing the database for your environment.
rake db:migrate
```

Once done, you can run the application.

```bash
rails s -b 0.0.0.0
```

Finally, you can access the web application on your browser.

```
localhost:3000/
# or
SERVER_IP:3000/
```
