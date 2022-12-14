% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_expenses_by_paymaster.R
\name{plot_expenses_by_paymaster}
\alias{plot_expenses_by_paymaster}
\title{Plot expenses by paymaster}
\usage{
plot_expenses_by_paymaster(
  .data,
  prefix_money = "$",
  suffix_money = "",
  big_mark_money = ",",
  font_family = "Times"
)
}
\arguments{
\item{.data}{Tibble.}

\item{prefix_money}{Character.}

\item{suffix_money}{Character.}

\item{big_mark_money}{Character.}

\item{font_family}{Character.}
}
\value{
Plot.
}
\description{
Plot expenses by paymaster
}
\examples{
data(data_expenses_example)
data_expenses_example \%>\% 
  plot_expenses_by_paymaster()
}
