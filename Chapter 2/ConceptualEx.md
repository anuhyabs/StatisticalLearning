# Chapter 2: Statistical Learning

### Conceptual Exercises

1. *For each of parts (a) through (d), indicate whether we would generally expect the performance of a flexible statistical learning method to be better or worse than an inflexible method. Justify your answer.*
    
    *(a) The sample size n is extremely large, and the number of predictors p is small.*
    
        Flexible Statistical Learning method is better than the inflexible method since there are a smaller number of predictors and a larger observation dataset - using the inflexible could lead to a larger reducible error. By having a large sample size, the flexible model is less likely to overfit the data and the bias would be lesser than a flexible model.
    
     
    *(b) The number of predictors p is extremely large, and the number of observations n is small.* 
    
        Flexible Statistical learning may be worse than the Inflexible method as having a large number of predictors and small observation data can most probably lead to overfitting of the data.
    
    *(c) The relationship between the predictors and response is highly non-linear.*
    
        Flexible Statistical method is better to estimate the non-linear function and to decrease the reducible error. Inflexible models cannot capture the non-linear relationship. 
    
    *(d) The variance of the error terms, i.e. σ2 = Var(ϵ), is extremely high*
    
        Inflexible method would be better. The Flexible model would try to fit the data by modeling the error term.
    
2. *Explain whether each scenario is a classification or regression problem, and indicate whether we are most interested in inference or prediction. Finally, provide n and p.* <br />
*(a) We collect a set of data on the top 500 firms in the US. For each firm we record profit, number of employees, industry and the CEO salary. We are interested in understanding which factors affect CEO salary.*
    
        Inference, Regression. n = 500,  p = 4
    
    *(b) We are considering launching a new product and wish to know whether it will be a success or a failure. We collect data on 20 similar products that were previously launched. For each product we have recorded whether it was a success or failure, price charged for the product, marketing budget, competition price, and ten other variables.*
    
        Prediction, Classification, n = 20, p = 14
    
    *(c) We are interested in predicting the % change in the USD/Euro exchange rate in relation to the weekly changes in the world stock markets. Hence we collect weekly data for all of 2012. For each week we record the % change in the USD/Euro, the % change in the US market, the % change in the British market, and the % change in the German market.*
    
        Prediction & Inference, Regression, n = weekly data for 2012 (52/53), p = 4
    
3. *We now revisit the bias-variance decomposition.
(a) Provide a sketch of typical (squared) bias, variance, training error, test error, and Bayes (or irreducible) error curves, on a single plot, as we go from less flexible statistical learning methods towards more flexible approaches. The x-axis should represent the amount of flexibility in the method, and the y-axis should represent the values for each curve. There should be five curves.
Make sure to label each one.*
    
    ![9181E70C-EA68-4822-8351-F62E25EFCA3C.png](Intro%20to%20Statistical%20Learning%20cb1e9eb8755642ecaa37da214089e38e/9181E70C-EA68-4822-8351-F62E25EFCA3C.png)
    
    *(b) Explain why each of the five curves has the shape displayed in part (a).*
    
        As the flexibility of a class of methods increases, the squared bias tends to decrease fast at first and then slows down and variance increases slowly at first and then goes up fast.
        
        The dashed line indicates the irreducible error which is the lowest achievable test MSE among all methods.
        
        As model flexibility increases the training error will decrease. The test error initially decreases but then increases as there may be overfitting of data causing large errors. Thus, the test error looks like a u-shaped curve.
    
4. *You will now think of some real-life applications for statistical learning.
(a) Describe three real-life applications in which classification might be useful. Describe the response, as well as the predictors. Is the goal of each application inference or prediction? Explain your answer.*
    
        Predicting whether a person may or may not be diagnosed with PCOS. Response: Has PCOS, does not have PCOS
        
        Predictors: hair loss, weigh gain, period cycle, period delay, acne, age, weight loss
        
        Goal: Prediction
    
    *(b) Describe three real-life applications in which regression might be useful. Describe the response, as well as the predictors. Is the goal of each application inference or prediction? Explain your
    answer.*
    
        Finding the price of properties in Seattle 
        
        Response: Price of property
        
        Predictors: Area of House, Location, No. of bedrooms etc.
        
        Goal: Prediction
    
    *(c) Describe three real-life applications in which cluster analysis might be useful.*
    
        Email Marketing
        
        Goal: finding high usage customers
        
        Predictors: % of emails, opened, mails responded too, time spent on mail
        
        Goal: Classification
    
5. *What are the advantages and disadvantages of a very flexible (versus a less flexible) approach for regression or classification? Under what circumstances might a more flexible approach be preferred to a less flexible approach? When might a less flexible approach be preferred?*
    
        The goal of using a statistical method is to estimate an unknown function f that provides some information about the dependent variable based on certain independent variables.

        Using an inflexible approach leads to a smaller range of shapes to estimate f. This kind of approach is generally used when inferences and interpretability are more important such as in cases where we want to understand the relationship between the dependent and independent variables. 

        Using a flexible approach can generate a much wider range of possible shapes to estimate f. When the primary interest is prediction it is recommended to use the most flexible method available.
    
6. *Describe the differences between a parametric and a non-parametric statistical learning approach. What are the advantages of a parametric approach to regression or classification (as opposed to a nonparametric approach)? What are its disadvantages?*
    
        A parametric statistical learning makes an assumption on the functional form of f whereas non-parametric statistical learning makes no assumptions on f. The advantage of using a parametric approach is that the problem of estimating f is now extremely simplified. Instead of having to estimate an entire p-dimensional function, we need to only estimate a set of parameters. The disadvantage of this method is that the model that is assumed may actually be too far away from the true f, in which case the estimate made will be very poor.
    
7. *The table below provides a training data set containing six observations, three predictors, and one qualitative response variable.*
    | Obs. | X1 | X2 | X3 | Y     |
    | ---- | -- | -- | -- | ----- |
    | 1    | 0  | 3  | 0  | Red   |
    | 2    | 2  | 0  | 0  | Red   |
    | 3    | 0  | 1  | 3  | Red   |
    | 4    | 0  | 1  | 2  | Green |
    | 5    | −1 | 0  | 1  | Green |
    | 6    | 1  | 1  | 1  | Red   |
*Suppose we wish to use this data set to make a prediction for Y when X1 = X2 = X3 = 0 using K-nearest neighbors.
(a) Compute the Euclidean distance between each observation and the test point, X1 = X2 = X3 = 0.*

$$
d = \sqrt{(x_2-x_1)^2 + (y_2-y_1)^2 + (z_2-z_1)^2}
$$

    Distances for each observation:

    - (0,3,0) → 3
    - (2,0,0) → 2
    - (0,1,3) → sqrt(10)
    - (0,1,2) → sqrt(5)
    - (-1,0,1) → sqrt(2)
    - (1,1,1) → sqrt(3)

*(b) What is our prediction with K = 1? Why?*

    Closest point by distance is (-1,0,1) so the prediction is Green

*(c) What is our prediction with K = 3? Why?*

    Three closest points are (-1,0,1), (1,1,1), (2,0,0)
        ⇒ P(Red) = 2/3
        ⇒ P(green) = 1/3 
        ⇒ prediction is Red

*(d) If the Bayes decision boundary in this problem is highly nonlinear, then would we expect the best value for K to be large or small? Why?*

    Ideally, the best value of K must be not too small nor too big as a very small value will make the model extremely flexible causing overfitting whereas too big of a value will make the model very inflexible. However, if the Bayes decision boundary is highly non-linear, then we would expect the best value of K to be smaller as the model would be more flexible and can approximate the non-linear function better.