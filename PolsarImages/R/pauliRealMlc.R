pauliRealMlc <- function(realData){


  pauli <- array( 0, dim = dim(realData) )
  pauli[,,1] <- realData[,,1] - realData[,,3]
  pauli[,,2] <- realData[,,2]
  pauli[,,3] <- realData[,,1] + realData[,,3]

  pauli <- equalRealMlc(pauli)
  imageShow(pauli)

}
