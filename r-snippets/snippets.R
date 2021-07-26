snippet introblock
	`r paste0("## .R --------------------------------------------------------------------------", 
	"\n## Kyle Butts, CU Boulder Economics \n",
	"## \n", "## \n", sep="")`


snippet banner
bannerCommenter::banner("${1:title}", bandChar = "-", fold= TRUE, rightSideHashes= 4, minHashes= 80)

snippet endhead
## -----------------------------------------------------------------------------

snippet introblock
`r paste0("## -----------------------------------------------------------------------------\n", 
		  "## ", format(Sys.time(), "%Y-%m-%d"), "_\n## Kyle Butts, CU Boulder Economics \n",
		  "## \n", "## \n", 
		  "## -----------------------------------------------------------------------------", sep="")`

snippet func
function() {
	# Display what the function is doing
	usethis::ui_todo("")
	cat("\n")
	
	
	
	# Display what the function successfully finished
	cat("\n")
	usethis::ui_done("")
}	
