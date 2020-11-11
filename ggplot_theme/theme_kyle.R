# Load Showtext and font Fira Sans
if(!require("showtext")) {
	print("Install the package `showtext`.")
} else {
	library("showtext")
	showtext_auto()
	font_add_google("Fira Sans", "fira_sans")
	font_add_google("Merriweather", "merriweather")
}


#' @param title_pos either "center" or "left" to align title and subtitle center of left respectively
#' @param axis_title_pos either "center" or "left" to align title and subtitle center or left/top respectively
#' @param slides if TRUE, use background #ECECEC or not
theme_kyle <- function(title_pos = "center", axis_title_pos = "left", slides = FALSE, has_subtitle = FALSE, base_size = 14, ...) {
	
	title_hjust <- switch(title_pos, "center" = 0.5, "left" = 0)
	axis_title_hjust_y <- switch(axis_title_pos, "center" = 0.5, "left" = 1.0)
	axis_title_hjust_x <- switch(axis_title_pos, "center" = 0.5, "left" = 0.0)
	plot_bg = if_else(slides, "#ECECEC", "transparent")
	plot_grid = if_else(slides, "grey85", "grey92")
	title_margin = if_else(has_subtitle, "4", "16")
	
	theme_bw(
		base_size = base_size,
		base_family = "fira_sans"
	) + 
	theme(
		## Title and Subtitle --------------------------------------------------
		plot.title = ggplot2::element_text(
			# Font
			family = "merriweather", face = "bold", size = 18, 
			colour = "#454545", 
			# Center title
			hjust = title_hjust,
			# Margins
			margin = ggplot2::margin(b = title_margin, unit = "pt")
		),
		plot.subtitle = ggplot2::element_text(
			# Font
			family = "merriweather", face = "italic", size = 12, 
			colour = "#454545", 
			# Center subtitle 
			hjust = title_hjust,
			# Margins
			margin = ggplot2::margin(b = 16, unit = "pt")
		),
		plot.title.position = "plot",
		
		## Caption -------------------------------------------------------------
		plot.caption = ggplot2::element_text(
			# Font
			size = 10, colour = "#454545",
			# Right-align caption
			hjust = 1,
			# Margins
			margin = ggplot2::margin(t = 20)
		),
		plot.caption.position = "plot",
		
		## Axis ----------------------------------------------------------------
		# Axis title
		axis.title = ggplot2::element_text(
			# Font
			size = 12, colour = "#454545", face = "italic"
		),
		# Axis Title x/y
		axis.title.y = ggplot2::element_text(
			# Right-align y axis title
			hjust = axis_title_hjust_y,
			# Margins
			margin = ggplot2::margin(r = 10)
		),
		axis.title.x = ggplot2::element_text(
			# Left-align x axis title
			hjust = axis_title_hjust_x,
			# Margins
			margin = ggplot2::margin(t = 10)
		),
		# Axis labels
		axis.text = ggplot2::element_text(
			# Font
			size = 10, colour = "#212121"
		),
		# Axis Lines
		axis.line = element_line(
			colour = "grey40"
		),
		panel.grid = element_line(
			colour = plot_grid
		),
		

		## Legend -------------------------------------------------------------
		# Legend title
		legend.title = ggplot2::element_text(
			# Font
			size = 12, colour = "#454545",
			# Line spacing
			lineheight = 1.2,
		),
		# Legend labels
		legend.text = ggplot2::element_text(
			# Font
			size = 10, colour = "#454545"
		),
		legend.background = ggplot2::element_rect(
			# No Background Colour
			fill = "transparent", colour = NA
		),
		legend.key = ggplot2::element_rect(
			# No Background Colour
			fill = "transparent", colour = NA
		),
		
		
		## Facet Wrap ----------------------------------------------------------
		strip.text = ggplot2::element_text(
			# Font 
			size = 12, colour = "#454545", 
			# Margin							   
			margin = ggplot2::margin(t= 10, b= 10)
		),
		strip.background = ggplot2::element_rect(
			# No Background Colour
			fill = "transparent", colour = NA
		),
		
		## Panel ---------------------------------------------------------------
		panel.background = ggplot2::element_rect(
			# No Background Colour
			fill = plot_bg, colour = NA
		),
		panel.border = ggplot2::element_rect(
			# No Background Colour
			colour = NA
		),
		panel.spacing = grid::unit(8, "points"),
		
		## Plot ----------------------------------------------------------------
		plot.background = ggplot2::element_rect(
			# No Background Colour
			fill = plot_bg, colour = NA
		),
		plot.margin = ggplot2::margin(16, 16, 16, 16, unit = "pt")
	) +
	## Additional options passed by user ---------------------------------------
	theme(
		...
	)
}
