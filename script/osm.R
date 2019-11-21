#-- packages
library(tidyverse)
library(osmdata)
extrafont::loadfonts(device="win")

#--set wd
setwd("D:/Documents/R/scripts/osm/")


#--Get coordinates (Example)
getbb("Managua Nicaragua")
getbb("León Nicaragua")
getbb("Boaco Nicaragua")
getbb("Jinotepe Nicaragua")
getbb("Chinandega Nicaragua")
getbb("Juigalpa Nicaragua")
getbb("Estelí Nicaragua")
getbb("Granada Nicaragua")
getbb("Jinotega Nicaragua")
getbb("Somoto Nicaragua")
getbb("Masaya Nicaragua")
getbb("Matagalpa Nicaragua")
getbb("Ocotal Nicaragua")
getbb("Rivas Nicaragua")
getbb("San Carlos Nicaragua")
getbb("Bilwi Nicaragua")
getbb("Bluefields Nicaragua")

#-------------------
#-- MANAGUA 
#-------------------
# Getting streets in Managua
streets <- getbb("Managua Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Managua Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Managua Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.43372, -86.11372), 
           ylim = c(11.98612, 12.30612),
           expand = FALSE) +
  theme_void() + 
  ggtitle("Managua") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin=unit(c(0,0,0,0),"mm")
  )

ggsave("figs/managua.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- León
#-------------------
# Getting streets in León
streets <- getbb("León Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("León Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("León Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-87.03735, -86.71735), 
           ylim = c(12.27454, 12.59454),
           expand = FALSE) +
  theme_void() + 
  ggtitle("León") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin=unit(c(0,0,0,0),"mm")
  )

ggsave("figs/leon.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Boaco
#-------------------
# Getting streets in Boaco
streets <- getbb("Boaco Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Boaco Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Boaco Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-85.81981, -85.49981), 
           ylim = c(12.31180, 12.63180),
           expand = FALSE) +
  theme_void() +
  ggtitle("Boaco") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/boaco.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Jinotepe
#-------------------
# Getting streets in Jinotepe
streets <- getbb("Jinotepe Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Jinotepe Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Jinotepe Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.45406, -86.15389), 
           ylim = c(11.44635, 11.89552),
           expand = FALSE) +
  theme_void() +
  ggtitle("Jinotepe") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/jinotepe.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Chinandega
#-------------------
# Getting streets in Chinandega
streets <- getbb("Chinandega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Chinandega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Chinandega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-87.28781, -86.96781), 
           ylim = c(12.46980, 12.78980),
           expand = FALSE) +
  theme_void() +
  ggtitle("Chinandega") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/chinandega.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Juigalpa
#-------------------
# Getting streets in Juigalpa
streets <- getbb("Juigalpa Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Juigalpa Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Juigalpa Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-85.52894, -85.20894), 
           ylim = c(11.94860, 12.26860),
           expand = FALSE) +
  theme_void() +
  ggtitle("Juigalpa") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/juigalpa.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Esteli
#-------------------
# Getting streets in Esteli
streets <- getbb("Esteli Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Esteli Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Esteli Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.38229, -86.33831), 
           ylim = c(13.06010, 13.11246),
           expand = FALSE) +
  theme_void() +
  ggtitle("Esteli") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/esteli.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Granada
#-------------------
# Getting streets in Granada
streets <- getbb("Granada Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Granada Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Granada Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.11877, -85.79877), 
           ylim = c(11.77473, 12.09473),
           expand = FALSE) +
  theme_void() +
  ggtitle("Granada") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/granada.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Jinotega
#-------------------
# Getting streets in Jinotega
streets <- getbb("Jinotega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Jinotega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Jinotega Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.16235, -85.84235), 
           ylim = c(12.93104, 13.25104),
           expand = FALSE) +
  theme_void() +
  ggtitle("Jinotega") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/jinotega.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Somoto
#-------------------
# Getting streets in Somoto
streets <- getbb("Somoto Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Somoto Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Somoto Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.76990, -86.50687), 
           ylim = c(13.42487, 13.66303),
           expand = FALSE) +
  theme_void() +
  ggtitle("Somoto") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/somoto.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)


#-------------------
#-- Masaya
#-------------------
# Getting streets in Masaya
streets <- getbb("Masaya Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Masaya Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Masaya Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.24826, -85.92826), 
           ylim = c(11.81640, 12.13640),
           expand = FALSE) +
  theme_void() +
  ggtitle("Masaya") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/masaya.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)


