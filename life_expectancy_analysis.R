#load given dataset into R
life_expectency_data <- read.csv("/Users/april/Documents/DA with R/FDA_Coursework1/Naing.csv")

#exploring the size of the dataset
View(life_expectency_data)
#get the overview structure of the dataset
str(life_expectency_data)
#checking the number of variables in the dataset
ncol(life_expectency_data)
#checking the number of observations in the dataset
nrow(life_expectency_data)
#checking the name of variables in the dataset
colnames(life_expectency_data)
#exploring the sammary of the dataset
summary(life_expectency_data)

#install & load moments package to calulate random variable moments status
install.packages("moments")
library(moments)

#Exploratory Data Analysis (EDA)
#creating a function to calculate moment status ()
moment_stats<- function(x, column_name){
  mean_val <- mean(x, na.rm = TRUE)
  variance_val <- var(x, na.rm = TRUE)
  sd_val <- sd(x, na.rm=TRUE)
  skewness_val <- skewness(x, na.rm = TRUE)
  kurtosis_val <- kurtosis(x, na.rm = TRUE)
  return(c(
    cat(column_name, "\n"),
    Mean = mean_val,
    Variance = variance_val,
    Standard_Deviation = sd_val,
    Skewness = skewness_val,
    Kurtosis = kurtosis_val))
}

#calculating moments statistics for every numerical variable in the dataset
moment_stats(life_expectency_data$Infant_deaths,"Number of Infant Deaths:")
moment_stats(life_expectency_data$Under_five_deaths,"Number of Deaths of Children Aged <5:")
moment_stats(life_expectency_data$Adult_mortality,"Number of Adult Mortality:")
moment_stats(life_expectency_data$Alcohol_consumption,"Average Alcohol Consumption:")
moment_stats(life_expectency_data$BMI,"Average Body Mass Index (BMI):")
moment_stats(life_expectency_data$Hepatitis_B,"Percentage of Hepatitis B (HepB3) Immunisation :")
moment_stats(life_expectency_data$Measles,"Percentage of Measles (MCV1) Immunisation:")
moment_stats(life_expectency_data$Polio,"Percentage of Polio (Pol3) Immunisation:")
moment_stats(life_expectency_data$Diphtheria,"Percentage of Diphtheria Tetanus Toxoid and Pertussis (DTP3) Immunisation:")
moment_stats(life_expectency_data$Incidents_HIV,"Incidents of HIV Positivity:")
moment_stats(life_expectency_data$GDP_per_capita,"GPD Per Capita in USD:")
moment_stats(life_expectency_data$Population_mln,"Population in Millions:")
moment_stats(life_expectency_data$Thinness_ten_nineteen_years,"Thinness of Children Aged 10-19:")
moment_stats(life_expectency_data$Thinness_five_nine_years,"Thinness of Children Aged 5-9:")
moment_stats(life_expectency_data$Schooling,"Average Year of Schooling:")
moment_stats(life_expectency_data$Life_expectancy,"Average Life Expectency:")

#start Visual Analysis on the dataset
#Histograms, box plots and density charts for numerical variables
#Frequency bar charts for non-numerical data

#Examining histograms for the numerical variables in Life Expectency Dataset
hist(life_expectency_data$Infant_deaths, main = "Histogram of Infant Deaths", xlab = "Infant Deaths")
hist(life_expectency_data$Under_five_deaths, main = "Histogram of Under 5 Deaths", breaks = 3, xlab = "Under 5 Deaths")
hist(life_expectency_data$Adult_mortality, main = "Histogram of Adult Mortality", breaks = 7, xlab = "Adult Mortality")
hist(life_expectency_data$Alcohol_consumption, main = "Histogram of Alcohol Consumption", breaks = 4, xlab = "Alcohol Consumption")
hist(life_expectency_data$BMI, main = "Histogram of BMI", freq = FALSE, xlab = "BMI")
hist(life_expectency_data$Hepatitis_B, main = "Histogram of Hepatitis B", breaks = 8, xlab = "Hepatitis B")
hist(life_expectency_data$Measles, main = "Histogram of Measles", breaks = 3, xlab = "Measles")
hist(life_expectency_data$Polio, main = "Histogram of Polio", breaks = 5, xlab = "Polio")
hist(life_expectency_data$Diphtheria, main = "Histogram of Diphtheria", breaks = 5, xlab = "Diphtheria")
hist(life_expectency_data$Incidents_HIV, main = "Histogram of HIV Incidents", breaks = 6, xlab = "HIV Incidents")
hist(life_expectency_data$GDP_per_capita, main = "Histogram of GDP per Capita", breaks = 9, xlab = "GDP per Capita")
hist(life_expectency_data$Population_mln, main = "Histogram of Population (Million)", breaks = 8, xlab = "Population (Million)")
hist(life_expectency_data$Thinness_ten_nineteen_years, main = "Histogram of Thinness (10–19 Years)", xlab = "Thinness 10–19")
hist(life_expectency_data$Thinness_five_nine_years, main = "Histogram of Thinness (5–9 Years)", xlab = "Thinness 5–9")
hist(life_expectency_data$Schooling, main = "Histogram of Schooling", breaks = 12, xlab = "Years of Schooling")
hist(life_expectency_data$Life_expectancy, main = "Histogram of Life Expectancy", breaks = 10, freq = FALSE, xlab = "Life Expectancy")

