# MySQL-project-Ebook-Library

This is work is based on a Ebook Library database of two months in 2017. Here we first create the database, in the SQL file run line 5 to line 238 first, to create the database. After that the rest of the segments are used
to better understand, analyze & find insights from the database and the tables within. After creating the database, run these segments one by one. Read the comments in the sql file to understand what the code is doing.

Context of the data set: The CIS Department at Tiny College maintains the Free Access to Current Technology (FACT) library of e-books. FACT is a collection of current technology e-books for use by 
faculty and students. Agreements with the publishers allow patrons to electronically check out a book, which gives them exclusive access to the book online through the FACT website, but only one 
patron at a time can have access to a book. A book must have at least one author but can have many. An author must have written at least one book to be included in the system but may have written many. 
A book may have never been checked out but can be checked out many times by the same patron or different patrons over time. Because all faculty and staff in the department are given accounts at the 
online library, a patron may have never checked out a book or they may have checked out many books over time. To simplify determining which patron currently has a given book checked out, a redundant 
relationship between BOOK and PATRON is maintained.
