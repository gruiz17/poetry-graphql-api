# Poetry GraphQL API

Built to teach myself about how to use GraphQL with Rails.

So far, only supports querying.

Here are some examples, though:

### Getting Authors by last name:

![authors by last name](https://i.imgur.com/eIlRU2U.gif)

### Getting titles of poems authors have written:

![author poems by title](https://i.imgur.com/5JeOKfU.gif)

### Getting the lines of each poem:

![poem lines](https://i.imgur.com/5MRK1N4.gif)

### You can also get line numbers!

![poem lines and line numbers](https://i.imgur.com/j45YGPx.gif)


# Getting started

Sorry this is sparse, but just, for now:

1. `rails db:migrate` to set up the schema,
2. `rails db:seed` to set up the testing data
3. `rails s` to start up, and...
4. You're ready to send queries! Just send a query to `/graphql` and you'll see the results. 

## Querying example

1. In headers: `Content-Type`: `application/json`
2. Request URL: `http://localhost:3000/graphql`
3. For the body (in raw JSON), send this:

```
{
    "query" : "query { authors { poems { title } } }"
}
```

And you should get something like this back:

```
{
    "data": {
        "authors": [
            {
                "poems": [
                    {
                        "title": "Sonnet I"
                    },
                    {
                        "title": "Sonnet II"
                    }
                ]
            },
            {
                "poems": [
                    {
                        "title": "Lovers Infiniteness"
                    }
                ]
            }
        ]
    }
}
```