#Examining Boxplot for the numerical variables in Life Expectency Dataset
boxplot(life_expectency_data$Infant_deaths, main = "Boxplot of Infant Deaths")
boxplot(life_expectency_data$Under_five_deaths, main = "Boxplot of Under 5 Deaths")
boxplot(life_expectency_data$Adult_mortality, main = "Boxplot of Adult Mortality")
boxplot(life_expectency_data$Alcohol_consumption, main = "Boxplot of Alcohol Consumption")
boxplot(life_expectency_data$BMI, main = "Boxplot of BMI")
boxplot(life_expectency_data$Hepatitis_B, main = "Boxplot of Hepatitis B")
boxplot(life_expectency_data$Measles, main = "Boxplot of Measles")
boxplot(life_expectency_data$Polio, main = "Boxplot of Polio")
boxplot(life_expectency_data$Diphtheria, main = "Boxplot of Diphtheria")
boxplot(life_expectency_data$Incidents_HIV, main = "Boxplot of HIV Incidents")
boxplot(life_expectency_data$GDP_per_capita, main = "Boxplot of GDP per Capita")
boxplot(life_expectency_data$Population_mln, main = "Boxplot of Population (Million)")
boxplot(life_expectency_data$Thinness_ten_nineteen_years, main = "Boxplot of Thinness (10–19 Years)")
boxplot(life_expectency_data$Thinness_five_nine_years, main = "Boxplot of Thinness (5–9 Years)")
boxplot(life_expectency_data$Schooling, main = "Boxplot of Schooling")
boxplot(life_expectency_data$Life_expectancy, main = "Boxplot of Life Expectancy")

#Examining Density Plot for the numerical variables in Life Expectency Dataset
plotplot(density(life_expectency_data$Infant_deaths), main = "Density Plot of Infant Deaths")
plot(density(life_expectency_data$Under_five_deaths, adjust = 3), main = "Density Plot of Under 5 Deaths")
plot(density(life_expectency_data$Adult_mortality, adjust = 7), main = "Density Plot of Adult Mortality")
plot(density(life_expectency_data$Alcohol_consumption, adjust = 5), main = "Density Plot of Alcohol Consumption")
plot(density(life_expectency_data$BMI, adjust = 0.5), main = "Density Plot of BMI")
plot(density(life_expectency_data$Hepatitis_B, adjust = 4), main = "Density Plot of Hepatitis B")
plot(density(life_expectency_data$Measles, adjust = 10), main = "Density Plot of Measles")
plot(density(life_expectency_data$Polio, adjust = 0.1), main = "Density Plot of Polio")
plot(density(life_expectency_data$Diphtheria, adjust = 2), main = "Density Plot of Diphtheria")
plot(density(life_expectency_data$Incidents_HIV, adjust = 4), main = "Density Plot of HIV Incidents")
plot(density(life_expectency_data$GDP_per_capita), main = "Density Plot of GDP per Capita")
plot(density(life_expectency_data$Population_mln, adjust = 0.8), main = "Density Plot of Population (Million)")
plot(density(life_expectency_data$Thinness_ten_nineteen_years, adjust = 1), main = "Density Plot of Thinness (10–19 Years)")
plot(density(life_expectency_data$Thinness_five_nine_years, adjust = 0.7), main = "Density Plot of Thinness (5–9 Years)")
plot(density(life_expectency_data$Schooling, adjust = 5), main = "Density Plot of Schooling")
plot(density(life_expectency_data$Life_expectancy, adjust = 3), main = "Density Plot of Life Expectancy")

