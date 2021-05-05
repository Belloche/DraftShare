# Zane Miller Individual Project

### Problem Statement

I'm probably considered a diehard NFL fan. I follow player drama, watch how the season unfolds, but at the end of the season I
go deep into the upcoming NFL draft. To simplify and not go full football nerd, the draft is where college players are chosen
by NFL teams, and this creates an environment on social media and sports shows where people fight over what 20 year old
is going to go at what team. The part that entices me in it is the mock drafts, where people give their predictions for
each pick in the draft, but there hasn't been an easy way for people to send mock drafts to each other without just sending
each individual pick in a tweet that gets taken the wrong way and nobody sees what you're trying to do anyway.

I figured out a few years ago that Google Sheets is surprisingly good at making a nice visual for mock drafts, but it isn't
perfect since it's all just text that's easy to accidentally delete and looks like a spreadsheet. Nobody who cares immensely
about football wants to look at a spreadsheet. I figured out how to insert images into cells and I realized it looks almost
as good as visuals that ESPN uses.

DraftShare will be a social website for NFL mock drafts where users can easily put players in whatever pick they want, to
whatever team they want. It will be easy to share to other users, so instead of building a spreadsheet or tweeting out
nothing facts you'll be able to give your view of how the draft will fall.

### Technologies/Services Used
* Project Lombok
* Hipo University API
* Bootstrap CSS Framework

I'm using Project Lombok to take care of A LOT of line length in the entities. My draft table has over 100 different,
so cutting down on that length is crucial. I also found an api of a list of colleges that will make selecting a player's
  school much easier. In order to keep css responsive I also implemented Bootstrap, that way the only element I needed
to add styling to was the createDraft form. Man I love Bootstrap!