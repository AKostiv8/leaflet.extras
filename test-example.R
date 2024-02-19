library(leaflet)
library(dplyr)
library(tidyverse)
library(leaflet.extras)

# Draw update
leaflet() %>%
  setView(0, 0, 2) %>%
  addTiles() %>%
  addDrawToolbar(
    targetGroup = "draw",
    polylineOptions = FALSE,
    circleOptions = FALSE,
    rectangleOptions = FALSE,
    markerOptions = FALSE,
  #   circleMarkerOptions = FALSE,
    editOptions = editToolbarOptions(
      selectedPathOptions = selectedPathOptions()
    )
  )  %>%
  addLayersControl(
    overlayGroups = c("draw"),
    options = layersControlOptions(collapsed = FALSE)
  )

# addSearchOSM
leaflet() %>% addTiles() %>% addSearchOSM()
