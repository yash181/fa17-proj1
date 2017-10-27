# Q0: Why is this error being thrown?
The error is being thrown because we have not yet defined the constant Pokmemon in the Home controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
These two lines render different pokemons < % if @pokemon and current_trainer %> <p> A wild <%= @pokemon.name %> has appeared!</p>. If there exists a pokemon and a current trianer is logged in, then the pokemon name is displayed.


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This line creates a button which says, "Throw a Pokeball". When the button is clicked it redirects to the path named capture which is deifned in the routes which get executes the capture method in the pokemon controller. It passes the current pokemon for the parameter id so that the capture method in the controler can identify the pokemon using the id parameter.

# Question 3: What would you name your own Pokemon?
I would call my pokemon 'Pradusaurus'

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I used this line redirect_to trainer_path(@trainer_id). I passed the trainer_id in as a parameter for the trainer path so that it redirects to the trainer whose pokemon is being attacked by using the trainer id to identify which pokemon is being attacked.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
So everytime the interpreter runs the files, it runs a file called application.html.erb in the view -> layouts folder. This file runs all the error conditions and renders a display error message. The if condition in the create new pokemon method checks if the pokemon is saved successfully or not. If not, it runs this error message line. 

# Give us feedback on the project and decal below!
The project was quite interesting! Hope we get such guidelines for the next project too! The decal would be slightly better if you taught syntax also slightly in the course.

# Extra credit: Link your Heroku deployed app
