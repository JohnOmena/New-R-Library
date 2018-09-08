equalRealMlc <- function(realData){

  realData[,,1] <- matrix(ecdf(realData[,,1])(realData[,,1]), nrow=nrow(realData[,,1]),
                      ncol=ncol(realData[,,1]))
  realData[,,2] <- matrix(ecdf(realData[,,2])(realData[,,2]), nrow=nrow(realData[,,2]),
                      ncol=ncol(realData[,,2]))
  realData[,,3] <- matrix(ecdf(realData[,,3])(realData[,,3]), nrow=nrow(realData[,,3]),
                      ncol=ncol(realData[,,3]))

  return(realData)
}
