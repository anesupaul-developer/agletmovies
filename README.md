## How to run the application on your pc

1. Please ensure that your running php 8.1 and npm or yarn are installed on your machine
2. Clone the project on your machine using git clone https://github.com/anesupaul-developer/agletmovies.git
3. Copy .env.example to a new file .env
- In your terminal root folder run npm install or yarn install depending on your package manager installed.
- In your terminal root folder run composer install
- In your terminal root folder run php artisan key:generate
4. Please make sure that these parameters in your env have been set
    - DB_CONNECTION
    - DB_HOST
    - DB_PORT
    - DB_DATABASE
    - DB_USERNAME
    - DB_PASSWORD
    - MOVIES_URL
    - MOVIES_BEARER_TOKEN
    - MOVIES_IMAGE_URL

5. Set up your database agletmovies and import agletmovies-dump.sql in the root directory to your test database
6. In your terminal root folder npm run dev or yarn run dev depending on your package manager installed.
7. On a separate terminal run php artisan serve
8. Open your browser and navigate to http://localhost:8000



## Approach and thinking
1. Technologies used are PHP Vue and Inertia.
    - These are tools I am highly comfortable with and makes it easy for rapid development
    - Data from the API is flat and a relational database would be much appropriate in this instance
2. Thinking Process
    - On the frontend I used a slider like paginator as it gives a better use experience and engagement. I converted it into a
      reusable component which makes it easier to add new page pagination on the fly.
    - I used reusable components like the GlobalSearch Component to easily use the functionality on searching different pages
    - On the backend I went with an approach of combining database logic and controller logic as this is a smaller app
      In a large application I would have gone with something like Repository Pattern
    - In a more complex application I would have added tests for data integrity
    - I used Laravel Pint to format my code so in teams it can be standard

## Steps on developing the project

1. I first created an account on the db movies api website and generated a bearer token
2. I then added the credentials to the services config file for easier use
3. I then created a command to retrieve data from the api
4. After analysing the data I decided to use mysql database and created the table structure
5. I then added authentication using Laravel Breeze and added username field only to the already made boilerplate
6. I then created controllers for retrieving paginated data and added favorite functionality
7. I then created a layout for the frontend and pages required

