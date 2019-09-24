# Tasks for the candidate

## Required knowledge set:

* HTML, CSS
* PHP 7+
* JavaScript: prototyping, modules, classes, jQuery
* MySQL
* Linux
* Git
* OOP

# HTML, CSS.

1. Create an `index.html` file.

2. Make up the document with a header (`height 200px`), a footer (`height 100px`), content and a side panel
(`width 200px`) using the external style.

3. In the content of the created document, create a table with a fixed header and scrolling content.

Solution: `html/index.html`

# PHP

1. Create a file `task1.php`;

2. Write the `Animal` class with properties (`name`, `age`, `weight`, `food`, `number of eaten food`, `distance`) 
and methods (`go`, `eat`, `sleep`);

3. The `go` method adds a value to the distance equal to `age` multiplied by 2 and displays the message `{name} has
passed {value} km`;

4. The `eat` method adds a value to `food` equal to the number of food eaten and displays the message `{name} ate
{value} kg`;

5. The `sleep` method displays the message `{name} is sleeping" if "food` is greater than or equal to 10% of the 
weight, and also the `distance` is greater than or equal to 40. Otherwise, the message `{name} cannot sleep. Hungry 
or not tired.`;

6. Write a class `Lion` with a constructor accepting the parameters `name` and `age`;

7. The class redefines the properties `name`, `age`, `weight` (age * 40, but not more than 200) and the `number of food 
eaten` (age * 2, but not more than 20);

8. Create an instance of the `Lion` class;

9. Call the instance methods in such order and quantity so that the message `{name} is sleeping` is displayed;

Solution: `php/task1.php`


# JavaScript

1. Create a file `task2.1.js`;

2. Follow steps 2-9 of the PHP assignment using the JS prototyping approach;

3. Create a file `task2.2.js`;

4. Follow steps 2-9 of the practical PHP task using the ES2015 modules and classes approach;

Solution: `js/task2.1.js` and `js/task2.2.js`

# MySQL

1. Create the `task3.sql` file;

2. Write a request to create a `book` table with the fields: `ISBN`, `name`, `description`, `year of publication`, 
`publisher` (foreign key to the table `publishers`);

3. Write a request to create a table `publishers` with the fields: `name`;

4. Write a request to make the following values ​​in the table `books`:

```mysql
('1234567890123', 'Book 1', 'Good book with great plot', 1989, 1),
('1234567190124', 'Book 2', 'Good book with great', 2014, 2),
('1234567290125', 'Book 3', 'Good book with', 2001, 3),
('1234567390126', 'Book 4', 'Good book', 1995, 1),
('1234567890127', 'Book 5', 'Good', 2018, 2);
```

5. Write a request to enter the following values ​​in the table `publishers`:

```mysql
('Pub1'), ('Pub2'), ('Pub3');
```

6. Write a query to select the fields `name` and `year of publication` from the table `books` of all records, where 
the year of publication is between 2000 and 2015;

7. Write a query to select the fields `name` and `description` from the `book` table of all records, where the 
description is more than 20 characters;

8. Write a query to select the fields `name` and `isbn` from the `book` table of all records, where isbn contains 
the character “8”;

9. Write a query to select the fields `book name` and `publisher name` from the `book` and `publishers` tables, where 
the publisher name is `Pub2`;

Solution: `mysql/task3.sql`

# Linux, MySQL, git

1. Create a `task4.sh` file;

2. Write a command to go to the current user's home directory;

3. Write the command to create the task4 directory;

4. Write the command to create files `file.php` and `file.js`;

5. Write a command to change the owner of the `task4` directory and all its heirs to the current user;

6. Write a command to change the rights of the `task4` directory and all its heirs to `read, write, execute` for 
the owner, `read, execute` for the group, `access is denied` for the rest;

7. Write the command to create the `file.ini` file;

8. Write the command to move the `file.ini` file to the task4 directory;

9. Write the output command listing the contents of the task4 directory only with the extension ini;

10. Write a file search command in the task4 directory with the php extension;

11. Write a command to delete the task4 directory with all the contents;

12. Write the command for connecting to the `candidate` mysql database with the user `root` and password `1`;

13. Write a command to get a dump of the `candidate` mysql database with the user `root` and password `1`;

14. Write a command connecting via ssh to the server `remote` with the user `user` on port 23;

15. Write the git repository cloning command, from the `remote` server by the user `user`, port 23, the remote
directory `/var/www/html/repo/project.git` to the local directory `project1`;

16. Write a command to create a new branch `future-1`;

17. Write a commit command with the message `future-1.1`;

18. Write the command to switch back to the `master` branch;

19. Write a command to merge the `future-1` branch with the `master` branch;

Solution: `bash/task4.sh`

@kovalevcon