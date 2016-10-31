<#====================================================|>
    By APoorv Verma [AP] for Data 101 Review
    AP-COMPILER_FLAGS|A(?:)
<#====================================================#>
Param([Switch]$TestMode,[Switch]$InOrder)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIElucHV0LVByb21wdCB7cGFyYW0oW1ZhbGlkYXRlTm90TnVsbG9yRW1wdHkoKV1bU3RyaW5nXSRQcm9tcHQgPSAiRW50ZXIgVGV4dCA6ICIpDQoNCiAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgJFByb21wdA0KICAgICRSZVJlZ1ggPSAnW15ceDAxLVx4MDhceDEwLVx4ODBdKycjJ1teXHdcLl0nIFvQkC3Rj9CB0ZFdDQogICAgJFRyU3RyaW5nID0gIiINCiAgICAkaVBvc3ggPSBbQ29uc29sZV06OkN1cnNvckxlZnQNCiAgICAkaVBvc3kgPSBbQ29uc29sZV06OkN1cnNvclRvcA0KICAgICRDdmlzID0gW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlDQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEZhbHNlDQogICAgJENvdW50ID0gMTskU2xlZXAgPSAwDQogICAgV2hpbGUgKCRUcnVlKSB7DQogICAgICAgIGlmICgkY291bnQgLWd0IDUwMCkgeyRTbGVlcCA9IDEwMH0NCiAgICAgICAgaWYgKCRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlEb3duLE5vRWNobyIpOyRDb3VudD0wOyRTbGVlcD0wfSBlbHNlIHskQ291bnQrKztTdGFydC1TbGVlcCAtbSAkU2xlZXA7Y29udGludWV9DQogICAgICAgIGlmIChLZXlQcmVzc2VkICJ+fkJhY2tTcGFjZX5+IiAkU3RvcmUpIHtpZiAoJHN0b3JlLkNvbnRyb2xLZXlTdGF0ZSAtbWF0Y2ggImN0cmwiKSB7JFRyU3RyaW5nPSIifSBlbHNlIHskVHJTdHJpbmcgPSA/OiAoJFRyU3RyaW5nLkxlbmd0aCAtZXEgMCl7IiJ9eyRUclN0cmluZy5zdWJzdHJpbmcoMCwkVHJTdHJpbmcuTGVuZ3RoLTEpfX19DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5TcGFjZX5+IiAkU3RvcmUpIHskVHJTdHJpbmcgKz0gIiAifQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RXNjYXBlfn4iICRTdG9yZSkgeyRUclN0cmluZz0iIjticmVha30NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVOVEVSfn4iICRTdG9yZSkge1dyaXRlLUhvc3QgIiI7YnJlYWt9IGVsc2UgDQogICAgICAgIHskVHJTdHJpbmcgKz0gJFN0b3JlLkNoYXJhY3RlciAtcmVwbGFjZSAoJFJlUmVnWCwnJyl9DQogICAgICAgICR3dCA9IFtDb25zb2xlXTo6QnVmZmVyV2lkdGggLSAkUHJvbXB0Lmxlbmd0aCAtIDENCiAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JsZWZ0ID0gJGlQb3N4DQogICAgICAgIFtDb25zb2xlXTo6Q3Vyc29yVG9wID0gJGlQb3N5DQogICAgICAgIGlmICgkd3QtJFRyU3RyaW5nLkxlbmd0aCAtbHQgMCkgew0KICAgICAgICAgICAgJHRiPSIiDQogICAgICAgICAgICAkdHQ9Ii4uLiIrJFRyU3RyaW5nLnN1YnN0cmluZygkVHJTdHJpbmcuTGVuZ3RoLSR3dCszKQ0KICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgJHRiPSIgIiooJHd0LSRUclN0cmluZy5MZW5ndGgpDQogICAgICAgICAgICAkdHQ9JFRyU3RyaW5nDQogICAgICAgIH0NCiAgICAgICAgJGZjb2wgPSBbY29uc29sZV06OkZvcmVncm91bmRDb2xvcg0KICAgICAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgLWYgJGZDb2wgJHR0JFRiDQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRDdmlzDQogICAgcmV0dXJuICRUUlN0cmluZw0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gUHJpbnQtTGlzdCB7cGFyYW0oJHgsIFtTd2l0Y2hdJEluUmVjdXJzZSkNCg0KICAgIGlmICgkeC5jb3VudCAtbGUgMSkge3JldHVybiA/OigkSW5SZWN1cnNlKXskeH17IlskeF0ifX0gZWxzZSB7DQogICAgICAgIHJldHVybiAiWyQoKCR4IHwgJSB7UHJpbnQtTGlzdCAkXyAtSW5SZWN1cnNlfSkgLWpvaW4gJywgJyldIg0KICAgIH0NCn0KCmZ1bmN0aW9uIEFsaWduLVRleHQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nW11dJFRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0NlbnRlcicpDQoNCiAgICBpZiAoJFRleHQuY291bnQgLWd0IDEpIHsNCiAgICAgICAgJGFucyA9IEAoKQ0KICAgICAgICBmb3JlYWNoICgkbG4gaW4gJFRleHQpIHskQW5zICs9IEFsaWduLVRleHQgJGxuICRBbGlnbn0NCiAgICAgICAgcmV0dXJuICgkYW5zKQ0KICAgIH0gZWxzZSB7DQogICAgICAgICRXaW5TaXplID0gJChHZXQtSG9zdCkuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aA0KICAgICAgICBpZiAoKCIiKyRUZXh0KS5MZW5ndGggLWdlICRXaW5TaXplKSB7DQogICAgICAgICAgICAkQXBwZW5kZXIgPSBAKCIiKTsNCiAgICAgICAgICAgICRqID0gMA0KICAgICAgICAgICAgZm9yZWFjaCAoJHAgaW4gMC4uKCgiIiskVGV4dCkuTGVuZ3RoLTEpKXsNCiAgICAgICAgICAgICAgICBpZiAoKCRwKzEpJSR3aW5zaXplIC1lcSAwKSB7JGorKzskQXBwZW5kZXIgKz0gIiJ9DQojICAgICAgICAgICAgICAgICIiKyRqKyIgLSAiKyRwDQogICAgICAgICAgICAgICAgJEFwcGVuZGVyWyRqXSArPSAkVGV4dC5jaGFycygkcCkNCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgIHJldHVybiAoQWxpZ24tVGV4dCAkQXBwZW5kZXIgJEFsaWduKQ0KICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgaWYgKCRBbGlnbiAtZXEgIkNlbnRlciIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCIgIipbbWF0aF06OnRydW5jYXRlKCgkV2luU2l6ZS0oIiIrJFRleHQpLkxlbmd0aCkvMikrJFRleHQpDQogICAgICAgICAgICB9IGVsc2VpZiAoJEFsaWduIC1lcSAiUmlnaHQiKSB7DQogICAgICAgICAgICAgICAgcmV0dXJuICgiICIqKCRXaW5TaXplLSgiIiskVGV4dCkuTGVuZ3RoLTEpKyRUZXh0KQ0KICAgICAgICAgICAgfSBlbHNlIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCRUZXh0KQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSAtb3IgJHRleHQuR2V0VHlwZSgpLk5hbWUgLW1hdGNoICJcW1xdJCIpIHtyZXR1cm4gJFRleHQgfD97IiRfIn18ICUge1dyaXRlLUFQICRfIC1Ob1NpZ246JE5vU2lnbiAtUGxhaW5UZXh0OiRQbGFpblRleHQgLUFsaWduICRBbGlnbn19DQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW5vdG1hdGNoICJeKCg/PE5OTD54KXwoPzxOUz5ucz8pKXswLDJ9KD88dD5cPiopKD88cz5bK1wtIVwqXCNcQF0pKD88dz4uKikiKSB7cmV0dXJuICRUZXh0fQ0KICAgICR0YiAgPSAiICAgICIqJE1hdGNoZXMudC5sZW5ndGg7DQogICAgJENvbCA9IEB7JysnPScyJzsnLSc9JzEyJzsnISc9JzE0JzsnKic9JzMnOycjJz0nRGFya0dyYXknOydAJz0nR3JheSd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoJE5vU2lnbiAtb3IgJE1hdGNoZXMuTlMpIHsiIn0gZWxzZSB7IlskU2lnbl0gIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9ICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiO2lmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpTZXQtQWxpYXMgPzogSW52b2tlLVRlcm5hcnk=")))
# ========================================END=OF=COMPILER===========================================================|

