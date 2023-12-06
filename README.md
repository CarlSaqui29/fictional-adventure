# Article App
A mini project to familiarize and practice Ruby Rails commands and structure.

### Create and Start the app
This setup will not be using webpack so we will add skip flag to skip webpack
```
rails _6.1.7.5_ new app --skip-webpack-install --skip-turbolinks
rails db:migrate
```

### Clean up
remove javascript folder under app folder
```
rm -fR app/javascript
```
then removed the `# gem 'webpacker', '~> 5.0'` on the Gemfile

### Add index page
Using controller generator:
```
bin/rails generate controller Welcome index
```
Go to config/routes then change the `get 'welcome/index'` to
```
root 'welcome#index'
```

### Setting up application.js
Go to /app and create a folder with the name javascripts and inside that folder create application.js file
```
# test if the application.js is working
console.log("working..")
```
Then head over to app/assets/config/manifest.js and add this:
```
//= link_directory ../javascripts .js
```
Go to app/views/layouts/application.html.erb then change `<%= javascript_pack_tag 'application' %>` to this
```
<%= javascript_include_tag 'application' %>
```

### Generate scaffold
To generate scaffold run the command below and give it a name: Article with the attributes of title and description.
```
rails generate scaffold Article title:string description:text
```

migration file is used to create the Articles table.
Run the migration file to create the table
```
rails db:migrate
```

### Application Helpful commands
- To check rails application routes use `rails routes`
- To display rails route in beautiful format `rails routes --expanded`