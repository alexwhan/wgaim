#' Produces a tidy metadata summary
#' 
#' @title add_meta: Adding tidying metadata for objects
#' @param x an object for which metadata is required
#' @param ... other arguments
#' 
#' @export add_meta
add_meta <- function(x) UseMethod("add_meta")

#' @rdname add_meta
#' @export
add_meta.default <- function(x) {
  stop(paste("There is no add_meta method for class", class(x)))
}

#' @rdname add_meta
#' @export
add_meta.wgaim <- function(x, intObj) {
  data.frame(qtl_results = list(
    summary(x, intObj)),
    trait = as.character(as.list(x$call$fixed)[[2]]),
    resid_plot = list(plot(x)))
}