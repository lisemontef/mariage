% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_info_guests_in_database.R
\name{add_info_guests_in_database}
\alias{add_info_guests_in_database}
\title{Add information about guests in the database}
\usage{
add_info_guests_in_database(info_to_add, data_guests)
}
\arguments{
\item{info_to_add}{Tibble. Information to be added.}

\item{data_guests}{Tibble. Initial table.}
}
\value{
Tibble.
}
\description{
Add information about guests in the database
}
\examples{
info_to_add_in_data_guests <- tibble::tibble(
  name = c("David", "Margot"),
  here_cocktail = rep("Yes", 2),
  here_diner = rep("Yes", 2),
  here_sunday = rep("Yes", 2),
  special_diet = c(NA_character_, "I am vegan"),
  menu_diner = rep("Adult", 2),
  time_confirmation = rep("2021-04-22 09:57:12 CEST", 2)
  )

data(data_guests_example)

add_info_guests_in_database(info_to_add = info_to_add_in_data_guests, 
                            data_guests = data_guests_example)
}
