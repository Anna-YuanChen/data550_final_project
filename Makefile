# Rule for restoring the package environment
install:
	Rscript -e "renv::restore()"

# Rule for rendering the final report
all: report.html

# Rule for generating the final report from the RMarkdown file
report.html: report.Rmd summary_table.csv scatter_plot.png correlation_plot.png pair_plot.png
	Rscript -e "rmarkdown::render('report.Rmd')"

# Rule for building the summary table
summary_table.csv: table_code.R data/clean_oasis_longitudinal.csv
	Rscript table_code.R

# Rule for building the scatter plot
scatter_plot.png: plot_code.R data/clean_oasis_longitudinal.csv
	Rscript -e "source('plot_code.R'); ggsave('scatter_plot.png', scatter_plot)"

# Rule for building the correlation plot
correlation_plot.png: plot_code.R data/clean_oasis_longitudinal.csv
	Rscript -e "source('plot_code.R'); png('correlation_plot.png'); correlation_plot(); dev.off()"

# Rule for building the pair plot
pair_plot.png: plot_code.R data/clean_oasis_longitudinal.csv
	Rscript -e "source('plot_code.R'); ggsave('pair_plot.png', pair_plot)"

# Clean up generated files
clean:
	rm -f report.html
	rm -f summary_table.csv
	rm -f scatter_plot.png
	rm -f correlation_plot.png
	rm -f pair_plot.png