global project "~/Desktop/stata_nice_tables"

sysuse auto, clear

est clear

eststo: regress price weight mpg
eststo: regress price weight mpg foreign

estout using "$project/table_1_body.tex", style(tex) ///
	varlabels(_cons Constant weight Weight mpg Miles per Gallon foreign Foreign) ///
	collabels(none) mlabels(none) ///
	cells(b(fmt(4)) se(par fmt(4)))

	
estout using "$project/table_1_stats.tex", style(tex) ///
	collabels(none) mlabels(none) ///
	stats(r2 N) drop(*)
