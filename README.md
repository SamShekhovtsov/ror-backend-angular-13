# README

This is Demo API built by Semen Shekhovtsov for Angular 13 frontend

Demo API has root Url: [Ruby on Rails backend](https://ror-backend-angular-13.herokuapp.com "Ruby on Rails backend")   

Blog model is following { "id": integer, "title": string, "content": string } , for example: {"id":1,"title":"Blog one","content":"Blog 1 Test Sem"}

The API provides CRUD endpoints:

* List of all Blogs: [List of blogs](https://ror-backend-angular-13.herokuapp.com/blogs.json "blogs list")

* Get particular blog using Blog ID: /blogs/\[id\].json for example: https://ror-backend-angular-13.herokuapp.com/blogs/1.json

* Update blog: UPDATE to Url /blogs/ {"id":1,"title":"Blog one updated","content":"Blog 1 Test Sem updated"}

* Create Blog POST to Url /blogs/ {"title":"Create new Blog","content":"Create new content"}

* Delete Blog DELETE to Url /blogs/ {"id":1}
