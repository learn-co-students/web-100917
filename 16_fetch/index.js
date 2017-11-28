document.addEventListener('DOMContentLoaded', function() {
  /**

  Objectives:

  1. Run `npm install -g json-server` in your terminal
  2. Run `json-server --watch db.json`
  3. Open `http://localhost:3000/` in your browser
  3. In the console, make a request to each route and see what's defined
     http://localhost:3000/articles
     http://localhost:3000/comments
     http://localhost:3000/chefs
  4. Create the following files and require them in index.html
     articlesAdapter.js
     commentsAdapter.js
     chefsAdapter.js
  5. In each file, create a class with the same name as the file
     ArticlesAdapter
     CommentsAdapter
     ChefsAdapter
  6. In each adapter, write a class method that requests all of the data
     for that resource, e.g. "ArticlesAdapter.fetchAll"
  7. In this file, in this function, call `ArticlesAdapter.fetchAll`
     and display the HTML for each article
  8. Follow a similar pattern to add Comment and Chef information to each
     article.

  **/

  // Remove welcome message
  const times = document.querySelector(".close")
  times.addEventListener("click", function(event) {
    console.log(event.target.parentNode.remove())
  })

  // Add new post to page from form
  const newPostForm = document.getElementsByClassName('new-post-form')[0]
  const chefInput = document.querySelector('.chef-input input')
  const titleInput =  document.querySelector('.title-input input')
  const textInput =  document.querySelector('.text-input textarea')
  const dateInput = document.querySelector('.date-input input')
  const articlesSection = document.querySelector('section.articles')

  newPostForm.addEventListener('submit', function(event) {
    event.preventDefault();
    const chef = chefInput.value
    const title = titleInput.value
    const text = textInput.value.split("\n").map(function(el) { return `<p>${el}</p>` }).join("")
    const date = dateInput.value
    const chefUrl = chef.split(" ").join("-")
    const titleUrl = title.split(" ").join("-")

    const htmlToInsert = `
    <article>
      <header>
        <h3>${title}</h3>
        <address>
          <img alt="${chef} profile photo">
          <a href="${chefUrl}.html">${chef}</a>
        </address>
        <time datetime="${date}">${date}</time>
      </header>
      <section>
        ${text}
      </section>
      <footer>
        <a href="${titleUrl}.html">0 comments</a>
      </footer>
    </article>`

    articlesSection.innerHTML += (htmlToInsert)
    updateChefOptions()
  })

  // Display list of sorted, unique chef names in filter dropdown
  

})
