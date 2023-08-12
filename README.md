# Roulette
Roulette game simulation. Runs a configurable number of iterations where you can specify what you bet on and the amount you want to bet. Currently limited to placing only of each type of bet. For example, you are only able to bet on the first dozen or a particular number and not several of each. 

## Versions
| File | Description | All the same Picks | (C)ombined Wallet/(S)tarting Wallet/(W)innings Only |
| ---- | ----------- | ------------------ | --------------------------------------------------- |
| [Roulette](/Roulette.ps1) | A game of roulette where you bet the same dollar amount each round | X | C |
| [Roulette_Percent_Bet_CombinedWallet](/Roulette_Percent_Bet_CombinedWallet.ps1) | A game of roulette where you bet the same percentage of your wallet total each round  | X | C |

## Use
- Configure what you want to bet on in $BetPlace
- Configure the amount you want to bet for each in $BetAmount
- Configure your starting amount of money with $Wallet
- Configure the number of rounds you want to play with $Iterations

## Notes
- After each run the statistics for what you landed on for the most and least often are reported.
- After each run the amount you started with, the net gain for each category, your ending amount of money, the history of your wallet's fluctuation, and how often you had rounds with a net gain are shown.
- The casino I use has 0, 00, and 000 which does not seem to be common. Remove any 0's from $Numbers as needed. This includes the '' and , characters.

## Example Output
![Pic1](/Examples/1.png)
![Pic2](/Examples/2.png)

## To Do
- Add ability for placing several bets of each type (Betting on 2 different columns, 3 different numbers, etc.)
- Add ability for betting different amounts for each type ($3 on 5, $7 on 2, $10 on row 2, $15 on row 3, etc.)
- Least occurring X should display instances of 0 instances rather than just the lowest value in the play (Output shows 1 occurrence of row 3 as the lowest but row 2 never showed up in any play thus making it 0 and what should be displayed instead)
- Add various splitting abilities
