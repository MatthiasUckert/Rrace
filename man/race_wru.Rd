% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{race_wru}
\alias{race_wru}
\title{Wrapper around wru::predict_race()}
\usage{
race_wru(
  .tab,
  .use_geo = NULL,
  .use_birth = FALSE,
  .use_gender = FALSE,
  .census = NULL
)
}
\arguments{
\item{.tab}{Input Table, must contain at least 2 columns:\cr
id: Unique Identifier of the Data\cr
first_name/last_name: At least a first name OR last name column (both columns are possible)\cr}

\item{.use_geo}{Which geo variable has been used (Either "county", "tract", "block", or "place").
If used must be the same as in download_census()}

\item{.use_birth}{Should race be inferred from information about a persons birth year?}

\item{.use_gender}{Should race be inferred from information about a persons sex?}

\item{.census}{Only needed if .use_geo is not NULL}
}
\value{
The original data frame (.tab in long format) appended with the following columns:\cr
\itemize{
\item method: Used methods (here: prr for predictrace)\cr
\item use_name: which name variable has been used (here: first/last)\cr
\item use_geo: Which geo variable has been used (here: none)\cr
\item use_birth: Is a persons age used for prediction (here: FALSE)\cr
\item use_gender: Is a persons sex used for prediction (here: FALSE)\cr
\item prob_asian: Probability of the person being asian\cr
\item prob_black: Probability of the person being black\cr
\item prob_hispanic: Probability of the person being hispanic\cr
\item prob_white: Probability of the person being white\cr
\item prob_other: Probability of the person being non of the above races\cr
}

IMPORTANT: Non-Predictions are omited from the output
}
\description{
Wrapper around wru::predict_race()
}
