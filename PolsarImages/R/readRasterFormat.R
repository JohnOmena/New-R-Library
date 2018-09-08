readRasterFormat <- function(rasterFileName){

  if(require(raster)){

    dataRaster <- brick(rasterFileName)

    RGB_polsar <- array( 0, dim = c(nrow(dataRaster[[1]]), ncol(dataRaster[[1]]), 3) )

    RGB_polsar[,,1] <- as.array(dataRaster[[1]])
    RGB_polsar[,,2] <- as.array(dataRaster[[2]])
    RGB_polsar[,,3] <- as.array(dataRaster[[3]])

    return(RGB_polsar)

  }

}
