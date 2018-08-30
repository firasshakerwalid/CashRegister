# CashRegister

this simple program will use SQL and Entity Framework to store Item properties like Id, Name, Price, IsWeight which deciede if the item price
depend on weight or quantity, and the last field is QuantityCoupon which decide descount on quantity item: ex: when quantity Coupon =3 mean
every 3 items will get 1 item for free.

i store the database script under https://github.com/firasshakerwalid/CashRegister/blob/master/packages/GenerateSqlDatabaseScript/CashRegisterDB.sql
after apply to SQL Server and update the Connection string in app.config you need just to build the project and execute to have the result.


Welcome to XXX Store
enter Item ID ('0' to continue): 1
quantity:2
item1:2$
enter Item ID ('0' to continue): 2
weight:4
item2:5.2$
enter Item ID ('0' to continue): 3
weight:2
item3:5$
enter Item ID ('0' to continue): 0
Enter %  discount coupons of total price
20
item1:2$
item2:5.2$
item3:5$
Total Price:9.76$






