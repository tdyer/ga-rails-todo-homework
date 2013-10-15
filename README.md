## Create a TODO application with Rails.

### Requirements:
Install the rails gem.

### Step One:
Create a new rails application with the *rails new* command named todo_app. This app should *not* have a test directory and it should use postgresql as the database.

Hint: *(run rails --help to see what options are needed)*. 
### Step Two: 
Modify the database configuration file, database.yml, so that it doesn't need a user or password.
    
### Step Three:
Create the database with rake. 

Hint: *(rake -T to see all the rake commands)*
	
### Step Four:
Create a migration for Todo tasks. Each Task should have a short description, a flag indicating if the Todo 	task is complete and a date that the task is due.
    Run the Migration.

### Step Five:
Create a model for Todo tasks. And create a seed file that will create a few of these tasks.
    

### Create CRUD actions, (index, show, new, create, edit, update and delete).
To manage these Todo tasks. This will involve creating a controller and route/s for these tasks.
	
### Extra Credit
- Reuse the view code that shows a form for the new and edit action using a view partials.

- Mark a task as complete.	
    
    