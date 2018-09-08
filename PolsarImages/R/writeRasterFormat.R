writeRasterFormat <- function(data, rasterfileName){

  if(require(raster)){

    dataRaster <- brick(data)
    dataSaved <- writeRaster(dataRaster, filename = rasterfileName, format="raster", overwrite=TRUE)

  }

}
