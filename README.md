# Article App
A mini project to familiarize and practice Ruby Rails commands and structure.

### Create rails app
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

### Test app
To test the application run
```
rake test
```
An error occur saying failed to the WelcomeControllerTest#test_should_get_index
```
Error:
WelcomeControllerTest#test_should_get_index:
NameError: undefined local variable or method `welcome_index_url' for #<WelcomeControllerTest:0x000000012ddbf758>
    test/controllers/welcome_controller_test.rb:5:in `block in <class:WelcomeControllerTest>'
```
Since we change the root route from `get 'welcome/index'` to `root 'welcome#index` we need to make adjustment to WelcomeControllerTest
```
require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    # Instead of using welcome_index_url, you can use the root_url
    get root_url
    assert_response :success
  end
end
```
This will fix the test failed error

### Using Haml
Add this to gem file
```
# Use haml for format
gem "haml-rails", "~> 2.0"
gem 'html2haml'
```
Then run this on terminal
```
gem install html2haml
```
Then run `bundle install`
To convert all the .html.erb files to haml use this command
```
rails haml:erb2haml
```
For more information how to use haml go [here](https://github.com/haml/haml-rails)

### Using Bootstrap
Add this gem on Gemfile then run bundle install
```
# Use bootstrap for fast building UI
gem 'bootstrap', '~> 5.3.2'
gem 'jquery-rails'
```
Create a folder named common under /stylesheets then add main.scss and add this line
```
@import "bootstrap";
```
Then import the main.scss on application.css
```
*= require common/main
```
On application.js add this code
```
//= require jquery3
//= require popper
//= require bootstrap-sprockets
```
add bootstrap component to test if bootstrap is working

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