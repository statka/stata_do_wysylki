---
title: "statystyka laboratoria3"
author: "Jakub Maj"
date: "23.05.2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
Zadanie 1

Parametry wymagane do okreslenia rozkladu normalnego
to wartosc oczekiwana oraz odchylenie standardowe.

$$ f(x) = \frac{1}{\sqrt{2\pi\sigma^2}}
e^{\frac{-(x-\mu)^2}{2\sigma^2}} $$

Zadanie 2

Innym testem na normalnosc rozkladu jest test Shapiro-Francia

sf.test(x)

argument x jest minimalna wartoscia potrzebna do przeprowadzenia testu.
Jest to wektor danych, ktorego liczba musi byc z przedzialu [5;500]

Zadanie 4
{r echo = FALSE}
 mHeight <- sample(170:207, 15)
 fHeight <- sample(140:180, 10)
 height <- c(mHeight, fHeight)
 gender <- c(rep("m", 15), rep("f", 10))
 myFrame <- data.frame(height <- height, gender <- gender)
 t.test(myFrame$height, mu=180)

 One Sample t-test

data:  height
t = 0.20459, df = 21, p-value = 0.8399
alternative hypothesis: true mean is not equal to 180
95 percent confidence interval:
 175.4175 185.5825
sample estimates:
mean of x 
    180.5 


Zadanie 5

 height <- c(188,165,172,160,164,175,164,178,184,203,200,193,182,187,173,183,194,180,180,187,179,180)
 sex <- c('M','K','K','K','K','M','K','M','M','M','M','M','M','M','K','M','M','M','M','M','M','M')
 
 
 test <- height.min == height.range[1]
 min(df$height)
[1] 160
 summary(df)
     height      sex   
 Min.   :160.0   K: 6  
 1st Qu.:173.5   M:16  
 Median :180.0         
 Mean   :180.5         
 3rd Qu.:187.0         
 Max.   :203.0         
 
 hist(df$height)
 boxplot(df$height)
 
 summary(df$sex)
 K  M 
 6 16 
 barplot(table(df$sex), las=1, col=c('red', 'blue'))
 legend("topleft", c('kobiety', 'm�czy�ni'), fill = c('red', 'blue'))
 
 
 kob <- c(165,172,160,164,164,173, 173)
 men <- c(188,175,178,184,203,200,193,182,187,183,194,180,180,187,179,180)
 chisq.test(cbind(kob,men))

Zadanie 6: 
 dobre <-c(40,80,60)
 zle <- c(10, 60,20)
 chisq.test(cbind(dobre, zle))

data:  cbind(dobre, zle)
X-squared = 12.214, df = 2, p-value = 0.002227
