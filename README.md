# My BLOG

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, the app will allow you to make them public so anyone can access them.

## Built With

- Ruby
- Rails
- PostgreSQL

## DataBase ERD

Here's the data model represented in an Entity Relationship Diagram (ERD)

![ERD Diagram](https://github.com/microverseinc/curriculum-rails/raw/main/recipe-app/images/recipe_erd_2_members.png)

<!-- ## Live Demo -->


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- A command line interface
- Install Ruby
- Install PostgreSQL database
- Have Rails set up and running

### Setup

- git clone `git@github.com:emmiiorji/recipe-app.git`
- `cd my_blog`
- Run `bundle install` to download required modules locally
- Create a `.env` file in the root directory and add your database configuration details
- The .env file should have values for the following keys DB, DB_PASSWORD, DB_USERNAME, DB_HOST and DB_PORT to correspond to the database configuration information and DB_TEST, DB_PASSWORD_TEST, DB_USERNAME_TEST, DB_HOST_TEST, DB_PORT_TEST for the test.

In the project directory, you can run:

#### `rails server`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.


#### `rspec`

Launches the test runner.

## Deployment

- Deploy on any web server that can host a Node.js runtime environment


## Author

👤 **Emmanuel Orji-Ihuoma**

- GitHub: [@emmiiorji](https://github.com/emmiiorji)
- Twitter: [@emmiiorji](https://twitter.com/emmiiorji)
- LinkedIn: [@orji-emmanuel](https://linkedin.com/in/orji-emmanuel)

👤 **Ben Kiboma**

 - GitHub:[@kiboma2021](https://github.com/kiboma2021) 
- Twitter:[@omayiobenj](https://twitter.com/omayiobenj) 
- LinkedIn:[@ben-kiboma](https://www.linkedin.com/in/ben-kiboma/) 

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/) for the guide

## 📝 License

This project is [MIT](./LICENSE) licensed.
