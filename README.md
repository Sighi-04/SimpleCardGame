# Project introduction
This is a simple card game I made for iOS following a [SwiftUI course](https://www.youtube.com/watch?v=F2ojC6TNwws&pp=qAMBugMGCgJpdBAB) from CodeWithChris on YouTube.

## Difference from the example in the course
I have changed the wallpaper, it does not have the gradient like in the course, but it has a resolution that doesn't messes with the app layout if launched on different devices like iPads or iPhones with different resolutions, added a little bit of super easy gameplay, and a reset button.

## Gameplay
I have implemented some functions to actually have some kind of gameplay. Whenever you click the "Deal" button:

 - Two random numbers, between 1 and 14 are generated, one for the cpu, and the other for the player
 - The cards change related to the numbers which got generated
 - Whoever gets the higher number, gets one point. If the numbers are the same, both the player and the CPU receive one point.
 <img src="gamegif.gif" width="290" height="628">
 
## Notes
The launch screen is currently not present because storyboard is crap, and the layout doesn't work on every device, so I just removed it for now

## Credits
- Game assets from [CodeWithChris course](https://www.youtube.com/watch?v=F2ojC6TNwws&pp=qAMBugMGCgJpdBAB)
- App and LaunchScreen icon from [Flaticon website](https://www.flaticon.com/free-icon/playing-cards_4474884?term=card+game&related_id=4474884&origin=tag)
## Done
- Game menu
- Info page

## To do
- Separate functions from ContentView
- Leaderboard, game history
