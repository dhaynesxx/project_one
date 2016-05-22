This is GA WDI project 1

The task here was to create an rails based web application that uses at least three models.

I decided to create an e-commerce website using rails.
In the end it was called candy shop however it was pretty much a white label application that can be turned into any product based e-commerce site reaonably quickly

The models that I used were:
- business
- users
- orders
- line-items
- products

I set up 3 types of users: 
- master user - has complete control over all functions including updating business details
- admin user - has control over products and user info, access to admin reporting functions
- customer user - search and buy products

Features:
- search function
- stripe payment gem used
- shopping cart
- see previous orders (customer)
- stock on sale
- P&L for each item
- stock levels reports
- reports for shop to see what needs to be shipped, confirm when shipped and finalise


Log-in Details for testing:
normal user - email: user1@ga.co,  password: chicken
admin user -  email: admin@ga.co,  password: chicken
master user - email: master@ga.co, password: chicken