#examining the frequencies of different groups of continents (Nominal Category)
table(life_expectency_data$Continent)
#examining the frequencies of different regions(Nominal Category)
table(life_expectency_data$Region)
length(table(life_expectency_data$Region))
#examining the frequencies of different economic status(Ordinal Category (0,1))
table(life_expectency_data$Economy_status_Developing)
table(life_expectency_data$Economy_status_Developed)

#Examining Bar Plot for the non-numerical(Categorical) variables in Life Expectency Dataset
barplot(table(life_expectency_data$Continent), main = "Number of Countries by Continent")
barplot(table(life_expectency_data$Region), main = "Number of Countries by Region")
barplot(table(life_expectency_data$Economy_status_Developed), main = "Frequency of Developed Economies")
barplot(table(life_expectency_data$Economy_status_Developing), main = "Frequency of Developing Economies")

#install & load DescTools to calculate Mode
install.packages("DescTools")
library(DescTools)
Mode(life_expectency_data$Continent, na.rm = TRUE)
Mode(life_expectency_data$Region, na.rm = TRUE)

#Grouped Visual Analysis
boxplot(Life_expectancy ~ Region, data = life_expectency_data, main = "Life Expectancy across Regions", xlab = "Region", ylab = "Life Expectancy")
boxplot(Life_expectancy ~ Continent, data = life_expectency_data, main = "Life Expectancy across Continents", xlab = "Continent", ylab = "Life Expectancy")
boxplot(Life_expectancy ~ Economy_status_Developing, data = life_expectency_data, main = "Life Expectancy across Developed (0) Vs Developing (1) countries", xlab = "Economy Status Development", ylab = "Life Expectancy")
boxplot(Alcohol_consumption ~ Economy_status_Developed, data = life_expectency_data, main = "Alcohol Consumption by Developed Economy Status", xlab = "Economy Status", ylab = "Alcohol Consumption")
boxplot(GDP_per_capita ~ Economy_status_Developing, data = life_expectency_data, main = "GDP per Capita by Developing Economy Status", xlab = "Economy Status", ylab = "GDP per Capita")

# calculate moments for life expectancy grouped by Regions
# dplyr allows us to group data and calculate by groups
install.packages("dplyr")
library(dplyr)
# create a grouped dataset
life_expectency_byRegion <- group_by(life_expectency_data, Region)
# use grouped dataset to calculate moments
summarise(life_expectency_byRegion,
          mean = mean(Life_expectancy),
          variance = var(Life_expectancy),
          skewness = skewness(Life_expectancy),
          kurtosis = kurtosis(Life_expectancy))

# splitting the data to see individual histogram
life_expectency_Asia <- life_expectency_data[life_expectency_data$Continent == "Asia",]$Life_expectancy
life_expectency_Americas <- life_expectency_data[life_expectency_data$Continent == "Americas",]$Life_expectancy
life_expectency_Oceania<- life_expectency_data[life_expectency_data$Continent == "Oceania",]$Life_expectancy
hist(life_expectency_Asia)
hist(life_expectency_Americas)
hist(life_expectency_Oceania)

#checking if there is an NA value
anyNA(life_expectency_data) #FALSE (No NA Values)

#Question 1: Is there a relationship between the average year spent on schooling and adult mortality rate across countries?
#H0: There is no correlation between Adult_mortality and Schooling.  Correlation coefficient of the sample and ρ of the population= 0 
#HA: There is a correlation Adult_mortality and Schooling. Correlation coefficient of the sample and ρ of the population ≠ 0
#(Assumption for correlation testing: Independence of observations, Linearity, Normality, No significant outliers)

#checking if the variable have linear relation(scatter plot) seeing the direction of the relation of data
plot(x= life_expectency_data$Schooling, y=life_expectency_data$Adult_mortality, main="Scatter Plot of Schooling & Adult Mortality", xlab="Average year spent on Schooling", ylab="Adult Mortality", col="darkblue")
#1st: assuming a moderate linear relationship (linearity) between the two variables as there is a slightly negative trend ( years spent on schooling increases → the rate of mortality tends to decrease, not implying lower year of schooling cause more adult deaths.)
#2nd: assuming independence of observations of the chosen variable in the datasets

