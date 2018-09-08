readRealMlc <- function(fileR, fileG, fileB, nrow, ncol){

  dataR <- matrix(readBin(fileR, double(), n = (nrow * ncol), size = 4, endian = "little"),
                  ncol = ncol, nrow = nrow, byrow = TRUE)
  dataG <- matrix(readBin(fileG, double(), n = (nrow * ncol), size = 4, endian = "little"),
                  ncol = ncol, nrow = nrow, byrow = TRUE)
  dataB <- matrix(readBin(fileB, double(), n = (nrow * ncol), size = 4, endian = "little"),
                  ncol = ncol, nrow = nrow, byrow = TRUE)


  RGB_polsar <- array( 0, dim = c(nrow(dataR), ncol(dataR), 3) )
  RGB_polsar[,,1] <- dataR
  RGB_polsar[,,2] <- dataG
  RGB_polsar[,,3] <- dataB

  return(RGB_polsar)
}
