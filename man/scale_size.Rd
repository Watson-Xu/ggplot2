% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale-size.r
\name{scale_size}
\alias{scale_size}
\alias{scale_size_continuous}
\alias{scale_radius}
\alias{scale_size_discrete}
\alias{scale_size_ordinal}
\alias{scale_size_area}
\alias{scale_size_datetime}
\alias{scale_size_date}
\title{Scales for area or radius}
\usage{
scale_radius(name = waiver(), breaks = waiver(), labels = waiver(),
  limits = NULL, range = c(1, 6), trans = "identity",
  guide = "legend")

scale_size(name = waiver(), breaks = waiver(), labels = waiver(),
  limits = NULL, range = c(1, 6), trans = "identity",
  guide = "legend")

scale_size_area(..., max_size = 6)
}
\arguments{
\item{name}{The name of the scale. Used as the axis or legend title. If
\code{waiver()}, the default, the name of the scale is taken from the first
mapping used for that aesthetic. If \code{NULL}, the legend title will be
omitted.}

\item{breaks}{One of:
\itemize{
\item \code{NULL} for no breaks
\item \code{waiver()} for the default breaks computed by the
transformation object
\item A numeric vector of positions
\item A function that takes the limits as input and returns breaks
as output
}}

\item{labels}{One of:
\itemize{
\item \code{NULL} for no labels
\item \code{waiver()} for the default labels computed by the
transformation object
\item A character vector giving labels (must be same length as \code{breaks})
\item A function that takes the breaks as input and returns labels
as output
}}

\item{limits}{A numeric vector of length two providing limits of the scale.
Use \code{NA} to refer to the existing minimum or maximum.}

\item{range}{a numeric vector of length 2 that specifies the minimum and
maximum size of the plotting symbol after transformation.}

\item{trans}{Either the name of a transformation object, or the
object itself. Built-in transformations include "asn", "atanh",
"boxcox", "exp", "identity", "log", "log10", "log1p", "log2",
"logit", "probability", "probit", "reciprocal", "reverse" and "sqrt".

A transformation object bundles together a transform, its inverse,
and methods for generating breaks and labels. Transformation objects
are defined in the scales package, and are called \code{name_trans}, e.g.
\code{\link[scales:boxcox_trans]{scales::boxcox_trans()}}. You can create your own
transformation with \code{\link[scales:trans_new]{scales::trans_new()}}.}

\item{guide}{A function used to create a guide or its name. See
\code{\link[=guides]{guides()}} for more info.}

\item{...}{Arguments passed on to \code{continuous_scale}
\describe{
  \item{name}{The name of the scale. Used as the axis or legend title. If
\code{waiver()}, the default, the name of the scale is taken from the first
mapping used for that aesthetic. If \code{NULL}, the legend title will be
omitted.}
  \item{breaks}{One of:
\itemize{
\item \code{NULL} for no breaks
\item \code{waiver()} for the default breaks computed by the
transformation object
\item A numeric vector of positions
\item A function that takes the limits as input and returns breaks
as output
}}
  \item{minor_breaks}{One of:
\itemize{
\item \code{NULL} for no minor breaks
\item \code{waiver()} for the default breaks (one minor break between
each major break)
\item A numeric vector of positions
\item A function that given the limits returns a vector of minor breaks.
}}
  \item{labels}{One of:
\itemize{
\item \code{NULL} for no labels
\item \code{waiver()} for the default labels computed by the
transformation object
\item A character vector giving labels (must be same length as \code{breaks})
\item A function that takes the breaks as input and returns labels
as output
}}
  \item{limits}{A numeric vector of length two providing limits of the scale.
Use \code{NA} to refer to the existing minimum or maximum.}
  \item{oob}{Function that handles limits outside of the scale limits
(out of bounds). The default replaces out of bounds values with \code{NA}.}
  \item{na.value}{Missing values will be replaced with this value.}
  \item{trans}{Either the name of a transformation object, or the
object itself. Built-in transformations include "asn", "atanh",
"boxcox", "exp", "identity", "log", "log10", "log1p", "log2",
"logit", "probability", "probit", "reciprocal", "reverse" and "sqrt".

A transformation object bundles together a transform, its inverse,
and methods for generating breaks and labels. Transformation objects
are defined in the scales package, and are called \code{name_trans}, e.g.
\code{\link[scales:boxcox_trans]{scales::boxcox_trans()}}. You can create your own
transformation with \code{\link[scales:trans_new]{scales::trans_new()}}.}
  \item{guide}{A function used to create a guide or its name. See
\code{\link[=guides]{guides()}} for more info.}
  \item{position}{The position of the axis. "left" or "right" for vertical
scales, "top" or "bottom" for horizontal scales}
  \item{super}{The super class to use for the constructed scale}
  \item{expand}{Vector of range expansion constants used to add some
padding around the data, to ensure that they are placed some distance
away from the axes. Use the convenience function \code{\link[=expand_scale]{expand_scale()}}
to generate the values for the \code{expand} argument. The defaults are to
expand the scale by 5\% on each side for continuous variables, and by
0.6 units on each side for discrete variables.}
}}

\item{max_size}{Size of largest points.}
}
\description{
\code{scale_size} scales area, \code{scale_radius} scales radius. The size
aesthetic is most commonly used for points and text, and humans perceive
the area of points (not their radius), so this provides for optimal
perception. \code{scale_size_area} ensures that a value of 0 is mapped
to a size of 0.
}
\examples{
p <- ggplot(mpg, aes(displ, hwy, size = hwy)) +
   geom_point()
p
p + scale_size("Highway mpg")
p + scale_size(range = c(0, 10))

# If you want zero value to have zero size, use scale_size_area:
p + scale_size_area()

# This is most useful when size is a count
ggplot(mpg, aes(class, cyl)) +
  geom_count() +
  scale_size_area()

# If you want to map size to radius (usually bad idea), use scale_radius
p + scale_radius()
}
\seealso{
\code{\link[=scale_size_area]{scale_size_area()}} if you want 0 values to be mapped
to points with size 0.
}
