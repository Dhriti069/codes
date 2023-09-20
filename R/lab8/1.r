df_069 <- data.frame(
    var1_069 = rnorm(100), # Normally distributed random variable
    var2_069 = runif(100), # Uniformly distributed random variable
    var3_069 = sample(c("A", "B", "C"), 100, replace = TRUE), # Categorical variable
    var4_069 = rpois(100, 2), # Poisson distributed random variable
    var5_069 = rbinom(100, 1, 0.5), # Binary variable
    var6_069 = rexp(100, 1), # Exponentially distributed random variable
    var7_069 = rgamma(100, 1, 1), # Gamma distributed random variable
    var8_069 = sample(1:10, 100, replace = TRUE), # Integer variable
    var9_069 = as.Date("2022-01-01") + sample(1:365, 100, replace = TRUE), # Date variable
    var10_069 = rnorm(100, mean = 10, sd = 2) # Normally distributed random variable with mean 10 and SD 2
)

head(df_069)

summary(df_069$var1_069)
hist(df_069$var2_069)
table(df_069$var3_069)
boxplot(df_069$var4_069)
mean(df_069$var5_069)
sd(df_069$var6_069)
quantile(df_069$var7_069)
unique(df_069$var8_069)
table(df_069$var9_069)
range(df_069$var10_069)

cor(df_069[, c("var1_069", "var2_069", "var4_069")])
plot(df_069$var1_069, df_069$var10_069)
pairs(df_069[, c("var1_069", "var2_069", "var4_069")])

library(ggplot2)
ggplot(df_069, aes(x = var8_069, y = var10_069, color = var3_069)) +
    geom_point()
