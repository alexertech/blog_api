# Ruby on Rails Blog API

## Introduction
This is a simple Blog API developed using Ruby on Rails, implementing RESTful principles. It's designed to allow interaction with a PostgreSQL database to create, read, update, and delete blog posts. Each post contains a title, a body, and a read count with the average time a reader would take.

This is backend behaves the same as the [Java Spring Blog Api](https://github.com/alexertech/blog_api_spring), just wanted to create the same on a different technology stack.

## Technologies Used
- Ruby 3
- Ruby on Rails 7
- PostgreSQL
- RSpec for Testing

## Setup Instructions

### Prerequisites
- Ruby 3
- Ruby on Rails 7
- PostgreSQL

### Steps
1. Clone the repository to your local machine.
   ```sh
   git clone https://github.com/alexertech/blog_api.git
   cd blog_api
   ```

2. Install the required gems.
   ```sh
   bundle install
   ```

3. Setup the database.
   ```sh
   rails db:create
   rails db:migrate
   ```

4. Run the server.
   ```sh
   rails server
   ```

5. The application will be available at `http://localhost:3000`.

### Running Tests
To run the test suite, execute the following command in the project directory:
   ```sh
   rspec
   ```

## Interacting with the API using `curl`

### Fetching All Posts
```sh
curl -X GET http://localhost:3000/posts
```

### Creating a New Post
```sh
curl -X POST -H "Content-Type: application/json" -d '{"title": "Sample Post", "body": "This is a sample post."}' http://localhost:3000/posts
```

### Updating a Post
```sh
curl -X PUT -H "Content-Type: application/json" -d '{"title": "Updated Title", "body": "Updated Body"}' http://localhost:3000/posts/1
```

### Deleting a Post
```sh
curl -X DELETE http://localhost:3000/posts/1
```

### Fetching a Single Post
```sh
curl -X GET http://localhost:3000/posts/1
```

### Calculating the Read Time
```sh
curl -X GET http://localhost:3000/posts/1/read_time
```
