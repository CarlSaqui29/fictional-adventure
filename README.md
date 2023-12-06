# Article App
- A mini project to familiarize and practice Ruby Rails commands and structure.

### Create and Start the app
```
rails _6.1.7.5_ new article_app
rails s
```

### Generate scaffold
To generate scaffold run the command below and give it a name: Article with the attributes of title and description.
```
rails generate scaffold Article title:string description:text
```

- migration file is used to create the Articles table.

Run the migration file to create the table
```
rails db:migrate
```

### Application Helpful commands
- To check rails application routes use `rails routes`
- To display rails route in beautiful format `rails routes --expanded`