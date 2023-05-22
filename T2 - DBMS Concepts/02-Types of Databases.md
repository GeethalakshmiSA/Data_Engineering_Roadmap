# Types of Databases

1. **Hierarchical** 
    - Just as in hierarchy, data is categorized as in ranks or levels with common point of linkage
    - Simply, a parent-child relationship
    - Disadvantage => Lengthy Traversal

2. **Network**
    - Most likely a multi-parent relationship for a child
    - Also, said as Bi-directional relationship
    - Disadvantage => Structure Complexity (highly structure dependant)

3. **Object-Oriented**
   - Information stored is represented as objects which responses as instance of database model
   - Advantage => High Efficient Response

4. **Relational**
   - Every piece of information has a relationship with every other piece of information
   - Present in Tabular Form where
      * Every row linked with another row using primary key 
      * Every table linked with another table using foreign key
   - Structured Query Language (SQL) is used
   - Example: MySQL, PostgreSQL, Oracle, MariaDB
   - Advantage => Easy scaling and traversal 

5. **Non-Relational**
    - No tabular form or no relations
    - Here, the data is present in unstructured form
    - Designed for distributed data stores
    - Data is stored in either form such as key-value pairs, column-oriented databases, graphs or document-oriented
    - Advantage => Scalability & High Availability
    - Disadvantage => Large document size, weak backup, No GUI
