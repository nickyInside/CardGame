Cards
=======

This is a sample Card Game of the Standford University's online iPhone Application course . The project is driven by requirements defined in course assignments. One of the key feature of my version is that it's driven by tests from the beginning rather than simply writing code.

Main Features:
- fully test-driven model logic: each time something is being implemented the tests are written first
- granular commits: step by step addition of each little feature
- the match logic is universal for n-number of cards (2,3-card game is just an example) and still simple using simple formula 

Some of the features of this implementation:

- Full Set Card Game logic
- The set card and last flip result displayed using attributes of the NSAttributedString
- In a set game cards disappear when set picked to reduce distraction
- We use two views, but share base logic of Match game using inheritance of the set card game controller from the base (match) card game controller.
- Game Scores for Match and Set Games
- Settings tab which now allows to reset all score history.