# looking at distribution of each variables visually (to assume normality)
#histogram
hist(life_expectency_data$Adult_mortality, breaks=3)
hist(life_expectency_data$Schooling, freq=FALSE)

#density plot
plot(density(life_expectency_data$Adult_mortality , adjust = 0.4))
plot(density(life_expectency_data$Schooling, adjust = 0.6))

# checking moments (normal distribution → skewness=0 and Kurtosis=3)
moment_stats(life_expectency_data$Adult_mortality,"Adult Mortality")#skewness=0.2807639(Positive close to 0) & kurtosis=2.4540054(less than but close to 3) Roughly normal
moment_stats(life_expectency_data$Schooling,"Average year spent on Schooling")#skewness=-0.1394666(Negative close to 0) & kurtosis=2.2826260(less than but close to 3) Roughly normal

# generating the QQ-plot to visually inspect deviation from normal line
qqnorm(life_expectency_data$Adult_mortality, main = "Adult Mortality - Normal QQ-plot")
qqline(life_expectency_data$Adult_mortality) #Closely follow the line, with minor deviation

qqnorm(life_expectency_data$Schooling, main = "Schooling - Normal QQ-plot")
qqline(life_expectency_data$Schooling) #Closely follow the line, with minor deviation
#3rd assumption : data distribution is approximately normal (p value>0.05)

# checking data normality (reject null (normality) if p value is less than 0.05, since confidence integral is based on 95% significance)
# running the normality test
shapiro.test(life_expectency_data$Adult_mortality)#p-value = 0.1174 (Normal)
shapiro.test(life_expectency_data$Schooling)#p-value = 0.4256 (Normal)
#Data Normality Result : Both variable has normal distribution, therefore, choose to proceed with Pearson method in correlation test. 

#visually checking Outliers
boxplot(life_expectency_data$Adult_mortality)
boxplot(life_expectency_data$Schooling)
#4th assumption:no significant outliers

#checking outliers
z_adult_mortality <- (life_expectency_data$Adult_mortality - mean(life_expectency_data$Adult_mortality))/sd(life_expectency_data$Adult_mortality)
z_adult_mortality[z_adult_mortality > 3 | z_adult_mortality < -3] #numeric(0) no significant outliers
z_school <- (life_expectency_data$Schooling - mean(life_expectency_data$Schooling))/sd(life_expectency_data$Schooling)
z_school[z_school > 3 | z_school < -3] #numeric(0) no significant outliers
#observation: No outliers found

#value of correlation coefficient
cor_coefficient <- cor(life_expectency_data$Adult_mortality, life_expectency_data$Schooling)
print(cor_coefficient)
#correlation coefficient of Adult_mortality and Schooling r=-0.5073144 (moderate negative correlation in the sample)

#pearson correlation test since the data is normal
cor.test(life_expectency_data$Adult_mortality, life_expectency_data$Schooling)
#p-value = 4.552e-07<0.05 (reject null H0)
#true correlation (negative) of the population (ρ) lies somewhere between -0.6479138 and -0.3332847(95% confidence integral)

# Interpretation:
# There is a statistically significant negative correlation between average years spent on schooling and adult mortality rates across countries (r ≈ -0.51, p values < 0.05), indicating that higher education levels are associated with lower adult mortality.

install.packages("ggplot2")
library(ggplot2)

#Question 2: Is there a difference in GDP per capita between developed and developing countries?
#H0: There is no significant difference in GDP between different economy_status.
#HA: There is a significant difference in GDP between different economy_status.

#(Assumptions: data normality, independence of observation, homogeniety of varience and no significant outliers)

#visual analysis on the chosen variable
#ggplot (jitter plot) for different group comparison (Developed 0 VS Developing 1)
ggplot(life_expectency_data, aes(x = factor(Economy_status_Developing, labels = c("Developed(0)", "Developing(1)")), y = GDP_per_capita)) + geom_boxplot(fill = "skyblue") + geom_jitter(color = "darkblue") + labs(title = "GDP per Capita by Economic Status", x = "Economic Status of the country", y = "Gross Domestic Products per Capita in USD")

#frequency of each sub-groups
table(life_expectency_data$Economy_status_Developing) # 81 developing country and 7 developed countries (Total of 88 observations in the Datasets) unbalanced sub-groups
#Splitting the  data into two sub-groups of data sample based on economy status
economy_developing_country=life_expectency_data[life_expectency_data$Economy_status_Developing==1,]
View(economy_developing_country)
economy_developed_country=life_expectency_data[life_expectency_data$Economy_status_Developing==0,]
View(economy_developed_country)

