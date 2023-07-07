#Roulette Sim
#Notes
##When displaying a percentage, such as the percent of times a particular column occurs, it displays the percent for the single occurence and not all columns in the series combined
##Example 10 iterations, columns 1,3, and 5 occur equally at 3 times each. So columns 1,3, and 5 account for 90% of the columns. This is instead displayed as 30%. If you wanted to know the total then you would multiple by the number of columns reporting the same number of occurences

#Premade Variables
##Add/Remove '0' numbers as needed
$Numbers = @('0','00','000','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36')
[Int]$Iterations = 25
$Table = @()
$EvenOdds = @()
##Payout/Ratio
[Int]$NumberPay  = 35
[Int]$ColumnPay  = 11
[Int]$RowPay     = 2
[Int]$DozenPay   = 2
[Int]$OEPay      = 1
[Int]$ColorPay   = 1

#Money
[Int]$Wallet = 150

#Bet
$BetPlace = [PSCustomObject]@{
    Color      = 'Black' #(Black/Red/None)
    OE         = 'Even'  #(Even/Odd)
    Number     = 14      #(0-36)
    Row        = 1       #(1-3)
    Column     = 11      #(1-12)
    Dozen      = '3rd'   #(1st,2nd,3rd)
}

#Numbers are % of wallet
$BetAmount = [PSCustomObject]@{
    Color  = 20
    OE     = 30
    Number = 1
    Row    = 0
    Column = 0
    Dozen  = 5
}

Clear-Host

#Numbers and properties
$0 = [PSCustomObject]@{
    Number     = '0'
    Color      = 'None'
    Dozen      = 'None'
    Row        = 'None'
    Column     = 'None'
}

$00 = [PSCustomObject]@{
    Number     = '00'
    Color      = 'None'
    Dozen      = 'None'
    Row        = 'None'
    Column     = 'None'
}

$000 = [PSCustomObject]@{
    Number     = '000'
    Color      = 'None'
    Dozen      = 'None'
    Row        = 'None'
    Column     = 'None'
}

$1 = [PSCustomObject]@{
    Number     = '1'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 1
    Column     = 1
}

$2 = [PSCustomObject]@{
    Number     = '2'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = '2'
    Column     = '1'
}

$3 = [PSCustomObject]@{
    Number     = '3'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 3
    Column     = 1
}

$4 = [PSCustomObject]@{
    Number     = '4'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = 1
    Column     = 2
}

$5 = [PSCustomObject]@{
    Number     = '5'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 2
    Column     = 2
}

$6 = [PSCustomObject]@{
    Number     = '6'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = 3
    Column     = 2
}

$7 = [PSCustomObject]@{
    Number     = '7'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 1
    Column     = 3
}

$8 = [PSCustomObject]@{
    Number     = '8'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = 2
    Column     = 3
}

$9 = [PSCustomObject]@{
    Number     = '9'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 3
    Column     = 3
}

$10 = [PSCustomObject]@{
    Number     = '10'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = 1
    Column     = 4
}

$11 = [PSCustomObject]@{
    Number     = '11'
    Color      = 'Black'
    Dozen      = '1st'
    Row        = 2
    Column     = 4
}

$12 = [PSCustomObject]@{
    Number     = '12'
    Color      = 'Red'
    Dozen      = '1st'
    Row        = 3
    Column     = 4
}

$13 = [PSCustomObject]@{
    Number     = '13'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 1
    Column     = 5
}

$14 = [PSCustomObject]@{
    Number     = '14'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 2
    Column     = 5
}

$15 = [PSCustomObject]@{
    Number     = '15'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 3
    Column     = 5
}

$16 = [PSCustomObject]@{
    Number     = '16'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 1
    Column     = 6
}

$17 = [PSCustomObject]@{
    Number     = '17'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 2
    Column     = 6
}

$18 = [PSCustomObject]@{
    Number     = '18'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 3
    Column     = 6
}

$19 = [PSCustomObject]@{
    Number     = '19'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 1
    Column     = 7
}

$20 = [PSCustomObject]@{
    Number     = '20'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 2
    Column     = 7
}

$21 = [PSCustomObject]@{
    Number     = '21'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 3
    Column     = 7
}

$22 = [PSCustomObject]@{
    Number     = '22'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 1
    Column     = 8
}

$23 = [PSCustomObject]@{
    Number     = '23'
    Color      = 'Red'
    Dozen      = '2nd'
    Row        = 2
    Column     = 8
}

