# Review Questions 4.2
# 1. The data, what data frame is used to make the plot;
# the aesthetics, how the variable(s) relate (to each- 
# -other) and the aesthetic qualities of the plot;
# and the geometry, which type of graph is used.
# 2. "nominate" is the data; 
# "aes(x = ideology)" is the aesthetics;
# and geom_histogram() is the geometry.
# 3. "ggplot" creates a graph when given the above three
# arguments, "aes()" establishes how the variable(s) relate
# (to each other) by assigning x and y to variables, and 
# geom_histogram() creates a histogram when added with a +.

#Review Questions 4.3
# 1. filter() creates a subset of a data frame and is
# composed by specifying a condition on a variable that
# cases must satisfy. The arguments, respectively, are
# the original dadta frame and the condition. It creates a
# new data frame. 

#Review Questions 4.4
# 1. A facet divides a data frame into sections and plots a
# histogram for each section.
# 2. facet_wrap() creates a function and is used by specifying
# the variable to facet as an argument.
# 3. No; vars() is missing.
# 4. It would create a separate histogram plotting 
# ideology for each state.
# 5. It layers the histograms vertically instead of horizontally.

#Review Questions 4.5
# 1. Both are 2D plots that try to correlate Y-position in
# an area with how may cases had the variable lie in that
# area, but histograms clump variable values into distinct
# bins with exactly proportionate Y-positions, while density
# plots determine Y-positions by approximating proportionality
# along a continuum of variable values with a smooth curve.
# 2. geom_density() creates a density plot when added to
# the arguments of ggplot() with a +.

#Review Questions 4.6
# 1. The color aesthetic colors the actual curve, while the
# fill aesthetic colors the area under the curve.

library(tidyverse)
nominate <- read_csv("nominate.csv")
ggplot(nominate, aes(x = ideology, color = congress)) + 
  geom_density()

# 2. No, it is not useful.
# 3. Default alpha transparency is 1, no transparency, but
# it can be set anywhere from 0-1, and you might use it
# to prevent one density plot's fill color from completely
# overlapping another's. That change would make the graph's
# fill much more transparent.

#Review Questions 4.7
# 1. By default, ggplot() uses the names of the variables to
# label the axes and legends.
# 2. To change the default labels, add the labs() function
# and provide new arguments for aesthetics. You can add a
# title, subtitle, or caption by including the relevant
# arguments in labs().
# 3. labs() changes or provides labels for axes, labels,
# titles, and more when added with a + to ggplot().
# 4. In order: it uses ggplot() and the nominate data frame 
# to make a chart. The variable of interest is ideology,
# and cases of each party will join two respective curves
# with distinct fill colors on the same plot. The fill will
# have 50% transparency. The following arguments use labs()
# to set the x-axis label, y-axis label, title, subtitle,
# and caption, respectively.

#Review Questions 4.8
# 1. Themes are organized blocs of changes to aesthetic
# elements like background color, grid color, font size,
# and more. 
# 2. You add the theme function, for example theme_excel(),
# to ggplot with a + operator.
# 3. Some from ggplot2 are theme_minimal() and theme_bw(),
# while some in ggthemes are theme_excel() and theme_wsj().

ggplot(nominate, aes(x = ideology, color = party)) + 
  geom_density() + theme_bw()
ggplot(nominate, aes(x = ideology, color = party)) + 
  geom_density() + theme_minimal()
ggplot(nominate, aes(x = ideology, color = party)) + 
  geom_density() + theme_stata()

# 4. Of these three, my favorite is theme_bw().
# theme_minimal has uncertain boundaries, while
# theme_stata does not use space efficiently.

#Review Questions 4.10
# 1. Plots are saved with the ggsave() command. Before 
# that, of course the plot must be made. The file type and 
# location should also be chosen, as well as the name,
# which should be descriptive but not overly long. 
# 2. filename determines the file's name/location, while 
# height and width set the height and width, by default
# in inches.
# ggsave() saves the plot. The first argument is the file's 
# name/location, the second sets its height in inches, and
# the third sets its width in inches.
