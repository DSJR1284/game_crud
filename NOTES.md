Game CRUD Roadmap 

What do I want this app to do? 
  -Allow a user to create a game with a title type and blurb. 
  -Game Types - RPG, Sports, FPS, Fighting, Adventure. 
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

What views do I want my app to have?
  -Welcome Page (Allow the user to sign up or log in)  
  -Game Page (Shows a collection of all the games)
    Button for Profile Page/ Log Out
  -Profile Page (User have there own personal page with just there game)
      Create, Edit, Delete Games, Log Out 

Nav Bar (User Page, Game Page, Log Out)

