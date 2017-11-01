### Sinatra Forms
---
* **Deliverables**
  1. ~~As a site visitor, I should be able to see a list of authors~~
  1. ~~As a site visitor, I should be able to see a list of books~~
  1. ~~I should be able to click on each book title to see more information about that book~~
  1. As a site visitor, I should be able to see a form where I create a book. When I create a book I can associate it with an existing author
  1. I should have full CRUD functionality for Authors
  1. I should have full CRUD functionality for Books
  1. I should be able to associate a Genre with a book
* **What routes do I need?**
* **What views do I need?**

* REST
  * Representational State Transfer
  * Convention to map routes/actions/HTTP methods to resources

    Index   GET     '/authors'          Show all of one resource
    Show    GET     '/authors/:id'      Show one of one resource
    New     GET     '/authors/new'      Show the form to create one resource
    Create  POST    '/authors'          Create the resource from the form
    Edit    GET     '/authors/:id/edit' Show the form to edit one resource
    Update  PATCH   '/authors/:id'      Updates the resource from the form
    Delete  DELETE  '/authors/:id'      Deletes the resource (by ID)