$q = @"

1. P value of 0.05 means

a) There is 5% chance that our claim is correct
b) There is a 95% chance that our claim is correct
* c) If our claim was incorrect, then we?d expect to encounter a dataset like the one we observed no more than 5% of the time.  
d) The results are random



2. Matrix can only store numerical values



a. true

* b. false


3. Data Frame can store both categorical and numerical values in the same time


*a. true

b. false



4. Merge allows


a. Multiplying two vectors
b. To Add two samples of data
* c. To Combine two frames


5. Permutation tests intends to


a. Prove that order in which frame elements are added to it is irrelevant

*b. Show how often our result can come by random chance

c. Every permutation of data provides the same result


6. IQR stands for

a. Interval Quantity Ratio


*b. Inter Quartile Range


c. International Query Register


7. You want to see if salary increases with age of a person. You will use

a. Boxplot

b. Histogram

*c. Scatter plot

d. Bargraph


8. You want to determine cold countries from warm countries by ploting daily temprature aggregates for each season.
what plot would you use?

a. Histogram

b. Scatter plot

(possible) c. Mosaic Plot    

*d. Boxplot


9. You want to plot percentage of wins of one NBA team over another, you will use

a. Scatter plot

b. Boxplot 

*c. Mosaic plot

*d. Bar graph

