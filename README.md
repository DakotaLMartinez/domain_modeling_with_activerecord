# Domain Modeling With ActiveRecord

Agenda
- Present a Blueprint for Coming from a Project Idea to a Domain Model
- Apply the Blueprint to a Couple of Examples
- Implement the Blueprint for those examples
- Split into groups and sketch out a domain model.

## A Blueprint for Developing a Domain model

For this, we'll be creating a couple of markdown files to keep our notes in as we work. We'll start by describing our project idea in a file called `brainstorm.md`, we'll make a list of the key features that we want and we'll answer a series of questions that will help us come up with a plan for the domain model. As we start formaling the plan, we'll sketch out some psuedocode in the `domain.md` file. We can have them open side by side as we work so we can distinguish ideas in `brainstorm.md` from our more formalized plan in `domain.md`.

### 1. Describe the App we want to build

### 2. What features could the application have? 
### 3. In the description and list above, what types of *things* have we've mentioned? (make a list below)


The *things* in this list are potential models in our program. For now, let's keep things

### 4. Go through the models two at a time and ask how they're related to one another. Make sure to talk through this from both perspectives (User has many posts, post belongs to user). If you hit many to many between two, think about what the join model should be called and add it.

### 5.Go through the models and describe any attributes they'll have (remember to add foreign keys for those models that have a reference to other models)


### 6. Revisit the list of features and see if there are additional associations that we missed that could help with the features we listed.

### 7. Take a look at our domain model and see how it feels. Could we change anything here? Leave anything out? Is there anything we can wait until later for without causing problems?
### 8. Sketch out some examples of model objects (we'll use these to create seeds later) You can use a spreadsheet for this if you like.

### 9. Build out the classes and some seeds.

As we work through these questions in English within our `brainstorm.md` file, we can fill in an overview of our domain model in `domain.md`. (We'll do this by listing our models together with their attributes and associations) After we've done an exhaustive domain model, we can also try a simplified version of it. Here we'll talk about how we could split the application into fewer pieces and what the trade-offs would be.

### Example Domains

Sometimes I find it's a bit easier to work through this process in a google sheet. The reason is you can worry less about formatting and it's easier to arrange info side by side within a spreadsheet. Building sample data this way is definitely easier.

- Messenger Application
- Recipe Manager application

