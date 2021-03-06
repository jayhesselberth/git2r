% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/credential.R
\name{cred_env}
\alias{cred_env}
\title{Create a new environmental credential object}
\usage{
cred_env(username = NULL, password = NULL)
}
\arguments{
\item{username}{The name of the environmental variable that holds
the username for the authentication.}

\item{password}{The name of the environmental variable that holds
the password for the authentication.}
}
\value{
A list of class \code{cred_env} with entries:
\describe{
  \item{username}{
    The name of the environmental variable that holds
    the username for the authentication.
  }
  \item{password}{
    The name of the environmental variable that holds
    the password for the authentication.
  }
}
}
\description{
Environmental variables can be written to the file
\code{.Renviron}. This file is read by \emph{R} during startup,
see \code{\link[base]{Startup}}.
}
\examples{
\dontrun{
## Create an environmental credential object for the username and
## password.
cred <- cred_env("NAME_OF_ENV_VARIABLE_WITH_USERNAME",
                 "NAME_OF_ENV_VARIABLE_WITH_PASSWORD")
repo <- repository("git2r")
push(repo, credentials = cred)
}
}
\seealso{
Other git credential functions: \code{\link{cred_ssh_key}},
  \code{\link{cred_token}}, \code{\link{cred_user_pass}}
}
