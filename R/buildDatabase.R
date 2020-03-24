#' buildDatabase
#'
#' Constructs a subset of the cell types and cytometries in optimalFlowData in order to be used as a database.
#'
#' @param dataset_names A vector of strings with the names of the cytometries, ranging in c("Cytometry1",...,"Cytometry40").
#' @param poplation_ids A vector of strings with the names of the cell types to be selected in each cytometry.
#'
#' @return A list where each element is a cytometry containing only the cell types given by population_ids.
#' @examples
#' database <- buildDatabase(
#'   dataset_names = paste0('Cytometry', c(2:5, 7:9, 12:17, 19, 21)),
#'   population_ids = c('Monocytes', 'CD4+CD8-', 'Mature SIg Kappa', 'TCRgd-'))
#'
#' @export
#'
buildDatabase <- function(dataset_names, population_ids) {
  envir <- as.environment('package:optimalFlowData')
  datasets <- mget(dataset_names, envir=envir)
  lapply(datasets,
         function(dset)
           dset[dset$`Population ID (name)` %in% population_ids, ])
}
