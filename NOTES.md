Game CRUD Roadmap 

What do I want this app to do? 
  -Allow a user to create a game with a game type and blurb. 
  -Game Types - RPG, Sports, FPS, Storyline, Adventure. 
  -Blurb Breif description of a game. 

What attribute does my user need?
  -Username (string)
  -User_image? (string)
  -Password_Digest (string)
What attribute does my game need? 
  -Title (string)
  -Type (Checkboxes)
  -Blurb (text)

What does my user model need? 
  Relationship: User has_many games, Games belongs_to user. 

What views do I want my user to have?

