# Ruby on Rails Notification API Application

This Rails application is built to serve as a notification hub, allowing secure communication between services via API endpoints, utilizing JWT for authentication.

## Getting started

Prerequisites
Before you begin, ensure you have the following installed on your system:
   
    Ruby version :- 3.2.2
    Rails version :- 7.0.6

Clone this repository to your local machine:

    ```bash
    > git clone https://github.com/SammySandeep/Notification-API.git
    ```

Navigate to the project directory

    ```bash
    > cd notification_api 
    ```

Install the required gems

    ```bash
    > bundle install 
    ```    

Create a .env file at the root of your Rails project:
    
    # .env
    jwt_secret='your_jwt_secret'


Start the Rails server in port 3001:

    ```bash
    > rails server -p 3001
    ```  

Your application should now be running on http://localhost:3001/.