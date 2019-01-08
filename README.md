# Lab-companion

## Description
This web application assist to manage your laboratory member.
Now you can use the following functions on this application.

1. Laboratory room member management
2. Post the article with markdown supported
3. Managing your todo with markdown supported

In the future, we will provide following functions on this application.

1. File storage
2. Calender
3. Laboratory's event notification
4. Customizing the laboratory members header image

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

Then, run the following command to set-up.

```bash
# Setup the environment
bash ./setup.sh
```

Once done, you can run the application.

```bash
rails s -b 0.0.0.0

# or
rails s -b YOUR_SERVER_IP
```

Finally, you can access the web application on your browser.

```bash
localhost:3000/
# or
YOUR_SERVER_IP:3000/
```

## License
This software is released under the MIT License, see LICENSE file.