#-------------------
#-- Matagalpa
#-------------------
# Getting streets in Matagalpa
streets <- getbb("Matagalpa Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Matagalpa Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Matagalpa Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.07743, -85.75743), 
           ylim = c(12.76856, 13.08856),
           expand = FALSE) +
  theme_void() +
  ggtitle("Matagalpa") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/matagalpa.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Ocotal
#-------------------
# Getting streets in Ocotal
streets <- getbb("Ocotal Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Ocotal Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Ocotal Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.63639, -86.31639), 
           ylim = c(13.47332, 13.79332),
           expand = FALSE) +
  theme_void() +
  ggtitle("Ocotal") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/ocotal.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Rivas
#-------------------
# Getting streets in Rivas
streets <- getbb("Rivas Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Rivas Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Rivas Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-86.28858, -85.14969), 
           ylim = c(11.04422, 11.71264),
           expand = FALSE) +
  theme_void() +
  ggtitle("Rivas") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/rivas.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- San Carlos 
#-------------------
# Getting streets in San Carlos
streets <- getbb("San Carlos Rio San Juan Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("San Carlos Rio San Juan Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("San Carlos Rio San Juan Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-84.93784, -84.61784), 
           ylim = c(10.96353, 11.28353),
           expand = FALSE) +
  theme_void() +
  ggtitle("San Carlos") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/san_carlos.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)


#-------------------
#-- Bilwi 
#-------------------
# Getting streets in Bilwi
streets <- getbb("Bilwi Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Bilwi Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Bilwi Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-83.54312, -83.22312), 
           ylim = c(13.86945, 14.18945),
           expand = FALSE) +
  theme_void() +
  ggtitle("Bilwi") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/bilwi.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300)

#-------------------
#-- Bluefields
#-------------------
# Getting streets in Bluefields
streets <- getbb("Bluefields Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) %>%
  osmdata_sf()

streets

# Small streets
small_streets <- getbb("Bluefields Nicaragua")%>%
  opq()%>%
  add_osm_feature(key = "highway", 
                  value = c("residential", "living_street",
                            "unclassified",
                            "service", "footway")) %>%
  osmdata_sf()

# Rivers
river <- getbb("Bluefields Nicaragua") %>%
  opq()%>%
  add_osm_feature(key = "waterway", value = "river") %>%
  osmdata_sf()

# Maps
ggplot() +
  geom_sf(data = streets$osm_lines,
          inherit.aes = FALSE,
          color = "#fffc3b",
          size = .4,
          alpha = .8) +
  geom_sf(data = small_streets$osm_lines,
          inherit.aes = FALSE,
          color = "#ffbe7f",
          size = .2,
          alpha = .6) +
  geom_sf(data = river$osm_lines,
          inherit.aes = FALSE,
          color = "#7fc0ff",
          size = .2,
          alpha = .5) +
  coord_sf(xlim = c(-83.92491, -83.60491), 
           ylim = c(11.85315, 12.17315),
           expand = FALSE) +
  theme_void() +
  ggtitle("Bluefields") + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 30, colour = "#FFFFFF", family = "Roboto Condensed"),
    plot.background = element_rect(fill = "#282828"),
    plot.margin = unit(c(0,0,0,0),"in")
  )

ggsave("figs/bluefields.png", 
       width = 6, height = 6, 
       plot = last_plot(), 
       units = "in", dpi = 300) 

