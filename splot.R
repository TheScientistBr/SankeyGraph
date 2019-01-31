library(networkD3)

URL <- "https://cdn.rawgit.com/christophergandrud/networkD3/master/JSONdata/energy.json"
Energy <- jsonlite::fromJSON(URL)

nodes <- read.csv("nodes.csv",stringsAsFactors = FALSE)
links <-  read.csv("links.csv",stringsAsFactors = FALSE)

nodes$Id <- NULL
links$X <- NULL

sankeyNetwork(Links = links, Nodes = nodes, Source = "source",
              Target = "target", Value = "value", NodeID = "name",
              units = "unidades", fontSize = 12, nodeWidth = 30)

