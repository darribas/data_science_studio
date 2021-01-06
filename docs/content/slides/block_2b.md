% `Unsupervised Learning`
% **Dani Arribas-Bel**

#
## The need to group data
##

<center>
*Everything should be made as simple as possible, but not simpler*
</center>

<div style="text-align:right">
<small>
Albert Einstein
</small>
</div>

## The need to group data

* The world is **complex** and **multidimensional**
* **Univariate** analysis focuses on **only one** dimension
* Sometimes, world issues are best understood as **multivariate**. E.g.

<ul class="fragment">
* Percentage of foreign-born Vs. *What is a neighborhood?*
* Years of schooling Vs. *Human development*
* Monthly income Vs. *Deprivation*
</ul>

## *Grouping* as *simplifying*

* Define a given number of categories based on **many characteristics**
  (multi-dimensional)
* Find the **category** where each observation *fits best*
* **Reduce complexity**, keep all the **relevant information**
* Produce easier-to-understand outputs

#
## Geodemographic analysis
## Geodemographic analysis

* Technique developed in 1970’s attributed to Richard Webber
* **Identify similar neighborhoods** $\rightarrow$ Target urban 
  deprivation funding
* Originated in the **Public** Sector (policy) and spread to the
  **Private** sector (marketing and business intelligence)

## {data-background=../figs/d2s3_la.jpg data-transition=none data-background-size=cover}

[Source](http://gizmodo.com/uncovering-the-early-history-of-big-data-in-1974-los-an-1712551686)

## {data-background=../figs/d2s3_oac.png data-transition=none  data-background-size=cover}

[Source](http://maps.cdrc.ac.uk)

#
## Clustering
## 

**Split** a dataset into **groups** of observations that are **similar within** the group
and **dissimilar between** groups, based on a series of **attributes**

##

**Machine learning**

<div class="fragment current-visible">
  The computer *learns* some of the properties of the dataset without the
  human specifying them
</div>

**Unsupervised**

<div class="fragment current-visible">
  There is no a-priori structure imposed on the classification $\rightarrow$
  before the analysis, no observations is in a category
</div>

## Intuition

<center>
<img src="../figs/d2s3_split.png" alt="Clustering"
style="width:750px;height:450px;"/>
</center>

## K-means <small>[[Source](https://www.youtube.com/embed/xnWFIgr34Lk)]</small>

<iframe width="750" height="450" src="https://www.youtube.com/embed/xnWFIgr34Lk" frameborder="0" allowfullscreen></iframe>

## More clustering...

* Hierarchical clustering
* Agglomerative clustering
* Spectral clustering
* Neural networks (e.g. Self-Organizing Maps)
* DBScan
* Topological Data Analysis
* ...

Different properties, different best usecases

See [interesting comparison](http://scikit-learn.org/stable/modules/clustering.html#overview-of-clustering-methods) table


#
## Examples

## {data-background=../figs/d2s3_chocolate.png data-transition=none  data-background-size=contain}
## {data-background=../figs/d2s3_spotify.png data-transition=none  data-background-size=contain}
## {data-background=../figs/d2s3_ca.png data-transition=none  data-background-size=contain}

#
## Recapitulation

* Some problems are truly **highly dimensional** and univariate representations
  are not appropriate
* **Clustering** can help reduce complexity by creating **categories** that
  retain statistical information but are easier to understand


#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Unsupervised Learning</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


