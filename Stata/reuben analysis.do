** STATA SESSION 1

clear
sysuse auto

// explorative data analysis
codebook price
tab foreign
tabulate foreign
tab foreign, missing

// regression
reg price weight, noconst
reg price weight mpg

// generate a variable
generate price_sq = price^2 if price > 5000 & foreign == 1
replace price_sq = 0 if price_sq == . 
// browse
br
browse price
browse weight if price != 1000 // unequal operator 



tab foreign if price_sq == 0