*e. Pie chart



10. Summary of poltical election results shows how many (number) votes each candidate won in each state. You would plot using



a. Boxplot

*b. Mosaic Plot

c. Scatter Plot

d. Histogram




11. Clicker works in this class rather erratically. Suppose I measure number of students in class each day, binary variable was projector on/off? and did clicker work (did or did not).
I want to find out if there is any possible explanation of clicker malfunction having to do with number of students in classs (Blue Tooth interference from their 
smart phones) or Projector being on/off.
For example: "if projector is on" or "if number of students > 5 then clicker will work only 50% of the time (base station will collect votes, not individual clicker units)". Otherwise clicker base station will work 
95% of the time.

What plot should I use?


a. Scatter plot
b. Bar graph
*c. Box Plot
*d. Mosaic Plot

DISCUSSION: Scatter Plot will not work because there is only one numerical variable here. Mosaic plot could work when checking on if projector has anything to
do with clicker malfunction. Make contingency table through mosaic 2 x2 with projector on/off and clicker working/notworking
You can also use Box Plot for Number of students VS clicker (True/False). --ADDED ANS [By: AP]

12. I have data on traffic numbers in NYC tunnels along with the weather conditions (temprature, wind speed). What plot(s) would you use to see if there is any relationship 
between these three variables?

* a. Scatter plot(s)
b. Bar graphs(s)
c. Box Plot(s)
d. Mosaic Plot(s)
 ---------------------------------------------------------------------
1. Which of these functions is not related to plotting?
(a) abline()
(b) dev.off()
(c) histogram()
(d) curve()
*(e) lda()

2. What would R say, if sum(c(T,F,T)) is entered to the console?
(a) [1] 0
(b) [1] 1
*(c) [1] 2
(d) [1] 3
(e) Something else.

3. Which of the following is a correct way to select 2 rows from the data frame suarez?
(a) suarez(1:2)
(b) suarez[,c(1,2)]
(c) suarez[2,2]
*(d) suarez[1:2,]
(e) suarez[2,]

