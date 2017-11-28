// Wait for the page to load so that the JavaScript can find the elements
document.addEventListener('DOMContentLoaded', function() {



  // Convert posts to objects
  // const articles = document.querySelectorAll('article')
  // const articlesArr = Array.prototype.slice.call(articles)
  // const articleObjects = articlesArr.map(function(element) {
  //   return {
  //     chef: {
  //       name: element.querySelector('address a').innerText,
  //       image: element.querySelector('address img').src
  //     },
  //     title: element.querySelector('h3').innerText,
  //     text: element.querySelector('section').innerText,
  //     date: element.querySelector('time').getAttribute("datetime"),
  //     html: element.outerHTML
  //   }
  // })
  //

  // Get current article objects
  function getArticleObjects() {
    const articles = document.querySelectorAll('article')
    const articlesArr = Array.prototype.slice.call(articles)

    return articlesArr.map(function(element) {
      return {
        chef: {
          name: element.querySelector('address a').innerText,
          image: element.querySelector('address img').src
        },
        title: element.querySelector('h3').innerText,
        text: element.querySelector('section').innerText,
        date: element.querySelector('time').getAttribute("datetime"),
        html: element.outerHTML
      }
    })
  }


  // Listen for changes on select box and filter articles
  const articleList = document.querySelector('#article-list')
  chefOptionList.addEventListener("change", function(event) {
    const selectedChef = event.target.value;
    const filteredArticles = getArticleObjects().filter(el => el.chef.name === selectedChef)
    articleList.innerHTML = filteredArticles.map(article => article.html).join("")
  })

})