# checking data normality
# looking at distribution of each variables visually (to assume normality)
# bar plots for different economy development status 
barplot(table(life_expectency_data$Economy_status_Developing),names.arg = c("Developed(0)", "Developing(1)"))
#histogram
hist(life_expectency_data$GDP_per_capita)
hist(economy_developed_country$GDP_per_capita, breaks=4)
hist(economy_developing_country$GDP_per_capita, breaks=3)

#density plot
plot(density(life_expectency_data$GDP_per_capita))
plot(density(economy_developed_country$GDP_per_capita))
plot(density(economy_developing_country$GDP_per_capita))

# checking moments
moment_stats(life_expectency_data$GDP_per_capita,"Average Gross Domestic Product per person by country in USD")
#strong positive skew (Skewness 2.092335e+00) and heavy tails (Kurtosis 6.766044e+00)
moment_stats(economy_developed_country$GDP_per_capita,"Average Gross Domestic Product per person by Developed country in USD") 
#mild positive skew (Skewness 4.618182e-01) and flatter tails (Kurtosis 1.974804e+00) Nearly Normal
moment_stats(economy_developing_country$GDP_per_capita,"Average Gross Domestic Product per person by Developing country in USD") 
#highly positive skew (Skewness 3.018148e+00) and large extreme value (Kurtosis 1.254627e+01) heavy right-skew (not normal)

# generating the QQ-plot to visually inspect deviation from normal line
qqnorm(life_expectency_data$GDP_per_capita)
qqline(life_expectency_data$GDP_per_capita)#deviations from the line

qqnorm(economy_developed_country$GDP_per_capita)
qqline(economy_developed_country$GDP_per_capita)#some deviations from the line

qqnorm(economy_developing_country$GDP_per_capita)
qqline(economy_developing_country$GDP_per_capita)#deviations from the line

#checking normality of the whole group (reject null (normality) if p value is less than 0.05, since confidence integral is based on 95% significance)
shapiro.test(life_expectency_data$GDP_per_capita)#p-value = 9.286e-13 (not normally distributed)

#checking normality of the sub-group (reject null (normality) if p value is less than 0.05, since confidence integral is based on 95% significance)
shapiro.test(economy_developing_country$GDP_per_capita) #p-value = 8.396e-14 (Not normal, large sample size of over 80 observations)
shapiro.test(economy_developed_country$GDP_per_capita) #p-value = 0.4332 (Normally distributed)
#one group not normal (non-parametric test Wilcoxon test), however, large sample size (over 80) (parametric test t-test)

#grouped box-plots
boxplot(GDP_per_capita~Economy_status_Developing, data=life_expectency_data)
#visually checking Outliers
boxplot(economy_developed_country$GDP_per_capita)
boxplot(economy_developing_country$GDP_per_capita) # few outliers found

#checking outliers
z_GDP_developing <- (economy_developing_country$GDP_per_capita - mean(economy_developing_country$GDP_per_capita))/sd(economy_developing_country$GDP_per_capita)
z_GDP_developing[z_GDP_developing > 3 | z_GDP_developing < -3] #4.713736 4.373584 (few outliers found)
z_GDP_developed <- (economy_developed_country$GDP_per_capita - mean(economy_developed_country$GDP_per_capita))/sd(economy_developed_country$GDP_per_capita)
z_GDP_developed[z_GDP_developed > 3 | z_GDP_developed < -3] #no data values were identified as significant outliers.

# testing Homogeneity of variance 
# F-test for equal variances (parametric assumption)
# H0: Variances are equal
var.test(economy_developed_country$GDP_per_capita, economy_developing_country$GDP_per_capita) #p-value = 0.6779>0.05 (equal variance as we failed to reject the null H0)
# Levene’s test (more robust)
library(DescTools)
LeveneTest(life_expectency_data$GDP_per_capita, life_expectency_data$Economy_status_Developing) #F value  0.0611, Pr(>F) 0.8054>0.05 (Do not reject the null with 95% significance level) Equal variance confirmed

# Non-parametric Wilcoxon test (since normality violated)
wilcox.test(GDP_per_capita~Economy_status_Developing, data=life_expectency_data, exact=FALSE) # W = 536, p-value = 0.0001019<0.05 (reject null H0)

