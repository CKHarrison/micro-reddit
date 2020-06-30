# README - Micro Reddit

This is a project from [TheOdinProject](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-with-active-record-ruby-on-rails?ref=lnav)
that focuses on building models in Active Record, and their associations. Everything is done through the rails console.

In this project a user can be created, requiring a unique username, password, and email.
That user can create Posts which contain a title and a body, and other users can comment on that post.
A user has many posts, and has many comments. A post belongs to a user and can have many comments.
Comments belong to both a user and a post.

##Creating a user
````
u = User.new(username: "chris", email: "chris@example.com", password: "password") 
>> u2.valid?
=> true
>> u2.save
````
## Creating a post
````
>> p1 = Post.new(title: "First Post", body: "Here is the body of the first post", user_id: 1)
>> p1.valid?
=> true
>> p1.save
>> Post.first.user
=> #<User id: 1, username: "Chris", email: "chris@example.com", password: [FILTERED], created_at: "2020-06-30 20:33:18", updated_at: "2020-06-30 20:33:18">
````
## Creating a comment
````
>> comment = Comment.new(body: "This is a great post!", user_id: 1, post_id: 1)
>> comment.valid?
=> true
>> comment.save
````

## Bringing it all together
````
>> u = User.first
> c1 = u.comments.first
> #<Comment id: 2, body: "This is a great post!", user_id: 1, post_id: 1, created_at: "2020-06-30 22:24:31", updated_at: "2020-06-30 22:24:31">
>> c1.post
=> #<Post id: 1, title: "First Post", body: "Here is the body of the first post", created_at: "2020-06-30 21:33:26", updated_at: "2020-06-30 21:33:26", user_id: 1>
````
