# Roulette
Roulette game simulation. Runs a configurable number of iterations where you can specify what you bet on and the amount you want to bet. Currently limited to placing only of each type of bet. For example, you are only able to bet on the first dozen or a particular number and not several of each. 

## Use
- Configure what you want to bet on in $BetPlace
- Configure the amount you want to bet for each in $BetAmount
- Configure your starting amount of money with $Wallet
- Configure the number of rounds you want to play with $Iterations

## Notes
- After each run the statistics for what you landed on for the most and least often are reported
- At the bottom the amount you started with, the net gain for each category, your ending amount of money, and the history of your wallets flocculation are shown
- The casino I use has 0, 00, and 000 which does not seem to be common. Remove any 0's from $Numbers as needed. This includes the '' and , characters.