#Double-check using parametric as the sample size is large
t.test(GDP_per_capita~Economy_status_Developing, data=life_expectency_data, var.equal=TRUE) #p-value = 2.2e-08<0.05 (reject null H0)

#Interpretation
#Developed countries have significantly higher GDP per capita than developing countries (unpaired independent samples).

#model fitting
#treating Life_expectancy as the dependent variable by placing on the Y-axis
#treating Heath related data (Alcohol_consumption, BMI, Immunitization (Hepatitis_B, Measles, Polio, Diphtheria), Incidents_HIV, Thinness_ten_nineteen_years, Thinness_five_nine_years), 
#Economy related data (GDP_per_capita, Population_mln) and Education related data (Schooling)
#as independent variable on X axis (that might have some impact on the value of y Life_expectancy)

#assumption: multi-collinearity, Linear-relationship, residuals(errors) are normally distributed, Homoskedasticity (errors having constant variance), independence of errors (no autocorrelation on time serie basis) and No influence of Outlier on the model.
fit_data <-  life_expectency_data[, c("Alcohol_consumption","BMI","Hepatitis_B", "Measles","Polio","Diphtheria","Incidents_HIV", "GDP_per_capita","Population_mln", "Thinness_ten_nineteen_years","Thinness_five_nine_years","Schooling","Life_expectancy")]
View(fit_data)
#initial model fitting (multiple independent numeric variables (health, economy and education data) on the X axis serving as relevant predictors of dependent variable on the Y axis Life expectancy)
full_model_fit <- lm(Life_expectancy~., data=fit_data)
#viewing the summary of the model (Residuals (error values and distribution), coefficient values and estimates )
summary(full_model_fit)# Adjusted R-squared:  0.6278 F-test (p-value): 13.23 (4.289e-14)
#observation 
#Alcohol_consumption have significant coefficient p-value of 0.00416<0.05
#GDP_per_capita also have significant coefficient p-value of 2.84e-05<0.05
#Adjusted R-squared:  0.6278 
#F-statistic with small p-value (reject the null that there is no true effect) 

install.packages("car")
library(car)
#visualizing multi-collinearity with scatter plot
pairs(fit_data[,-13])#(similar graph between Polio & Diphtheria and Thinness_ten_nineteen_years & Thinness_five_nine_years)
#check the multi-collinearity (if there is a linear relation among the independence X variables) by calculating variance inflation factor
vif_models <- vif(full_model_fit)
vif_models #(linearity between Polio & Diphtheria and Thinness_ten_nineteen_years & Thinness_five_nine_years)
sort(vif_models, decreasing = FALSE)#sort multi-collinearity in ascending order
install.packages("corrplot")
library(corrplot)
#visualizing correlation matrix using number in the botton and visual on top (double checking the correlation between X variables)
correlation_matrix <- cor(fit_data[,-13], use ="pairwise.complete.obs")
corrplot.mixed(correlation_matrix, lower = 'number', upper = 'ellipse')#obvious correlation in upward direction between Polio & Diphtheria(cor coef=0.96) and Thinness_ten_nineteen_years & Thinness_five_nine_years(cor coef=0.92)

#refining model by resolving multi-collinearity over 5
model_fit_attempt <- lm(Life_expectancy~., data=fit_data[,-c(6,11)])#dropping Diphtheria (vif 14.333435) and Thinness_five_nine_years Variable (vif 8.633761)
summary(model_fit_attempt)#Adjusted R-squared:  0.6327  F-test (p-value): 15.98 (4.182e−15)
vif(model_fit_attempt)#multi-collinearity less than 5 (VIF Highest:2.388833)