$24 = [PSCustomObject]@{
    Number     = '24'
    Color      = 'Black'
    Dozen      = '2nd'
    Row        = 3
    Column     = 8
}

$25 = [PSCustomObject]@{
    Number     = '25'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 1
    Column     = 9
}

$26 = [PSCustomObject]@{
    Number     = '26'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 2
    Column     = 9
}

$27 = [PSCustomObject]@{
    Number     = '27'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 3
    Column     = 9
}

$28 = [PSCustomObject]@{
    Number     = '28'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 1
    Column     = 10
}

$29 = [PSCustomObject]@{
    Number     = '29'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 2
    Column     = 10
}

$30 = [PSCustomObject]@{
    Number     = '30'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 3
    Column     = 10
}

$31 = [PSCustomObject]@{
    Number     = '31'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 1
    Column     = 11
}

$32 = [PSCustomObject]@{
    Number     = '32'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 2
    Column     = 11
}

$33 = [PSCustomObject]@{
    Number     = '33'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 3
    Column     = 11
}

$34 = [PSCustomObject]@{
    Number     = '34'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 1
    Column     = 12
}

$35 = [PSCustomObject]@{
    Number     = '35'
    Color      = 'Black'
    Dozen      = '3rd'
    Row        = 2
    Column     = 12
}

$36 = [PSCustomObject]@{
    Number     = '36'
    Color      = 'Red'
    Dozen      = '3rd'
    Row        = 3
    Column     = 12
}

Function LoopAddToTable {
    $Table = @()
    foreach ($Number in $Numbers) {
        $Temp = Get-Variable $Number -ValueOnly
        $Table += $Temp
        #Write-Host $Temp
    }
    $Table
}

$Table = LoopAddToTable

#Game
$StartingWallet = $Wallet

Function Play {
    $Play = @()
    $i = 0
    [string]$Global:TotalLog = @()
    [string]$Global:WalletLog = @()
    [string]$Global:NetGain = @()
    [Int]$Global:OENet = 0
    [Int]$Global:ColorNet = 0
    [Int]$Global:NumberNet = 0
    [Int]$Global:RowNet = 0
    [Int]$Global:ColumnNet = 0
    [Int]$Global:DozenNet = 0
    do {
        $RanNum = Get-Random -Minimum 0 -Maximum $Numbers.Count
        $Selection = $Table[$RanNum]
        #OE Pay
        if ($Selection.Number % 2 -eq 0) {
            $OE = 'Even'
        } else {
            $OE = 'Odd'
        }
        if ($BetPlace.OE -eq $OE) {
            $OEPayOut = ($BetAmount.OE * ($OEPay + 1))
        } else {
            $OEPayOut = 0 - $BetAmount.OE
        }
        #Color Pay
        if ($Selection.Color -eq $BetPlace.Color) {
            $ColorPayOut = [int]([int]($Wallet * ($BetAmount.Color / 100)) * ($ColorPay + 1))
        } else {
            $ColorPayOut = 0 - [int]($Wallet * ($BetAmount.Color / 100))
        }
        #Number Pay
        if ($Selection.Number -eq $BetPlace.Number) {
            $NumberPayOut = [int]([int]($Wallet * ($BetAmount.Number / 100)) * ($NumberPay + 1))
        } else {
            $NumberPayOut = 0 - [int]($Wallet * ($BetAmount.Number / 100))
        }
        #Row Pay
        if ($Selection.Row -eq $BetPlace.Row) {
            $RowPayOut = [int]([int]($Wallet * ($BetAmount.Row / 100)) * ($RowPay + 1))
        } else {
            $RowPayOut = 0 - [int]($Wallet * ($BetAmount.Row / 100))
        }
        #Column Pay
        if ($Selection.Column -eq $BetPlace.Column) {
            $ColumnPayOut = [int]([int]($Wallet * ($BetAmount.Column / 100)) * ($ColumnPay + 1))
        } else {
            $ColumnPayOut = 0 - [int]($Wallet * ($BetAmount.Column / 100))
        }
        #Dozen Pay
        if ($Selection.Dozen -eq $BetPlace.Dozen) {
            $DozenPayOut = [int]([int]($Wallet * ($BetAmount.Dozen / 100)) * ($DozenPay + 1))
        } else {
            $DozenPayOut = 0 - [int]($Wallet * ($BetAmount.Dozen / 100))
        }
        #Total Pay
        $Total = $OEPayOut + $ColorPayOut + $NumberPayOut + $RowPayOut + $ColumnPayOut + $DozenPayOut
        $Global:OENet += $OEPayOut
        $Global:ColorNet += $ColorPayOut
        $Global:NumberNet += $NumberPayOut
        $Global:RowNet += $RowPayOut
        $Global:ColumnNet += $ColumnPayOut
        $Global:DozenNet += $DozenPayOut
        $Global:Wallet = $Wallet + $Total
        #Write-Host "OE:     $OEPayOut"
        #Write-Host "Color:  $ColorPayOut"
        #Write-Host "Number: $NumberPayOut"
        #Write-Host "Row:    $RowPayOut"
        #Write-Host "Column: $ColumnPayOut"
        #Write-Host "Dozen:  $DozenPayOut"
        [string]$Global:TotalLog += $Total.ToString()
        [string]$Global:WalletLog += $Wallet.ToString()
        if ($i -lt ($Iterations - 1)) {
            [string]$Global:WalletLog += ','
            [string]$Global:TotalLog += ','
        }
        #Write-Host ("Total payout:      $" + "$Total")
        #Write-Host ("New wallet amount: $" + "$Wallet")
        $Play += $Selection
        $i++
        if ($Total -gt 0) {
            [string]$Global:NetGain += "Yes"
        }
        if ($Total -gt 0 -and $i -lt $Iterations) {
            [string]$Global:NetGain += ","
        }
    } until ($i -eq $Iterations)
    $Play
}

