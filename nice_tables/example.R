library(texreg)
setwd("~/Documents/templates/r-nice_tables/")

df <- tibble(
	treat = 1:20 > 10,
	z = runif(20, -1, 1),
	y = 5 * treat + 3 * z + 2 + rnorm(20, 0, 1^2)
)

m1 <- lm(y ~ treat, data = df)
m2 <- lm(y ~ treat + z, data = df)

# screenreg(list(m1, m2))

tex <- texreg::texreg(
	list(m1, m2), 
	# file = "table1.tex",
	center = FALSE, table = FALSE, tabular = FALSE,
	custom.note = "", #stars = NULL, 
	custom.model.names = c("(1)", "(2)"),
	custom.coef.names = c("Intercept", "Treated", "Covariate"),
	include.rsquared = F
)

tex <- stringr::str_replace(tex, stringr::regex("^\\n\\\\hline\\n.+\\n\\\\hline"), "")
tex <- stringr::str_replace(tex, stringr::regex("\\\\hline$"), "")

cat(tex, file = "table1.tex")