#refining model using backward selection (from largest p-value over 0.05)
#removing Measles with highest p-value of 0.932237 in the last model
refine_attempt1<- lm(Life_expectancy~Alcohol_consumption + BMI + Hepatitis_B + Polio + Incidents_HIV + GDP_per_capita + Population_mln + Thinness_ten_nineteen_years + Schooling, data=fit_data)
summary(refine_attempt1)#Adjusted R-squared:  0.6374  F-test (p-value): 17.99 (9.529e-16) 
#removing Hepatitis_B with highest p-value of 0.86318 in the last model
refine_attempt2<- lm(Life_expectancy~Alcohol_consumption + BMI + Polio + Incidents_HIV + GDP_per_capita + Population_mln + Thinness_ten_nineteen_years + Schooling, data=fit_data)
summary(refine_attempt2)#Adjusted R-squared:  0.6418  F-test (p-value): 20.49 (< 2.2e-16) 
#removing Thinness_ten_nineteen_years with highest p-value of 0.55500 in the last model
refine_attempt3<- lm(Life_expectancy~Alcohol_consumption + BMI + Polio + Incidents_HIV + GDP_per_capita + Population_mln + Schooling, data=fit_data)
summary(refine_attempt3)#Adjusted R-squared:  0.6447  F-test (p-value): 23.55 (< 2.2e-16) 
#removing Schooling with highest p-value of 0.288707 in the last model
refine_attempt4<- lm(Life_expectancy~Alcohol_consumption + BMI + Polio + Incidents_HIV + GDP_per_capita + Population_mln, data=fit_data)
summary(refine_attempt4)#Adjusted R-squared:  0.6441  F-test (p-value): 27.24 (< 2.2e-16)
#removing Population_mln with highest p-value of 0.2684 in the last model
refine_attempt5<- lm(Life_expectancy~Alcohol_consumption + BMI + Polio + Incidents_HIV + GDP_per_capita, data=fit_data)
summary(refine_attempt5)#Adjusted R-squared:  0.643  F-test (p-value): 32.35 (< 2.2e-16) 
#removing BMI with highest p-value of 0.1754 in the last model
refine_attempt6<- lm(Life_expectancy~Alcohol_consumption + Polio + Incidents_HIV + GDP_per_capita, data=fit_data)
summary(refine_attempt6)#Adjusted R-squared:  0.6393  F-test (p-value): 39.55 (< 2.2e-16) 
#removing Incidents_HIV with highest p-value of 0.0916 in the last model (no need to drop for 90% confidence interval but since the significant level is set up at 95%)
refine_attempt7<- lm(Life_expectancy~Alcohol_consumption + Polio + GDP_per_capita, data=fit_data)
summary(refine_attempt7)#Adjusted R-squared:  0.6311  F-test (p-value): 50.61 (< 2.2e-16) 

#checking Further assumption
refined_model <- refine_attempt7
par(mfrow = c(2, 2)) # to display all plots
#1 = Residuals vs Fitted (linearity), 2 = Normal Q–Q (normality), 3 = Scale–Location (homoskedasticity), 4 = Residuals vs Leverage (influence due to outliers)
#1 - not straight line but observed linearity
plot(refined_model)
#check error normality with histogram and Shapiro test
hist(refined_model$residuals, breaks = 20)
shapiro.test(refined_model$residuals)#p-value = 0.3462 > 0.05 (Normal distribution with 95% significance)
plot(refined_model, which = 3)#homoskedasticity (error have constant variance) plot
install.packages("lmtest")
library(lmtest)
bptest(refined_model)# running Breusch-Pagan test (BP = 0.79201, df = 3, p-value = 0.8514>0.05) failed to reject homoskedasticity (constant residual variance) [No need for lm_robust()]
plot(refined_model, which = 4) #checking Cook’s distance graph to identify influential observations have undue influence on the fitted regression line
# Observations with values greater than (4 / n) are considered potentially influential.
influential_obs <- which(cooks.distance(refined_model) > 4 / length(cooks.distance(refined_model)))#to ensure that no data point is disproportionately affecting the regression results.
fit_data[influential_obs, ]#see the influential observations
#Four observations (rows 12, 48, 49, 63) are found to exceed the threshold, however only few points are influential outliers, it can be concluded as these point did not drastically change the model results.
#The regression model is considered stable and not overly affected by outliers.
summary(refined_model)#Adjusted R-squared:  0.6311  F-test (p-value): 50.61 (< 2.2e-16) 

# Robust Regression using rlm() not assuming error normality to downplay impact of outliers on the regression line 
#(less sensitive to extreme values in case the errors are not distributed normally)
robust_regression <- rlm(Life_expectancy~Alcohol_consumption + Polio + GDP_per_capita, data=fit_data)
summary(robust_regression)#Residual standard error: 3.256 on 84 degrees of freedom

# Robust SE model using lm_robust() [double-checking]
robust_se_model <- lm_robust(Life_expectancy ~ Alcohol_consumption + Polio + GDP_per_capita, data = fit_data)
summary(robust_se_model)#Adjusted R-squared:  0.6311  F-test (p-value): 61.54 (< 2.2e-16) 
#Observation: this model seem to be a best fit for our data
