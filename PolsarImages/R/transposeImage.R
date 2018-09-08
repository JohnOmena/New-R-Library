functionTest <- function(polsarData, nrow, ncol){

  dataResult <- array(0, dim = c(ncol, nrow, 3))

  dataResult[,, 1] <- t(polsarData[,, 1])
  dataResult[,, 2] <- t(polsarData[,, 2])
  dataResult[,, 3] <- t(polsarData[,, 3])

  return(dataResult)

}
