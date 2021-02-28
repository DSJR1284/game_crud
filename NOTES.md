Game CRUD Roadmap 

What do I want this app to do? 
  -Allow a user to create a game with a title genre and blurb. 
  -Example Game: Types  RPG (Role Plyaing Game (Final Fanatasy)), RTG (Real Time Game (StarCraft 2: Wings of Liberty)), Racing (Need For Speed), Sports (NBA 2k, Madden), FPS (First Person Shooter (Killzone)), Fighting (Street Fighter), Adventure( Zelda). 
  -Blurb Breif description of a game. 
  -Game Hub Place for all created games to be displayed. 

What attribute does my user need?
  -Username (string)
  -User_image aka Gamer Tag (string)
  -Password_Digest (string)
What attribute does my game need? 
  -Title (string)
  -Game_image? (string)
  -Genre (string)
  -Blurb (text)
  -User_id (forigen key)

What does my user model need? 
  Relationship: User has_many games, Games belongs_to user.
  User Model 
   -has_secure_password
   -validates_uniqueness_of
   -validates_presence_of

   Game Model
   -belongs_to 
   -validates_uniqueness_of
   -validates_presence_of     

What views do I want my app to have?
  -Welcome Page (Welcome Message - Links to Sign Up or Log In)
    -Login In
    -Join The Club 
  -Game Hub (Shows a collection of all the games)
    Button for Profile Page/ Log Out
  -Profile Page (User have there own personal page with just there game)
       Buttons for Create, Edit, Delete Games, Game Hub, Log Out 

Nav Bar (User Page, Game Hub, Log Out)
*Am I protecting my app from bad data*

What do I need to add to my control action? 

Did I mount my controllers? 
Did I set my sessions? (Env file ?)
What helper methods am I going to use?
  current user, logged_in?,
Do I need Private Method? 
*Walk through code and refactor*
  -Am I repeating myself?
  -Am I protecting my users games?

  How do I want to Route this app? 
    When new users sign up 
      -Login Page (Test that they have succefully signed up)
    When user logs in 
      -Profile Page (Display there games)
      -Link to Game Hub
      



