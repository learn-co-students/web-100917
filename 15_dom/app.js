class App {
  static init() {
    // constants
    this.DEFAULT_CHEF_IMAGE = "https://randomuser.me/api/portraits/lego/8.jpg"

    // setup
    this.bindElements()
    this.loadArticleObjects()
    this.updateChefSelectOptions()
    this.attachEventListeners()
  }

  static bindElements() {
    // sections
    this.welcomeSection = document.querySelector(".welcome")
    this.articlesSection = document.querySelector('.article-list')

    // forms
    this.newPostForm = document.querySelector('.new-post-form')

    // buttons
    this.welcomeClose = document.querySelector(".close")

    // inputs
    this.chefInput = document.querySelector('.chef-input input')
    this.titleInput = document.querySelector('.title-input input')
    this.textInput = document.querySelector('.text-input textarea')
    this.dateInput = document.querySelector('.date-input input')
    this.chefSelect = document.getElementById("chef-list")

    // sorting
    this.titleSortButton = document.getElementById("sort-title")
    this.newestSortButton = document.getElementById("sort-newest")
    this.oldestSortButton = document.getElementById("sort-oldest")
    this.commentsSortButton = document.getElementById("sort-comments")
  }

  static loadArticleObjects() {
    // convert html articles to JS objects
    const articles = Array.from(document.querySelectorAll('article'))

    this.articles = articles.map(article => ({
        chef: {
          name: article.querySelector('address a').innerText,
          image: article.querySelector('address img').src || this.DEFAULT_CHEF_IMAGE
        },
        title: article.querySelector('h3').innerText,
        text: article.querySelector('section').innerText,
        date: article.querySelector('time').getAttribute("datetime"),
    }))
  }

  static updateChefSelectOptions() {
    const chefSet = this.articles.reduce((chefs, article) => {
      chefs.add(article.chef.name)
      return chefs
    }, new Set())
    const chefsArray = Array.from(chefSet)
    const template = this.selectTemplate(chefsArray)
    this.chefSelect.innerHTML = template
  }

  static attachEventListeners() {
    // handle clicking welcome section close button
    const welcomeCloseClickHandler = () => this.welcomeSection.remove()
    this.welcomeClose.addEventListener("click", welcomeCloseClickHandler)

    // handle submitting new post form
    const newPostFormSubmitHandler = (event) => {
      event.preventDefault()

      const article = {
        chef: {
          name: this.chefInput.value,
          image: this.DEFAULT_CHEF_IMAGE
        },
        title: this.titleInput.value,
        date: this.dateInput.value,
        text: this.textInput.value.split("\n").map(el => `<p>${el}</p>`).join("")
      }
      const template = this.articleTemplate(article)
      this.articlesSection.innerHTML += template
      this.articles.push(article)
      this.updateChefSelectOptions()
    }
    this.newPostForm.addEventListener("submit", newPostFormSubmitHandler)

    // handle filtering articles by chef
    const chefSelectChangeHandler = (event) => {
      const selectedChef = event.target.value;
      const filterArticlesByChef = article => article.chef.name === selectedChef
      const filteredArticles = this.articles.filter(filterArticlesByChef)
      const template = filteredArticles.map(article => this.articleTemplate(article)).join("")

      this.articlesSection.innerHTML = template
    }
    this.chefSelect.addEventListener("change", chefSelectChangeHandler)

    // sort articles alphabetically by title in ascending order
    const titleSortButtonHandler = () => {
      const articles = this.articles.sort((a, b) => a.title > b.title)
      const template = articles.map(article => this.articleTemplate(article)).join("")
      this.articlesSection.innerHTML = template
    }
    this.titleSortButton.addEventListener("click", titleSortButtonHandler)

    // sort articles chronologically by date in descending order
    const newestSortButtonHandler = () => {
      const articles = this.articles.sort((a, b) => new Date(a.date) < new Date(b.date))
      const template = articles.map(article => this.articleTemplate(article)).join("")
      this.articlesSection.innerHTML = template
    }
    this.newestSortButton.addEventListener("click", newestSortButtonHandler)

    // sort articles chronologically by date in ascending order
    const oldestSortButtonHandler = () => {
      const articles = this.articles.sort((a, b) => new Date(a.date) > new Date(b.date))
      const template = articles.map(article => this.articleTemplate(article)).join("")
      this.articlesSection.innerHTML = template
    }
    this.oldestSortButton.addEventListener("click", oldestSortButtonHandler)

    // sort articles by number of comments
    // not implemented
    // TODO: this.commentsSortButton.addEventListener("click", console.log)
  }

  static sluggify(text) {
    return text
      .split(" ")
      .join("-")
  }

  static articleTemplate({chef, title, text, date}) {
    return `
      <article>
        <header>
          <h3>${title}</h3>
          <address>
            <img src="${chef.image}" alt="${chef.name} profile photo">
            <a href="${this.sluggify(chef.name)}.html">${chef.name}</a>
          </address>
          <time datetime="${date}">${date}</time>
        </header>
        <section>
          ${text}
        </section>
        <footer>
          <a href="${this.sluggify(title)}.html">0 comments</a>
        </footer>
      </article>`
  }

  static selectTemplate(chefs) {
    const options = chefs.map(chef => `<option>${chef}</option>`).join("")

    return `<select>${options}</select>`
  }
}

document.addEventListener("DOMContentLoaded", () => App.init())
