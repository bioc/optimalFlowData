## ----setup, include=FALSE--------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----ej00, eval = FALSE----------------------------------------------------
#  if (!requireNamespace("BiocManager", quietly = TRUE))
#      install.packages("BiocManager")
#  
#  BiocManager::install("optimalFLow")

## ----ej0, echo = TRUE, message = FALSE-------------------------------------
library(optimalFlowData)
library(optimalFlow)
library(ellipse)

## ----ej1, echo = TRUE------------------------------------------------------
database = list(
  Cytometry2[which(Cytometry2$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry3[which(Cytometry3$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry4[which(Cytometry4$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry5[which(Cytometry5$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry7[which(Cytometry7$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry8[which(Cytometry8$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry9[which(Cytometry9$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry12[which(Cytometry12$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry13[which(Cytometry13$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry14[which(Cytometry14$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry15[which(Cytometry15$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry16[which(Cytometry16$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry17[which(Cytometry17$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry19[which(Cytometry19$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),],
  Cytometry21[which(Cytometry21$`Population ID (name)` %in% c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-")),]
  )

## ----ej111, echo = TRUE----------------------------------------------------
templates.optimalFlow =
  optimalFlowTemplates(
    database = database, templates.number = 5, cl.paral = 1
    )

## ----ej2, echo = TRUE------------------------------------------------------
plot(
  ellipse(
    templates.optimalFlow$database.elliptical[[3]][[1]]$cov[c(4,3),][,c(4,3)],
    centre = templates.optimalFlow$database.elliptical[[3]][[1]]$mean[c(4,3)]
    ),
  xlim = c(0,8000), ylim =c(0,8000), col = 1, type = "l",
  xlab = names(Cytometry1)[4], ylab = names(Cytometry1)[3], asp = 1
  )
for (j in 2:4){
  lines(
    ellipse(
      templates.optimalFlow$database.elliptical[[3]][[j]]$cov[c(4,3),][,c(4,3)],
      centre = templates.optimalFlow$database.elliptical[[3]][[j]]$mean[c(4,3)]
      ),
    col = j
    )
}

for (i in c(4:6,12)){
  for (j in 1:4){
    lines(
      ellipse(
        templates.optimalFlow$database.elliptical[[i]][[j]]$cov[c(4,3),][,c(4,3)],
        centre = templates.optimalFlow$database.elliptical[[i]][[j]]$mean[c(4,3)]
        ),
      col = j
      )
  }
}

## ----ej3, echo = TRUE------------------------------------------------------
plot(
  ellipse(
    templates.optimalFlow$templates[[3]][[1]]$cov[c(4,3),][,c(4,3)],
    centre = templates.optimalFlow$templates[[3]][[1]]$mean[c(4,3)]
    ),
  xlim = c(0,8000), ylim =c(0,8000), col = 1, type = "l",
  xlab = names(Cytometry1)[4], ylab = names(Cytometry1)[3], asp = 1
  )
for (j in 2:4){
  lines(
    ellipse(
      templates.optimalFlow$templates[[3]][[j]]$cov[c(4,3),][,c(4,3)],
      centre = templates.optimalFlow$templates[[3]][[j]]$mean[c(4,3)]
      ),
    col = j
    )
}

## ----ej4, echo = TRUE------------------------------------------------------
plot(
  ellipse(
    templates.optimalFlow$database.elliptical[[3]][[1]]$cov[c(4,3),][,c(4,3)],
    centre = templates.optimalFlow$database.elliptical[[3]][[1]]$mean[c(4,3)]
    ),
  xlim = c(0,8000), ylim =c(0,8000), col = 1, type = "l",
  xlab = names(Cytometry1)[4], ylab = names(Cytometry1)[3], asp = 1
  )
for (j in 2:4){
  lines(
    ellipse(
      templates.optimalFlow$database.elliptical[[3]][[j]]$cov[c(4,3),][,c(4,3)],
      centre = templates.optimalFlow$database.elliptical[[3]][[j]]$mean[c(4,3)]
      ),
    col = 1
    )
}

for (i in c(4:6,12)){
  for (j in 1:4){
    lines(
      ellipse(
        templates.optimalFlow$database.elliptical[[i]][[j]]$cov[c(4,3),][,c(4,3)],
        centre = templates.optimalFlow$database.elliptical[[i]][[j]]$mean[c(4,3)]
        ),
      col = 1
      )
  }
}

## ----ej5, echo = TRUE------------------------------------------------------
templates.optimalFlow.barycenter = 
  optimalFlowTemplates(
    database = database, templates.number = 5, consensus.method = "k-barycenter",
    barycenters.number = 4, bar.repetitions = 10, alpha.bar = 0.05, cl.paral = 1
    )
templates.optimalFlow.hdbscan = 
  optimalFlowTemplates(
    database = database, templates.number = 5, consensus.method = "hierarchical",
    cl.paral = 1
    )

## ----ej6, echo = TRUE------------------------------------------------------
plot(
  ellipse(
    templates.optimalFlow.barycenter$templates[[3]][[1]]$cov[c(4,3),][,c(4,3)],
    centre = templates.optimalFlow.barycenter$templates[[3]][[1]]$mean[c(4,3)]
    ),
  xlim = c(0,8000), ylim =c(0,8000), col = 1, type = "l",
  xlab = names(Cytometry1)[4], ylab = names(Cytometry1)[3], asp = 1
  )
for (j in 2:4){
  lines(
    ellipse(
      templates.optimalFlow.barycenter$templates[[3]][[j]]$cov[c(4,3),][,c(4,3)],
      centre = templates.optimalFlow.barycenter$templates[[3]][[j]]$mean[c(4,3)]
      ),
    col = j
    )
}

## ----ej7, echo=TRUE--------------------------------------------------------
plot(
  ellipse(
    templates.optimalFlow.hdbscan$templates[[3]][[1]]$cov[c(4,3),][,c(4,3)],
    centre = templates.optimalFlow.hdbscan$templates[[3]][[1]]$mean[c(4,3)]
    ),
  xlim = c(0,8000), ylim =c(0,8000), col = 1, type = "l",
  xlab = names(Cytometry1)[4], ylab = names(Cytometry1)[3], asp = 1
  )
for (j in 2:4){
  lines(
    ellipse(
      templates.optimalFlow.hdbscan$templates[[3]][[j]]$cov[c(4,3),][,c(4,3)],
      centre = templates.optimalFlow.hdbscan$templates[[3]][[j]]$mean[c(4,3)]
      ),
    col = j
    )
}

## ----ej77, echo = TRUE-----------------------------------------------------
templates.optimalFlow.unsup =
  optimalFlowTemplates(
    database = database, hclust.method = "hdbscan", cl.paral = 1, consensus.method = "hierarchical"
    )
print(templates.optimalFlow.unsup$clustering)
print(templates.optimalFlow$clustering)

## ----ej8, echo = TRUE------------------------------------------------------
classification.optimalFlow =
  optimalFlowClassification(
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0) > 0), 1:10],
    database, templates.optimalFlow, consensus.method = "pooling", cl.paral = 1)

scoreF1.optimalFlow = optimalFlow::f1Score(classification.optimalFlow$cluster,
Cytometry1[which(match(Cytometry1$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),], noise.types)
print(scoreF1.optimalFlow)

## ----ej9, echo = TRUE------------------------------------------------------
classification.optimalFlow.barycenter =
  optimalFlowClassification(
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0) > 0), 1:10],
    database, templates.optimalFlow.barycenter, consensus.method = "k-barycenter", cl.paral = 1
    )

scoreF1.optimalFlow.barycenter = 
  f1ScoreVoting(
    classification.optimalFlow.barycenter$cluster.vote, classification.optimalFlow.barycenter$cluster,
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
    1.01, noise.types
    )
print(scoreF1.optimalFlow.barycenter$F1_score)

## ----ej10, echo = TRUE-----------------------------------------------------
classification.optimalFlow.hdbscan =
  optimalFlowClassification(
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0) > 0), 1:10],
    database, templates.optimalFlow.hdbscan, consensus.method = "hierarchical", cl.paral = 1
    )

scoreF1.optimalFlow.hdbscan =
  f1ScoreVoting(
    classification.optimalFlow.hdbscan$cluster.vote, classification.optimalFlow.hdbscan$cluster,
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
    1.01, noise.types
  )
print(scoreF1.optimalFlow.hdbscan$F1_score)

## ----ej11, echo = TRUE-----------------------------------------------------
classification.optimalFlow.2 =
  optimalFlowClassification(
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0) > 0), 1:10],
    database, templates.optimalFlow, consensus.method = "pooling", classif.method = "matching",
    cost.function = "ellipses", cl.paral = 1
    )
scoreF1.optimalFlow.2 =
  f1ScoreVoting(
    classification.optimalFlow.2$cluster.vote, classification.optimalFlow.2$cluster,
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
    1.01, noise.types
    )
print(scoreF1.optimalFlow.2$F1_score)

## ----ej12, echo = TRUE-----------------------------------------------------
classification.optimalFlow.3 =
  optimalFlowClassification(
    Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0) > 0), 1:10],
    database, templates.optimalFlow, consensus.method = "pooling",
    classif.method = "random forest", cl.paral = 1
    )
scoreF1.optimalFlow.3 =
  optimalFlow::f1Score(
    classification.optimalFlow.3$cluster, Cytometry1[which(match(Cytometry1$`Population ID (name)`, c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
    noise.types
    )
print(scoreF1.optimalFlow.3)

