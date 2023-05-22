# Database

A Database is an organized collection of information or data stored electronically in a computer system which is used for edit, store and manipulation purpose.
The database is controlled by DBMS (Database Management System)

# Database Management System (DBMS)

Just a interface between the database and it's end users or programs, to manage the database.
Simply, a computerized data keeping system using which we can create, insert, delete, update or retreive our data.
Example - MySQL, Oracle, MS SQL, DB2

## Uses and Purpose of Database

* Efficient access of data
* Uniform data administration
* Security and data integrity (Access Determination)
* Concurrent access (at same time) by multiple users
* Backup and Recovery
* Data Independence

## Need of DBMS

* Processing quereies and Objet management
* Controlling redundancy and inconsistency using data normalization to avoid duplicates
* Efficient memory management & indexing
* Concurrency control & transaction management using ACID property
* Access control and ease in accessing data
* Integrity constraints
* Allows to assign security permissions
* Mulitple User Interface
* Data Scalability, Expandability & Flexibility

## Advantages of DBMS over a traditional File System

* Structure
* Data Redundancy
* Backup & Recovery
* Query Processing
* Consistency
* Integrity Constraints
* Complexity
* Security
* Cost
* Data Independence
* User Access
* Sharing

## DBMS Architecture

* **One-tier Architecture**
    - Database that is directly available to the user
    - Client, Server, Database => All on the same machine

* **Two-tier Architecture**
    - Basically a client-server model
    - Client establishes a connection with server having the database to process the queries and programs
    - ODBC, JDBC API's are used for this interaction
    - Gives poor performance when there are large number of users

* **Three-tier Architecture**
    - No direct communication
    - Instead, when the client establishes a connection, the application server interacts with database and provide the results to client
    - Advantage of this would be the enhanced scalability, data integrity, security
