Introduction to statistics
<hr>
The different types of <em>descriptive statistics</em> typically found in a dataset are the:
<ul>
<li>Mean</li>
<li>Variance</li>
<li>Standard Deviation</li>
<li>Correlation</li>
</ul>

Each of these <em>descriptive statistics</em> can be used as <em>inferential statistics</em>. 
<em>Inferencial statistics</em> are used to build conjectures within hypothesis tests or to build confidence intervals. 
There are a variety of distributions, but the <em>Central Limit Theorem</em> allows us to model even small data sets in terms of another distribution.

Hypothesis test are the most powerful mechanism one can use to creatively solve problems within statistics. From simple data, to
very complex data with many factors with many levels, multiple regression or non-linear regression, and analysis of variance, hypothesis testing
gives you the ability to build conjectures and make strong statements with <em>statistical signifcance</em>.

The following procedure is a very simple one, but works for just about any statistic gathered on a data set:
<ul>
<li>Prepare your conjecture, null hypothesis (the counter to what youre trying to prove; H0) and the alternative hypothesis (what you have an unusual suspicion about; Ha).</li>
<li>Establish a level of confidence you are willing to accept; alpha=0.05 is standard for 95% confidence in your conclusion.</li>
<li>Calculate the appropriate test statistic for the distribution select with the announced alpha/degrees of freedom/ect.. These are typically a z-test, t-test, X^2-test, or F-test.
This is often called the centering and normalizing phase on a given distribution (E.g., x-mu/(s/sqrt(N)).</li>
<li>Calculate the probability of seeing this new alternative mean, variance, or correlation using an inv of the distribution decided provided parameters as input (E.g., tinv(alpha, df) yields the left tail cut off extreme value). 
Decide if your centered and normalized mean, variance,std, or correlation is more extreme than the cutoff extreme value from the inverse function 
(Generally you plug in the probability of getting your alternative value in the given distribution, then comparing if it is more or less extreme)</li>
<li>If the alternative value is more extreme in either or both tails than you have sufficient evidence to reject the null.</li>
</ul>

