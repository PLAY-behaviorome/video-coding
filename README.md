# Video coding

This repository contains code to visualize Datavyu timelines from the PLAY project.

- To (re)generate a set of timeline reports from data stored in `analysis/csv/`, 
    - `source("analysis/R/plot_timelines.R")`
    - then `lapply(c("NYU013", "NYU018", "NYU019", "NYU020"), plot_timelines, csv.dir = 'analysis/csv/')`
    - This results in `<sub.id>-timeline.{html,md}` files which you can preview.
    - It also puts participant-specific plots in `img/{NYU013,NYU018,NYU019,NYU020}` respectively.