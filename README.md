# Gravity Bookstore Data Warehouse Project

## Use-case Background

Gravity Bookstore is a fictional bookstore database capturing information about books, customers, and sales.

## ERD of 'gravity_books' Transactional Database

[Insert an image of the ERD here]

### Tables Description:

- **book**: List of all books available in the store.
- **book_author**: Stores the authors for each book (many-to-many relationship).
- **author**: List of all authors.
- **book_language**: List of possible languages of books.
- **publisher**: List of publishers for books.
- **customer**: List of customers of the Gravity Bookstore.
- **customer_address**: List of addresses for customers (one customer can have multiple addresses, and one address can have multiple customers).
- **address_status**: List of statuses for an address (current or old).
- **address**: List of addresses in the system.
- **country**: List of countries that addresses are in.
- **cust_order**: List of orders placed by customers.
- **order_line**: List of books that are part of each order.
- **shipping_method**: Possible shipping methods for an order.
- **order_history**: History of an order (ordered, cancelled, delivered).
- **order_status**: Possible statuses of an order.

## Requirements

1. **Model and develop 'gravity_books_dwh' Data Warehouse**

    a. DDL statements for table creation:

    ```sql
    -- Your DDL statements for creating tables in 'gravity_books_dwh'
    ```

    b. Screenshot from the DWH Diagram (Dimensional Modeling).

    [Insert a screenshot of the DWH Diagram here]

2. **Define which approach (star schema, snowflake) of data warehouse used in your solution, and why.**

   [Explain your choice here]

3. **Define a method to check and maintain the integrity between the fact and the dimensions (SQL).**

    ```sql
    -- Your SQL statements to check and maintain integrity between fact and dimensions
    ```

4. **Add a date dimension to the system to track historical changes.**

    ```sql
    -- Your SQL statements to create a date dimension
    ```

5. **Design an SSIS project to populate data from 'gravity_books' transactional database into the new target data warehouse 'gravity_books_dwh'.**

    [Insert screenshots from your SSIS project here]

6. **Design an SSAS project (multidimensional mode) and provide the main deliverables of the cube browsing.**

    [Insert screenshots from your SSAS project here]

### Compress the entire solution files:

- DWH DDL statements (format .sql)
- ETL SSIS project
- OLAP SSAS project
- Mapping Sheet
