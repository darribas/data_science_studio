% Thoughts on Modeling
% Data Science Studio

#
## The "Two Cultures"
## {data-background=../figs/d3s1_breiman.png data-background-size=contain data-transition=none}

##

![](../figs/d3s1_econometrics.png)

##
![](../figs/d3s1_by.jpg)

##

$$
y = \beta X + \epsilon
$$

- Inference ($\beta$)
- Prediction ($y$)

#
## Modeling

## Modeling

<CENTER>
$$
y = f(X)
$$
</CENTER>

**`Regression`** $\; \rightarrow \; f(X) = \alpha + \beta X + \epsilon$

**`CART`** $\; \rightarrow \; f(X) =$ Tree

**`Random Forest`** $\; \rightarrow \; f(X) =$ Tree Ensemble

**`Gradient boost`** $\; \rightarrow \; f(X) =$ Sequence of predictors (e.g. trees)

## Regression Trees

<iframe width="560" height="315" src="https://www.youtube.com/embed/w4MnOA14pYs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

## Random Forest

* Several regression trees
* Random subsets of $N$ and $k$
* Averaged for predictions

#
## Today

- Baseline model ($\beta$ + $y$)
- Predictive checking ($\beta$ + $y$)
- Uncertainty ($\beta$)
- Model performance ($y$)
- Fitting Random Forests
- Overfitting & Cross-Validation ($y$)