$Play = Play

$NetGainCount = ($Global:NetGain -split ',').count
$NetGainP     = ($NetGainCount / $Iterations).ToString("P")

#Stats

##Color
$RColorStat = ($Play | Where-Object -Property "Color" -eq "Red").count
$BColorStat = ($Play | Where-Object -Property "Color" -eq "Black").count
$NColorStat = ($Play | Where-Object -Property "Color" -eq "None").count
$RColorStatP = (($Play | Where-Object -Property "Color" -eq "Red").count / $Iterations).ToString("P")
$BColorStatP = (($Play | Where-Object -Property "Color" -eq "Black").count / $Iterations).ToString("P")
$NColorStatP = (($Play | Where-Object -Property "Color" -eq "None").count / $Iterations).ToString("P")

##Even/Odd
ForEach ($Num in $Play.Number) {
    if ($Num % 2 -eq 0) {
        $EvenOdds += 'Even'
    } else {
        $EvenOdds += 'Odd'
    }
}
$Evens = ($EvenOdds | Where-Object {$_ -eq 'Even'}).count
$Odds = ($EvenOdds | Where-Object {$_ -eq 'Odd'}).count
$EvensP = ($Evens / $Iterations).ToString("P")
$OddsP = ($Odds / $Iterations).ToString("P")

##Most occurring numbers
$MostOccurNum = ($Play | Group-Object -Property Number | Where-Object -Property Count -EQ ($Play | Group-Object -Property Number | Sort-Object -Property Count -Descending)[0].count).Name
$MostOccurNumCount = (($Play | Group-Object -Property Number | Sort-Object -Property Count -Descending)[0].Count)
$MostOccurNumP = ($MostOccurNumCount / $Iterations).ToString("P")

##Least occurring numbers
$LeastOccurNum = ($Play | Group-Object -Property Number | Where-Object -Property Count -EQ ($Play | Group-Object -Property Number | Sort-Object -Property Count)[0].count).Name
$LeastOccurNumCount = ($Play | Group-Object -Property Number | Sort-Object -Property Count)[0].count
$LeastOccurNumP = ($LeastOccurNumCount / $Iterations).ToString("P")

