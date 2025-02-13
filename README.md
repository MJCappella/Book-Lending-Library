# Book Lending Library

A simple Ruby on Rails 8 application for managing a book lending library. Users can add books, track their lending history, and record when a book is borrowed and returned.

## Features

- Add, view, update, and delete books.
- Borrow books by entering a borrower's name.
- Track book lending history.
- Return books and mark them as returned.
- View borrowing history of a specific borrower.

## Prerequisites

Ensure you have the following installed:

- Ruby 3.2.2 (or later)
- Rails 8
- SQLite (default database for Rails)

## Installation

1. Clone this repository:

   ```sh
   git clone https://github.com/MJCappella/book_lending_library.git
   cd book_lending_library
   ```

2. Install dependencies:

   ```sh
   bundle install
   ```

3. Set up the database:

   ```sh
   rails db:create db:migrate
   ```

## Running the Application

Start the Rails server:

```sh
rails server
```

Then visit `http://localhost:3000` in your browser.

## Running Tests

This application includes basic tests. To run them:

```sh
rails test
```

## API Endpoints (if applicable)

- `GET /books` - List all books
- `GET /books/:id` - View a specific book
- `POST /books` - Create a new book
- `PATCH /books/:id` - Update a book
- `DELETE /books/:id` - Delete a book
- `POST /books/:book_id/borrowings` - Borrow a book
- `PATCH /borrowings/:id/return` - Return a borrowed book