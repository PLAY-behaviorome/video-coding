plot_timelines <- function(sub.id, csv.dir) {
  if (file.exists(paste0(csv.dir, sub.id, ".csv"))) {
    rmarkdown::render("timeline.Rmd", params = list(sub.id=sub.id), 
                      output_file = paste0(sub.id, "-timeline.md"))
  } else {
    stop(paste0("File ", paste0(sub.id, ".csv"), " not found in ", csv.dir))
  }       
}