##Most Occurring Rows
$MostOccurRow = ($Play | Group-Object -Property Row | Where-Object -Property Count -eq (($Play | Group-Object -Property Row | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurRowCount = ($Play | Group-Object -Property Row | Sort-Object -Property Count -Descending)[0].Count * $MostOccurRow.Count
$MostOccurRowP = ($MostOccurRowCount / $Iterations).ToString("P")

##Most Occurring Rows w/o 'None'
$MostOccurRowWONone = ($Play | Group-Object -Property Row | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Row | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurRowWONoneCount = ($Play | Group-Object -Property Row | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].Count * $MostOccurRowWONone.Count
$MostOccurRowWONoneP = ($MostOccurRowWONoneCount / $Iterations).ToString("P")

##Least Occurring Rows
$LeastOccurRow = ($Play | Group-Object -Property Row | Where-Object -Property Count -eq (($Play | Group-Object -Property Row | Sort-Object -Property Count)[0].count)).Name
$LeastOccurRowCount = ($Play | Group-Object -Property Row | Sort-Object -Property Count)[0].Count * $LeastOccurRow.Count
$LeastOccurRowP = ($LeastOccurRowCount / $Iterations).ToString("P")

##Most Occurring Rows w/o 'None'
$LeastOccurRowWONone = ($Play | Group-Object -Property Row | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Row | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].count)).Name
$LeastOccurRowWONoneCount = ($Play | Group-Object -Property Row | Where-Object -Property Name -NE 'None' | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].Count * $LeastOccurRowWONone.Count
$LeastOccurRowWONoneP = ($LeastOccurRowWONoneCount / $Iterations).ToString("P")

##Most Occurring Columns
$MostOccurColumn = ($Play | Group-Object -Property Column | Where-Object -Property Count -eq (($Play | Group-Object -Property Column | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurColumnCount = ($Play | Group-Object -Property Column | Sort-Object -Property Count -Descending)[0].Count * $MostOccurColumn.Count
$MostOccurColumnP = ($MostOccurColumnCount / $Iterations).ToString("P")

##Most Occurring Columns w/o 'None'
$MostOccurColumnWONone = ($Play | Group-Object -Property Column | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Column | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurColumnWONoneCount = ($Play | Group-Object -Property Column | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].Count * $MostOccurColumnWONone.Count
$MostOccurColumnWONoneP = ($MostOccurColumnWONoneCount / $Iterations).ToString("P")

##Least Occurring Columns
$LeastOccurColumn = ($Play | Group-Object -Property Column | Where-Object -Property Count -eq (($Play | Group-Object -Property Column | Sort-Object -Property Count)[0].count)).Name
$LeastOccurColumnCount = ($Play | Group-Object -Property Column | Sort-Object -Property Count)[0].Count * $LeastOccurColumn.Count
$LeastOccurColumnP = ($LeastOccurColumnCount / $Iterations).ToString("P")

##Most Occurring Columns w/o 'None'
$LeastOccurColumnWONone = ($Play | Group-Object -Property Column | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Column | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].count)).Name
$LeastOccurColumnWONoneCount = ($Play | Group-Object -Property Column | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].Count * $LeastOccurColumnWONone.Count
$LeastOccurColumnWONoneP = ($LeastOccurColumnWONoneCount / $Iterations).ToString("P")

##Most Occurring Dozens
$MostOccurDozen = ($Play | Group-Object -Property Dozen | Where-Object -Property Count -eq (($Play | Group-Object -Property Dozen | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurDozenCount = ($Play | Group-Object -Property Dozen | Sort-Object -Property Count -Descending)[0].Count * $MostOccurDozen.Count
$MostOccurDozenP = ($MostOccurDozenCount / $Iterations).ToString("P")

##Most Occurring Dozens w/o 'None'
$MostOccurDozenWONone = ($Play | Group-Object -Property Dozen | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Dozen | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].count)).Name
$MostOccurDozenWONoneCount = ($Play | Group-Object -Property Dozen | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count -Descending)[0].Count * $MostOccurDozenWONone.Count
$MostOccurDozenWONoneP = ($MostOccurDozenWONoneCount / $Iterations).ToString("P")

##Least Occurring Dozens
$LeastOccurDozen = ($Play | Group-Object -Property Dozen | Where-Object -Property Count -eq (($Play | Group-Object -Property Dozen | Sort-Object -Property Count)[0].count)).Name
$LeastOccurDozenCount = ($Play | Group-Object -Property Dozen | Sort-Object -Property Count)[0].Count * $LeastOccurDozen.Count
$LeastOccurDozenP = ($LeastOccurDozenCount / $Iterations).ToString("P")

##Least Occurring Dozens w/o 'None'
$LeastOccurDozenWONone = ($Play | Group-Object -Property Dozen | Where-Object -Property Name -NE 'None' | Where-Object -Property Count -eq (($Play | Group-Object -Property Dozen | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].count)).Name
$LeastOccurDozenWONoneCount = ($Play | Group-Object -Property Dozen | Where-Object -Property Name -ne 'None' | Sort-Object -Property Count)[0].Count * $LeastOccurDozenWONone.Count
$LeastOccurDozenWONoneP = ($LeastOccurDozenWONoneCount / $Iterations).ToString("P")

#Output
Write-Host "
======
Color
======

Red:   $RColorStatP ($RColorStat) 
Black: $BColorStatP ($BColorStat)
None:  $NColorStatP ($NColorStat)"
Write-Host "
======
Even/Odd
======

Evens: $EvensP ($Evens)
Odds:  $OddsP ($Odds)"
Write-Host "
======
Number
======
"
Write-Host Most Occurring Number"(s)":"      "($MostOccurNum -join ',')
Write-Host "Most Occurring Number(s) Count: $MostOccurNumP ($MostOccurNumCount)
"
Write-Host Least Occurring Number"(s)":"      "($LeastOccurNum -join ',')
Write-Host "Least Occurring Number(s) Count: $LeastOccurNumP ($LeastOccurNumCount)"
Write-Host "
======
Row
======
"
Write-Host Most Occurring Row"(s)":"   "($MostOccurRow -join ',')
Write-Host "Most Occurring Row Count: $MostOccurRowP ($MostOccurRowCount)
"
Write-Host Least Occurring Row"(s)":"   "($LeastOccurRow -join ',')
Write-Host "Least Occurring Row Count: $LeastOccurRowP ($LeastOccurRowCount)
"
Write-Host "Most Occurring Row(s) w/o 'None':      "($MostOccurRowWONone -join ',')
Write-Host "Most Occurring Row(s) w/o 'None' Count: $MostOccurRowWONoneP ($MostOccurRowWONoneCount)
"
Write-Host "Least Occurring Row(s) w/o 'None':      "($LeastOccurRowWONone -join ',')
Write-Host "Least Occurring Row(s) w/o 'None' Count: $LeastOccurRowWONoneP ($LeastOccurRowWONoneCount)"
Write-Host "
======
Column
======
"
Write-Host Most Occurring Column"(s)":"   "($MostOccurColumn -join ',')
Write-Host Most Occurring Column Count: "$MostOccurColumnP ($MostOccurColumnCount)
"
Write-Host Least Occurring Column"(s)":"   "($LeastOccurColumn -join ',')
Write-Host Least Occurring Column Count: "$LeastOccurColumnP ($LeastOccurColumnCount)
"
Write-Host "Most Occurring Column(s) w/o 'None':      "($MostOccurColumnWONone -join ',')
Write-Host "Most Occurring Column(s) w/o 'None' Count: $MostOccurColumnWONoneP ($MostOccurColumnWONoneCount)
"
Write-Host "Least Occurring Column(s) w/o 'None':      "($LeastOccurColumnWONone -join ',')
Write-Host "Least Occurring Column(s) w/o 'None' Count: $LeastOccurColumnWONoneP ($LeastOccurColumnWONoneCount)"
Write-Host "
======
Dozen
======
"
Write-Host Most Occurring Dozen"(s)":"   "($MostOccurDozen -join ',')
Write-Host Most Occurring Dozen Count: "$MostOccurDozenP ($MostOccurDozenCount)
"
Write-Host Least Occurring Dozen"(s)":"   "($LeastOccurDozen -join ',')
Write-Host Least Occurring Dozen"(s)":"    $LeastOccurDozenP ($LeastOccurDozenCount)
"
Write-Host Most Occurring Dozen"(s) w/o 'None'":"      "($MostOccurDozenWONone -join ',')
Write-Host Most Occurring Dozen"(s) w/o 'None' Count":" $MostOccurDozenWONoneP ($MostOccurDozenWONoneCount)
"
Write-Host Least Occurring Dozen"(s) w/o 'None'":"      "($LeastOccurDozenWONone -join ',')
Write-Host Least Occurring Dozen"(s) w/o 'None' Count":" $LeastOccurDozenWONoneP ($LeastOccurDozenWONoneCount)"

Write-Host "
======
Betting
======
"
Write-Host ("Starting Wallet: $" + $StartingWallet)
Write-Host ""
Write-Host (("Odds/Evens Net:  $") + $Global:OENet.ToString("N0"))
Write-Host (("Color Net:       $") + $Global:ColorNet.ToString("N0"))
Write-Host (("Number Net:      $") + $Global:NumberNet.ToString("N0"))
Write-Host (("Row Net:         $") + $Global:RowNet.ToString("N0"))
Write-Host (("Column Net:      $") + $Global:ColumnNet.ToString("N0"))
Write-Host (("Dozen Net:       $") + $Global:DozenNet.ToString("N0"))

Write-Host ""
Write-Host (("Ending Wallet:   $") + $Wallet.ToString("N0"))
Write-Host ""
Write-Host ("Wallet Log:      $" + "$WalletLog")
Write-Host ""
Write-Host "Rounds with Net Gain: $NetGainP ($NetGainCount)
"
