Game CRUD Roadmap 

What do I want this app to do? 
  -Allow a user to create a game with a title type and blurb. 
  -Game Types  RPG (Role Plyaing Game (Final Fanatasy)), RTG (Real Time Game (StarCraft 2: Wings of Liberty)), Racing (Need For Speed), Sports (NBA 2k, Madden), FPS (First Person Shooter (Killzone)), Fighting (Street Fighter), Adventure( Zelda). 
  -Blurb Breif description of a game. 

What attribute does my user need?
  -Username (string)
  -User_image? (string)
  -Password_Digest (string)
What attribute does my game need? 
  -Title (string)
  -Type (Checkboxes)
  -Blurb (text)
  -User_id (forigen key)

What does my user model need? 
  Relationship: User has_many games, Games belongs_to user.
  User Model 
   -has_secure_password
   -validates_uniqueness_of
   -validates_presence_of

   Game Model     

What views do I want my app to have?
  -Welcome Page (Allow the user to sign up or log in)  
  -Game Page (Shows a collection of all the games)
    Button for Profile Page/ Log Out
  -Profile Page (User have there own personal page with just there game)
      Create, Edit, Delete Games, Log Out 

Nav Bar (User Page, Game Page, Log Out)
*Am I protecting my app from bad data*

What do I need to add to my control action? 

Did I mount my controllers? 
Did I set my sessions? (Env file ?)
What helper methods am I going to use?
Do I need Private Method? 
*Walk through code and refactor*
  -Am I repeating myself?
  -Am I protecting my users games?


