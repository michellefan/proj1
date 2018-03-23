# Q0: Why is this error being thrown?
HomeController is trying to a Pokemon model that hasn't been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
HomeController's index method returns a random sample of all the trainerless pokemon in the database every time it's called.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button sends a patch request to the 'capture' path defined in routes.rb, passing in our randomly selected pokemon as the id param.

# Question 3: What would you name your own Pokemon?
all different variations of my own name

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path with id param set to the trainer in question. I saw after running rails routes that trainer_path requires an id to identify which trainer's profile to go to. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