4. Suppose w <- c(1,0,-3,-2,10) is entered into the R console. What would R say if you
>. enter w[w == 0]?
(a) [1] FALSE TRUE FALSE FALSE FALSE
(b) [1] 1 -3 -2 10
*(c) [1] 0
(d) [1] 1 0 -3 -2 10
(e) Something else.

5. True or false: Permutation tests can only be used for continuous variables.
(a) True.
*(b) False.
6. True or false: t-tests are appropriate for hypothesis testing problems where the standard
>. deviation is known; z-tests are appropriate for hypothesis testing problems where the standard
>. deviation is unknown.
(a) True.
*(b) False.
7. Suppose that z-values are obtained from two hypothesis tests (Test 1 and Test 2), which are then used to compute p-values. The z-values and p-values are represented in the plots below. Which of the following statements best describes the results of these tests?
(a) The p-value from Test 1 is smaller than that from Test 2. Thus, the null hypothesis from Test 1 is more likely to be rejected than the null hypothesis from Test 2.
(b) The p-value from Test 1 is smaller than that from Test 2. Thus, the null hypothesis from Test 2 is more likely to be rejected than the null hypothesis from Test 1.
(c) The p-value from Test 2 is smaller than that from Test 1. Thus, the null hypothesis from Test 1 is more likely to be rejected that the null hypothesis from Test 2.
*(d) The p-value from Test 2 is smaller than that from Test 1. Thus, the null hypothesis from Test 2 is more likely to be rejected that the null hypothesis from Test 1.
8. Linear regression is a popular method for prediction problems, which easily implemented
>. in R using the function lm(). Linear regression is most appropriate for problems where the
>. goal is to predict a:
*(a) Continuous outcome.
(b) Categorical outcome.
(c) Ordinal outcome.
(d) Multivariate outcome.
9. Which of the following best describes the relationship between decision trees and random
>. forest?
(a) Random forest combines features of decision trees and linear regression.
(b) Decision trees are a more general version of random forest.
(c) Random forest is for random data; a decision tree is for non-random data.
*(d) Random forest is a method for creating and combining many different decision trees in order to improve predictions.
(e) Random forests are endangered in the Amazon.
10. Decision trees and linear regression are different statistical methods that are easy to implement in R and can be used for prediction problems. Which of the following statements is FALSE?
(a) Decision trees can be used for prediction problems with either categorical or continuous outcomes.
(b) Linear regression tends to perform better when the outcome and predictors have a linear relationship.
(c) Decision trees and linear regression can be combined to create improved prediction rules.
*(d) If used by themselves, linear regression almost always performs worse than decision trees.
(e) Decision trees are especially useful for detecting nonlinear patterns in the data.
11. Which of the following statements about cross-validation is FALSE?
(a) Cross-validation is useful for estimating the error-rate of a prediction rule, before you have access to the actual test data.
(b) Cross-validation is designed to help minimize problems with overfitting.
*(c) When comparing many prediction rules, the rule with the lowest cross-validation errorrate always has the lowest actual error-rate on the test data.
(d) If you perform cross-validation several times, using the same data and prediction rules, you might get different results.
12. Suppose that you conduct 1,000 hypothesis tests and obtain a single p-value from each
>. test. Suppose that all of the null hypotheses are true. About how many of the p-values would
>. you expect to be less that 0.05?
(a) 100
*(b) 50
(c) 25
(d) 5
(e) 0
13. Suppose that you conduct 10,000 hypothesis tests and obtain a single p-value from each test. The Bonferroni method is a simple method to control for multiple comparisons. Which of the following statements best describes how to implement the Bonferroni method in this setting?
(a) Divide each p-value by 10,000.
*(b) Multiply each p-value by 10,000.
(c) Multiply each p-value by 500.
(d) Only reject tests with p-value less that 0.001.
(e) Reject tests with the 500 smallest p-values.
14. Consider the following modified version of the Hall problem:
>|     Suppose you?re on a game show, and you?re given the choice of three doors: Behind
>|     one door is a car; behind the others, goats. You pick a door, say No. 1. The host,
>|     who knows what?s behind the doors, opens another door, say No. 3 ? door No. 3
>|     might have a goat behind it or it might have the car behind it. If door No. 3 has
>|     the car behind it, then you lose. If door No. 3 has the goat behind it, then you have
>|     the opportunity to switch doors, i.e. change your choice to door No. 2. Is it to your
>|     advantage to switch your choice, if the host reveals a goat behind door No. 3?
(a) Yes.
(b) No.
*(c) It depends.
15. Consider the data frame in R dd:
>| > dd
>| u v w y
>| 1 5 0 100 0
>| 2 4 0 0 10
>| 3 3 0 0 20
>| 4 2 0 0 30
>| 5 1 0 0 40
>| 6 0 1 0 50
>| If you run a linear regression model in R with the command lm(y~.,data=dd), what variable
>. will be used as the outcome (to be predicted) and what variables will be used as the predictors
>. (to predict the outcome)?
(a) Outcome, y; predictors, u, v, w, y.
*(b) Outcome, y; predictors, u, v, w.
(c) Outcome, y; predictors, none.
(d) Outcome dd; predictors, u, v, w, y.
(e) Outcome u; predictors, v, w, y.
16. The R function randomForest() is used to create a random forest for prediction problems.
>. One option for the randomForest() function is ntree. What does this option control?
(a) The size of each tree in the random forest.
*(b) The number of trees in the random forest.
(c) The number of possible values that the random forest predictions may take.
(d) The minimum number of times to run cross-validation for determining the best random forest.
(e) The minimum number of leaf (terminal) nodes in the random forest
17. Consider the Marriage data, with variables STATUS, GAGE, BAGE, BP, and SP. Suppose we
>.wish to predict STATUS using the other variables in the dataset, and use the rpart() function
>.in R to create a prediction rule. Suppose that the R output from rpart() is as follows:
>|    1) root 986 464 Married (0.47058824 0.52941176)
>|        2) GAGE< 58.5 797 389 Married (0.48808030 0.51191970)
>|            4) BAGE>=52.5 130 35 Divorced (0.73076923 0.26923077)
>|                8) GAGE< 48.5 79 5 Divorced (0.93670886 0.06329114) *
>|                9) GAGE>=48.5 51 21 Married (0.41176471 0.58823529) *
>|            5) BAGE< 52.5 667 294 Married (0.44077961 0.55922039)
>|                10) GAGE>=52.5 75 25 Divorced (0.66666667 0.33333333)
>|                    20) BAGE< 44 38 3 Divorced (0.92105263 0.07894737) *
>|                    21) BAGE>=44 37 15 Married (0.40540541 0.59459459) *
>|                11) GAGE< 52.5 592 244 Married (0.41216216 0.58783784)
>|                    22) GAGE< 18.5 9 2 Divorced (0.77777778 0.22222222) *
>|                    23) GAGE>=18.5 583 237 Married (0.40651801 0.59348199)
>|                        46) BAGE>=49.5 32 14 Divorced (0.56250000 0.43750000)
>|                            92) GAGE< 42 14 1 Divorced (0.92857143 0.07142857) *
>|                            93) GAGE>=42 18 5 Married (0.27777778 0.72222222) *
>|                        47) BAGE< 49.5 551 219 Married (0.39745917 0.60254083)
>|                            94) GAGE>=49.5 29 13 Divorced (0.55172414 0.44827586)
>|                                188) BAGE< 43.5 12 1 Divorced (0.91666667 0.08333333) *
>|                                189) BAGE>=43.5 17 5 Married (0.29411765 0.70588235) *
>|                            95) GAGE< 49.5 522 203 Married (0.38888889 0.61111111)
>|                                190) GAGE< 48.5 494 197 Married (0.39878543 0.60121457)
>|                                380) GAGE>=33.5 269 117 Married (0.43494424 0.56505576)
>|                                    760) BAGE< 31.5 64 17 Divorced (0.73437500 0.26562500) *
>|                                    761) BAGE>=31.5 205 70 Married (0.34146341 0.65853659)
>|                                        1522) GP=A 95 41 Married (0.43157895 0.56842105)
>|                                            3044) BP=A 50 18 Divorced (0.64000000 0.36000000) *
>|                                            3045) BP=B 45 9 Married (0.20000000 0.80000000) *
>|                                        1523) GP=B 110 29 Married (0.26363636 0.73636364) *
>|                                381) GAGE< 33.5 225 80 Married (0.35555556 0.64444444)
>|                                    762) BAGE>=34.5 45 11 Divorced (0.75555556 0.24444444) *
>|                                    763) BAGE< 34.5 180 46 Married (0.25555556 0.74444444) *
>|                            191) GAGE>=48.5 28 6 Married (0.21428571 0.78571429) *
>|        3) GAGE>=58.5 189 75 Married (0.39682540 0.60317460)
>|            6) BAGE< 51.5 41 8 Divorced (0.80487805 0.19512195) *
>|            7) BAGE>=51.5 148 42 Married (0.28378378 0.71621622) *
>|What would the predicted STATUS be for a couple with BAGE = 45, GAGE = 52, BP = A, and BP =
>.B?
*(a) Married
(b) Divorced
18. Consider the Professor Moody data, with variables SCORE, GRADE, ATTENDANCE, ALERT,
>.ASKQUESTIONS. Suppose we wish to predict GRADE using the other variables in the dataset, and
>.use the rpart() function in R to create a prediction rule. Suppose that the R output from
>.rpart() is as follows:
>|    1) root 215 112 F (0.17209302 0.20930233 0.13953488 0.47906977)
>|        2) SCORE>=49 111 66 B (0.33333333 0.40540541 0.24324324 0.01801802)
>|            4) SCORE>=63.5 80 40 B (0.46250000 0.50000000 0.03750000 0.00000000)
>|                8) SCORE>=88 19 1 A (0.94736842 0.05263158 0.00000000 0.00000000) *
>|                9) SCORE< 88 61 22 B (0.31147541 0.63934426 0.04918033 0.00000000)
>|                    18) ASKQUESTIONS=Frequently 18 5 A (0.72222222 0.27777778 0.00000000 0.00000000) *
>|                    19) ASKQUESTIONS=Never,Rarely 43 9 B (0.13953488 0.79069767 0.06976744 0.00000000) *
>|            5) SCORE< 63.5 31 7 C (0.00000000 0.16129032 0.77419355 0.06451613) *
>|        3) SCORE< 49 104 3 F (0.00000000 0.00000000 0.02884615 0.97115385) *
>|What would the predicted GRADE be for a student with SCORE=75, ATTENDANCE=Perfect, ALERT=Texting,
>.and ASKQUESTIONS=Never?
(a) A
*(b) B
(c) C
(d) F
19. Consider a version of the Marriage dataset, with variables STATUS, AGEDIFF, and PERSONALITY.
Suppose we wish to predict STATUS using the other variables, and use the rpart() function in
R to create a prediction rule. Suppose that the R output from rpart() is as follows:
>|1) root 986 464 Married (0.4705882 0.5294118)
>|  2) AGEDIFF< -10.5 142 15 Divorced (0.8943662 0.1056338) *
>|  3) AGEDIFF>=-10.5 844 337 Married (0.3992891 0.6007109)
>|      6) AGEDIFF>=10.5 127 17 Divorced (0.8661417 0.1338583) *
>|      7) AGEDIFF< 10.5 717 227 Married (0.3165969 0.6834031)
>|          14) PERSONALITY=match 365 175 Divorced (0.5205479 0.4794521) *
>|          15) PERSONALITY=diff 352 37 Married (0.1051136 0.8948864) *
>|How many leaf nodes does this tree have?
(a) 2
(b) 3
*(c) 4
(d) 5
(e) 6
20. Consider the Loan dataset, with variables LOAN, ZODIAC, FIVEELEMENTS, and MOON. Suppose
>.we wish to predict LOAN using the other variables, with the randomForest() function in R. Additionally
>.suppose that the training data is stored in the data frame train and that the testing
>.data is stored in the data frame test. In the following R code and output, randomForest() is
>.used to generate predictions for the test data twice, and the test error rate is computed each
>.time:
>|    > loan.forest <- randomForest(LOAN ~ ZODIAC + FIVEELEMENTS + MOON,data=train)
>|    > pred.forest <- predict(loan.forest,newdata=test,type="class")
>|    > mean(pred.forest != test$LOAN)
>|    [1] 0
>|    > loan.forest <- randomForest(LOAN ~ ZODIAC + FIVEELEMENTS + MOON,data=train)
>|    > pred.forest <- predict(loan.forest,newdata=test,type="class")
>|    > mean(pred.forest != test$LOAN)
>|    [1] 0.002696456
>|Note that the test error rates are different for the two sets of predictions. Which statement
>.below best applies to this code and the R output?
(a) Running randomForest() on the data changes the datasets. Thus, the two test error rates are different.
*(b) The random forest prediction rule relies on random subsampling of the data. Thus, there?s no guarantee that the test error rates will be the same.
(c) There?s an error in the code ? the test error rates should be the same
21. d <- data.frame(t=c(0,10,100),u=c("c","b","a"),v=c("a","b","c"))
>|      d["u",]
(a) [1] 0 10 100
(b) u t|n|  1 c 0|n|  2 b 10|n|  3 a 100
(c) [1] a b c|n|    Levels: a b c
(d) t u v|n|  2 10 b b
*(e) Something else.
22. d <- data.frame(t=c(0,10,100),u=c("c","b","a"),v=c("a","b","c"))
>|      d`$t
*(a) [1] 0 10 100
(b) u t|n|  1 c 0|n|  2 b 10|n|  3 a 100
(c) [1] a b c|n|    Levels: a b c
(d) t u v|n|  2 10 b b
(e) Something else.
23. d <- data.frame(t=c(0,10,100),u=c("c","b","a"),v=c("a","b","c"))
>|      d[3:1,"u"]
(a) [1] 0 10 100
(b) u t|n|  1 c 0|n|  2 b 10|n|  3 a 100
*(c) [1] a b c|n|    Levels: a b c
(d) t u v|n|  2 10 b b
(e) Something else.
24. d <- data.frame(t=c(0,10,100),u=c("c","b","a"),v=c("a","b","c"))
>|      d[2,]
(a) [1] 0 10 100
(b) u t|n|  1 c 0|n|  2 b 10|n|  3 a 100
(c) [1] a b c|n|    Levels: a b c
*(d) t u v|n|  2 10 b b
(e) Something else.
25. d <- data.frame(t=c(0,10,100),u=c("c","b","a"),v=c("a","b","c"))
>|      d[,2:1]
(a) [1] 0 10 100
*(b) u t|n|  1 c 0|n|  2 b 10|n|  3 a 100
(c) [1] a b c|n|    Levels: a b c
(d) t u v|n|  2 10 b b
(e) Something else.
26. College admission decision at Rutgers (accept/reject) and gender for 2000 applicants to the university.
(a) Box plot
(b) Bar plot
(c) Scatter plot
*(d) Mosaic plot
(e) Histogram
27. Annual income (in dollars) and age for 1000 individuals from the census.
(a) Box plot
(b) Bar plot
*(c) Scatter plot
(d) Mosaic plot
(e) Histogram
28. Average annual temperature and elevation (ft. above sea level) at 500 locations around earth.
(a) Box plot
(b) Bar plot
*(c) Scatter plot
(d) Mosaic plot
(e) Histogram
29. The frequency of sunny, partly cloudy, and cloudy days in New Brunswick during the months January-June.
(a) Box plot
*(b) Bar plot
(c) Scatter plot
(d) Mosaic plot
(e) Histogram
30. The distribution of height for the students in this class.
(a) Box plot
(b) Bar plot
(c) Scatter plot
(d) Mosaic plot
*(e) Histogram
"@.split("`n")
$Qstns = @();$curr=@{}
function Ans-Display([int]$stat) {if ($TestMode) {return};Write-AP -N ("![GUESS:] Incorrect choice","+[GUESS:] Correct choice")[$stat]}
foreach ($ln in $q) {
    if (!$ln) {continue}
    switch -regex ($ln) {
        "^(?<num>\d{1,2})\. (?<QSTN>.*)$" {if ($curr){$Qstns+=$curr};$curr=@{"QSTN"=$Matches.QSTN;"Choices"=@{};"Correct"=@{}};break}#"Num"=$matches.num;
        "^\>(\.|(?<newL>\|)) ?(?<QSTN>.*)$" {$curr.QSTN =  $curr.QSTN.substring(0,$curr.QSTN.length-1)+" $(if ($Matches.NewL){"`n"})$($Matches.QSTN)"}
        "^(?<correct>(\*|\(possible\)) ?)?\(?(?<choice>[abcdef])[\.\)] (?<ANS>.*)$" {$curr.choices.($Matches.choice)=$Matches.ANS -replace "\|n\|","`n    ";if ($Matches.correct) {$curr.correct.($matches.choice)=1};break}
    }
}
if ($curr){$Qstns+=$curr}
$Qstns=$Qstns[1..10000]
if (!$InOrder) {$Qstns = $Qstns | Sort-Object {Get-Random};Write-AP "+Your Shuffled Questions coming Up ;)"}
$bk = [Console]::ForegroundColor;[Console]::ForegroundColor="Yellow";$i=-1
$i=0;$TARGET_Q=0;foreach ($q in $Qstns) {if (++$i -lt $TARGET_Q) {continue} 
    Write-AP -n "!$i> $($q.QSTN)"
    foreach ($C in (@($q.choices.keys) | sort)) {
        Write-AP -n ">*[$c] $($q.choices.$c)"
    }
    $ans = "";while (!$ans) {
        $ans = Input-Prompt "Enter Answer: "
        if ($ans -match "exit|break|done") {$ans="X|Break";Break}
        if ($ans -match "check-\>(?<choice>\w+)") {$att++;if (!$q.correct.($Matches.Choice)) {Ans-Display 0;$Script:Incor+=,$i} else {Ans-Display 1}$Ans="X|Cont"}
        if ($ans -match "skip-\>(?<num>\d+)") {$n=$matches.Num
            if ([int]$n -le $i) {Write-AP "-Cannot Skip to the same/lower question [$n > $i]";$ans="";continue}
            $TARGET_Q = [int]$n;$ans="X|Cont"
            break
        }
    }
    if ($ans -eq "X|Cont") {Continue}
    if ($ans -eq "X|Break") {break}
    $att++;if (!$q.correct.$ans) {$Script:Incor+=,$i;Ans-Display 0} else {Ans-Display 1}
}
Write-Host ""
if (!$att) {Write-AP "+CMON Bud, Can't give up like that!"}
else {Write-AP ("+Score was [{0}/{1} = {2:P2}] Attempted[{4}/{5}], Questions you got wrong: {3}" -f ($att-$Script:Incor.length),$att,(($att-$Script:Incor.length)/$att),(Print-List $Script:Incor),$att,$Qstns.length)}
[Console]::ForegroundColor=$bk
if ($Script:Incor) {Write-Host -f cyan ((Align-Text "Correct Answers",("-"*"Correct Answers".Length)) -join "`n")}
Foreach ($i in $Script:Incor) {$q = $Qstns[$i-1]
    Write-AP -n "!$i> $($q.QSTN)"
    foreach ($C in (@($q.correct.keys) | sort)) {
        Write-AP -n ">+[$c] $($q.choices.$c)"
    }
}
