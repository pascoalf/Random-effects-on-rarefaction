# Package
require(vegan)
# Data
data(BCI)

set.seed(123); a <- rrarefy(BCI,min(rowSums(BCI)))
set.seed(1234); b <- rrarefy(BCI,min(rowSums(BCI)))
set.seed(12345); c <- rrarefy(BCI,min(rowSums(BCI)))
set.seed(123456); d <- rrarefy(BCI,min(rowSums(BCI)))
set.seed(123); e <- rrarefy(BCI,min(rowSums(BCI)))

# Rarefaction outputs from different set.seed() parameters are not identical
identical(a,b)
identical(a,c)
identical(a,d)
identical(b,c)
identical(b,d)

# Rarefaction outputs from the same set.seed() parameter are identical
identical(a,e)
