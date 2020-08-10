## ActiveRecord basics boilerplate

This is a minimalist implementation of ActiveRecord with one `Character` model to live-code a demo for @LeWagon students, part of [Karr examples](https://github.com/lewagon/karr-examples), working with Sinatra.

- clone the repo
- run `rake db:create` to create your db
- run your migrations with `rake db:migrate`

Now you can play with the `Restaurant` model:

```bash
rake console
```

To launch a Sinatra server just run this and open a web browser at [http://localhost:4567](http://localhost:4567):

```bash
bundle exec ruby app.rb
```

Enjoy!

## We covered: 
- Sinitra
- Embedded ruby
- Get & Post routes
