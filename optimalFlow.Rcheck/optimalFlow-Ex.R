pkgname <- "optimalFlow"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('optimalFlow')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("GaussianBarycenters")
### * GaussianBarycenters

flush(stderr()); flush(stdout())

### Name: GaussianBarycenters
### Title: GaussianBarycenters
### Aliases: GaussianBarycenters

### ** Examples

GaussianBarycenters(list(diag(2,2),diag(1,2)), c(0.5,0.5))



cleanEx()
nameEx("InitClusters")
### * InitClusters

flush(stderr()); flush(stdout())

### Name: InitClusters
### Title: InitClusters
### Aliases: InitClusters

### ** Examples

######EXAMPLE tclust_
##### tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

##restr.diffax <- function (iter, pa)
##	Apply constraints to covariance matrices
iter=output3$iter
pa=output3$pa

#Gives an initial solution based on a random subsample
iter=InitClusters (X=x, iter=output3$iter, pa=output3$pa)
iter$cw
iter$center
iter$sigma



cleanEx()
nameEx("TreatSingularity")
### * TreatSingularity

flush(stderr()); flush(stdout())

### Name: TreatSingularity
### Title: TreatSingularity
### Aliases: TreatSingularity

### ** Examples

######EXAMPLE tclust_
##### tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

##restr.diffax <- function (iter, pa)
##	Apply constraints to covariance matrices
iter=output3$iter
pa=output3$pa

##### It shows a warning message
#####	warning ("points in the data set are concentrated in k points after trimming ")
TreatSingularity (iter, pa)



cleanEx()
nameEx("calcobj")
### * calcobj

flush(stderr()); flush(stdout())

### Name: calcobj
### Title: calcobj
### Aliases: calcobj

### ** Examples

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),
matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 ,Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

iter = output3$iter
pa = output3$pa

## calcobj  obtains the objective function value for data,
## an input parameters and a solution, including assigment and parameters

iter_ = calcobj (X=x, iter=iter, pa=pa)
iter_$obj



cleanEx()
nameEx("costWasserMatchingEllipse")
### * costWasserMatchingEllipse

flush(stderr()); flush(stdout())

### Name: costWasserMatchingEllipse
### Title: costWasserMatchingEllipse
### Aliases: costWasserMatchingEllipse

### ** Examples

partition1 = list(list(mean = c(1,1), cov = diag(1,2), weight = 0.5, type = "1"),
list(mean = c(-1,-1), cov = diag(1,2), weight = 0.5, type = "2"))
partition2 = list(list(list(mean = c(1,-1), cov = diag(1,2),
weight = 0.5, type = "1"), list(mean = c(-1,1), cov = diag(1,2), weight = 0.5, type = "2")))
costWasserMatchingEllipse(partition1, partition2)



cleanEx()
nameEx("distGaussian")
### * distGaussian

flush(stderr()); flush(stdout())

### Name: distGaussian
### Title: distGaussian
### Aliases: distGaussian

### ** Examples

distGaussian(list(mean = c(-1,-1), cov = diag(2,2)), list(mean = c(1,1), cov = diag(1,2)))



cleanEx()
nameEx("distGaussianCov")
### * distGaussianCov

flush(stderr()); flush(stdout())

### Name: distGaussianCov
### Title: distGaussianCov
### Aliases: distGaussianCov

### ** Examples

distGaussianCov(list(mean = c(1,1), cov = diag(2,2)), list(mean = c(1,1), cov = diag(1,2)))



cleanEx()
nameEx("distGaussianMean")
### * distGaussianMean

flush(stderr()); flush(stdout())

### Name: distGaussianMean
### Title: distGaussianMean
### Aliases: distGaussianMean

### ** Examples

distGaussianMean(list(mean = c(-1,-1), cov = diag(1,2)), list(mean = c(1,1), cov = diag(1,2)))



cleanEx()
nameEx("dmnorm")
### * dmnorm

flush(stderr()); flush(stdout())

### Name: dmnorm
### Title: dmnorm
### Aliases: dmnorm

### ** Examples

##	Multivariate normal density
##	Gives Multivariate normal density values for given  mu  and sigma
x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
dmnorm (X=x,mu=c(0,0),sigma=diag(2))



cleanEx()
nameEx("estimClustPar")
### * estimClustPar

flush(stderr()); flush(stdout())

### Name: estimClustPar
### Title: estimClustPar
### Aliases: estimClustPar

### ** Examples

## tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

##restr.diffax <- function (iter, pa)
##	Apply constraints to covariance matrices
iter=output3$iter
pa=output3$pa

## estimClustPar  obtains the best values for the parameters,
##given data, input parameters and an assigment.
output4=estimClustPar (X=x, iter, pa)
output4$center
output4$sigma
output4$cw



cleanEx()
nameEx("estimCovCellGeneral")
### * estimCovCellGeneral

flush(stderr()); flush(stdout())

### Name: estimCovCellGeneral
### Title: estimCovCellGeneral
### Aliases: estimCovCellGeneral

### ** Examples

estimCovCellGeneral("Basophils", Cytometry1[,1:10], Cytometry1[,11])



cleanEx()
nameEx("estimationCellBarycenter")
### * estimationCellBarycenter

flush(stderr()); flush(stdout())

### Name: estimationCellBarycenter
### Title: estimationCellBarycenter
### Aliases: estimationCellBarycenter

### ** Examples

partition1 = list(list(mean = c(1,1), cov = diag(1,2), weight = 0.5, type = "1"),
list(mean = c(-1,-1), cov = diag(1,2), weight = 0.5, type = "2"))
partition2 = list(list(mean = c(1,-1), cov = diag(1,2), weight = 0.5, type = "1"),
list(mean = c(-1,1), cov = diag(1,2), weight = 0.5, type = "2"))
cytometries = list(partition1, partition2)
estimationCellBarycenter("1",cytometries)



cleanEx()
nameEx("f1Score")
### * f1Score

flush(stderr()); flush(stdout())

### Name: f1Score
### Title: f1Score
### Aliases: f1Score

### ** Examples

f1Score(dplyr::pull(Cytometry3[c(sample(1:250,250),251:(dim(Cytometry3)[1])),],11),
Cytometry3, noise.types)



cleanEx()
nameEx("f1ScoreVoting")
### * f1ScoreVoting

flush(stderr()); flush(stdout())

### Name: f1ScoreVoting
### Title: f1ScoreVoting
### Aliases: f1ScoreVoting

### ** Examples

database = list(as.data.frame(Cytometry2)[which(match(Cytometry2$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry3)[which(match(Cytometry3$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry4)[which(match(Cytometry4$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry5)[which(match(Cytometry5$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry7)[which(match(Cytometry7$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry8)[which(match(Cytometry8$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry9)[which(match(Cytometry9$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry12)[which(match(Cytometry12$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry13)[which(match(Cytometry13$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry14)[which(match(Cytometry14$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry15)[which(match(Cytometry15$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry16)[which(match(Cytometry16$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry17)[which(match(Cytometry17$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry19)[which(match(Cytometry19$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry21)[which(match(Cytometry21$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),])


templates.optimalFlow = optimalFlowTemplates(database = database, templates.number = 5,
cl.paral = 1)


classification.optimalFlow = optimalFlowClassification(as.data.frame(Cytometry1)[
which(match(Cytometry1$`Population ID (name)`,c("Monocytes", "CD4+CD8-",
"Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0), 1:10],database, templates.optimalFlow,
classif.method = "matching", cost.function = "ellipses", cl.paral = 1)


f1ScoreVoting(classification.optimalFlow$cluster.vote, classification.optimalFlow$cluster,
as.data.frame(Cytometry1)[which(match(Cytometry1$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),], 1.01, noise.types)




cleanEx()
nameEx("findClustAssig")
### * findClustAssig

flush(stderr()); flush(stdout())

### Name: findClustAssig
### Title: findClustAssig
### Aliases: findClustAssig

### ** Examples

##### tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

iter = output3$iter
pa = output3$pa

output5 = findClustAssig(X=x, iter, pa)



cleanEx()
nameEx("getini")
### * getini

flush(stderr()); flush(stdout())

### Name: getini
### Title: getini
### Aliases: getini

### ** Examples

## gives a random vector from a K dimensional multinomial(no.trim, pi.ini)
## with pi.ini a random vector build with random values from uniform (0,1)
v=getini  (K=3, no.trim=100)
v



cleanEx()
nameEx("kcenter")
### * kcenter

flush(stderr()); flush(stdout())

### Name: kcenter
### Title: kcenter
### Aliases: kcenter

### ** Examples

normals = list(list(mean = c(1,1), cov = diag(2,2)),
list(mean = c(1,1), cov = diag(1,2)), list(mean = c(3,3), cov = diag(1,2)))
kcenter(normals, 2, c(1,1,2))



cleanEx()
nameEx("labelTransfer")
### * labelTransfer

flush(stderr()); flush(stdout())

### Name: labelTransfer
### Title: labelTransfer
### Aliases: labelTransfer

### ** Examples

data.example = data.frame(v1 = c(rnorm(50,2,1), rnorm(50,-2,1)),
v2 = c(rnorm(50,2,1), rnorm(50,-2,1)), id = c(rep(0,50), rep(1,50)))
test.labels = c(rep("a",50), rep("b", 50))
labelTransfer(data.example, data.example[,1:2], test.labels)



cleanEx()
nameEx("labelTransferEllipse")
### * labelTransferEllipse

flush(stderr()); flush(stdout())

### Name: labelTransferEllipse
### Title: labelTransferEllipse
### Aliases: labelTransferEllipse

### ** Examples

partition1 = list(list(mean = c(1,1), cov = diag(1,2), weight = 0.5, type = "1"),
list(mean = c(-1,-1), cov = diag(1,2), weight = 0.5, type = "2"))
partition2 = list(list(mean = c(1,1), cov = diag(1,2), weight = 0.5, type = "a"),
list(mean = c(-1,-1), cov = diag(1,2), weight = 0.5, type = "b"))
labelTransferEllipse(1, partition2, partition1)



cleanEx()
nameEx("optimalFlowClassification")
### * optimalFlowClassification

flush(stderr()); flush(stdout())

### Name: optimalFlowClassification
### Title: optimalFlowClassification
### Aliases: optimalFlowClassification

### ** Examples

database = list(as.data.frame(Cytometry2)[which(match(Cytometry2$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry3)[which(match(Cytometry3$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry4)[which(match(Cytometry4$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry5)[which(match(Cytometry5$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry7)[which(match(Cytometry7$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry8)[which(match(Cytometry8$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry9)[which(match(Cytometry9$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry12)[which(match(Cytometry12$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry13)[which(match(Cytometry13$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry14)[which(match(Cytometry14$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry15)[which(match(Cytometry15$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry16)[which(match(Cytometry16$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry17)[which(match(Cytometry17$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry19)[which(match(Cytometry19$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry21)[which(match(Cytometry21$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),])


templates.optimalFlow = optimalFlowTemplates(database = database, templates.number = 5,
cl.paral = 1)


classification.optimalFlow = optimalFlowClassification(as.data.frame(Cytometry1)[
which(match(Cytometry1$`Population ID (name)`,c("Monocytes", "CD4+CD8-", "Mature SIg Kappa",
"TCRgd-"), nomatch = 0)>0), 1:10], database, templates.optimalFlow, cl.paral = 1)


scoreF1.optimalFlow = optimalFlow::f1Score(classification.optimalFlow$cluster,
as.data.frame(Cytometry1)[which(match(Cytometry1$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),], noise.types)




cleanEx()
nameEx("optimalFlowTemplates")
### * optimalFlowTemplates

flush(stderr()); flush(stdout())

### Name: optimalFlowTemplates
### Title: optimalFlowTemplates
### Aliases: optimalFlowTemplates

### ** Examples


database = list(as.data.frame(Cytometry2)[which(match(Cytometry2$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry3)[which(match(Cytometry3$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry4)[which(match(Cytometry4$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry5)[which(match(Cytometry5$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry7)[which(match(Cytometry7$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry8)[which(match(Cytometry8$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry9)[which(match(Cytometry9$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry12)[which(match(Cytometry12$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry13)[which(match(Cytometry13$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry14)[which(match(Cytometry14$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry15)[which(match(Cytometry15$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry16)[which(match(Cytometry16$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry17)[which(match(Cytometry17$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry19)[which(match(Cytometry19$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry21)[which(match(Cytometry21$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),])


templates.optimalFlow = optimalFlowTemplates(database = database, templates.number = 5,
cl.paral = 1)



cleanEx()
nameEx("qdaClassification")
### * qdaClassification

flush(stderr()); flush(stdout())

### Name: qdaClassification
### Title: qdaClassification
### Aliases: qdaClassification

### ** Examples

data.qda = cbind(rnorm(50), rnorm(50))
exp(qdaClassification(list(mean = c(0,0), cov = diag(1,2), weight = 1), data.qda))



cleanEx()
nameEx("restr.diffax")
### * restr.diffax

flush(stderr()); flush(stdout())

### Name: restr.diffax
### Title: restr.diffax
### Aliases: restr.diffax

### ** Examples

######EXAMPLE tclust_
##### tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

##restr.diffax <- function (iter, pa)
##	Apply constraints to covariance matrices
iter=output3$iter
pa=output3$pa
pa$maxfact_e=1.1
print(iter$sigma)
iter2=restr.diffax (iter, pa)
print(iter2$sigma)



cleanEx()
nameEx("restr2_eigenv")
### * restr2_eigenv

flush(stderr()); flush(stdout())

### Name: restr2_eigenv
### Title: restr2_eigenv
### Aliases: restr2_eigenv

### ** Examples

#restr2_eigenv <- function(autovalues, ni.ini, factor_e, zero.tol)
#gives optimal constrained eigenvalues
autovalues=matrix(c(2,3,4,1,2,3),nrow=2)
ni.ini=c(2,2,3)
factor_e=1.1
zero.tol=1e-9
autovalues_const= restr2_eigenv (autovalues, ni.ini, factor_e, zero.tol)
autovalues_const



cleanEx()
nameEx("ssclmat")
### * ssclmat

flush(stderr()); flush(stdout())

### Name: ssclmat
### Title: ssclmat
### Aliases: ssclmat

### ** Examples

######EXAMPLE tclust_
##### tclust_ is the function which obtain the clusters for tclust_H function

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )

##restr.diffax <- function (iter, pa)
##	Apply constraints to covariance matrices
iter=output3$iter
pa=output3$pa
pa$maxfact_e=1.1
iter2=restr.diffax (iter, pa)

##EXAMPLE	extract matrix from the object containing covariance matrices
##sclmat <- function (x, k) as.matrix (x[,,k])
ssclmat(iter2$sigma,k=1)



cleanEx()
nameEx("tclustWithInitialization")
### * tclustWithInitialization

flush(stderr()); flush(stdout())

### Name: tclustWithInitialization
### Title: tclustWithInitialization
### Aliases: tclustWithInitialization

### ** Examples

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),
matrix(rnorm(100)+4,ncol=2))

## robust cluster obtention from a sample x asking for 3 clusters,
## trimming level 0.05 and constrain level 12

k=3;alpha = 0.05;restr.fact = 12
output=tclust_H (x=x, k = k, alpha = alpha, nstart = 50, iter.max = 20,
restr = "eigen", restr.fact = restr.fact, sol_ini_p = FALSE, sol_ini = NA,
equal.weights = FALSE, center = center, scale = scale, store.x = TRUE,
drop.empty.clust = TRUE, trace = 0, warnings = 3, zero.tol = 1e-16)

## cluster assigment

output2 = tclustWithInitialization(data.frame(x, output$cluster), x, "points", 0.05, 10)



cleanEx()
nameEx("tclust_")
### * tclust_

flush(stderr()); flush(stdout())

### Name: tclust_
### Title: tclust_
### Aliases: tclust_

### ** Examples

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),matrix(rnorm(100)+4,ncol=2))
output3=tclust_( X=x , K=3 , alpha = 0.05 , niter = 20 , Ksteps=10 ,
equal.weights = FALSE, restr.cov.value = "eigen" ,
maxfact_e = 5 , zero.tol = 1e-16 ,  trace = 0 ,
sol_ini_p = FALSE ,   sol_ini=NA )
## cluster assigment
output3$iter$assig
plot(x,col=output3$iter$assig+1)



cleanEx()
nameEx("tclust_H")
### * tclust_H

flush(stderr()); flush(stdout())

### Name: tclust_H
### Title: tclust_H
### Aliases: tclust_H

### ** Examples


## tclust_H if the function which gives clusters to the user.
## The main role of this function is to be an interface with
## the user using labels for the parameters similar to tclust
## function in tclust package

x=rbind(matrix(rnorm(100),ncol=2),matrix(rnorm(100)+2,ncol=2),
matrix(rnorm(100)+4,ncol=2))

## robust cluster obtention from a sample x asking for 3 clusters,
## trimming level 0.05 and constrain level 12

k=3;alpha = 0.05;restr.fact = 12
output=tclust_H (x=x, k = k, alpha = alpha, nstart = 50, iter.max = 20,
restr = "eigen", restr.fact = restr.fact, sol_ini_p = FALSE, sol_ini = NA,
equal.weights = FALSE, center = center, scale = scale, store.x = TRUE,
drop.empty.clust = TRUE, trace = 0, warnings = 3, zero.tol = 1e-16)

## cluster assigment

output$cluster
plot(x,col=output$cluster)



cleanEx()
nameEx("trimmedKBarycenter")
### * trimmedKBarycenter

flush(stderr()); flush(stdout())

### Name: trimmedKBarycenter
### Title: trimmedKBarycenter
### Aliases: trimmedKBarycenter

### ** Examples

normals = list(list(mean = c(1,1), cov = diag(2,2)), list(mean = c(1,1),
cov = diag(1,2)), list(mean = c(3,3), cov = diag(1,2)))
trimmedKBarycenter(2, 0, "rnd", normals)



cleanEx()
nameEx("trimmedMinDist")
### * trimmedMinDist

flush(stderr()); flush(stdout())

### Name: trimmedMinDist
### Title: trimmedMinDist
### Aliases: trimmedMinDist

### ** Examples

normals = list(list(mean = c(1,1), cov = diag(2,2)),
list(mean = c(1,1), cov = diag(1,2)), list(mean = c(3,3), cov = diag(1,2)))
k_barycenter = kcenter(normals, 2, c(1,1,2))$kcenters
trimmedMinDist(normals,k_barycenter, 0)



cleanEx()
nameEx("voteLabelTransfer")
### * voteLabelTransfer

flush(stderr()); flush(stdout())

### Name: voteLabelTransfer
### Title: voteLabelTransfer
### Aliases: voteLabelTransfer

### ** Examples

data.example = data.frame(v1 = c(rnorm(50,2,1), rnorm(50,-2,1)),
v2 = c(rnorm(50,2,1), rnorm(50,-2,1)), id = c(rep(0,50), rep(1,50)))
test.labels = c(rep("a",50), rep("b", 50))
voteLabelTransfer(test.partition = test.labels, test.cytometry = data.example[,1:2],
training.cytometries = list(data.example), op.syst = .Platform$OS.type)$final.vote[[1]]



cleanEx()
nameEx("voteTransformation")
### * voteTransformation

flush(stderr()); flush(stdout())

### Name: voteTransformation
### Title: voteTransformation
### Aliases: voteTransformation

### ** Examples

vote.0 = list("1" = data.frame(cell = c(1,2), "compound.proportion" = c(0.7,0.3),
"simple.proportion"= c(0.7,0.3)), "2" = data.frame(cell = c(1,2),
"compound.proportion" = c(0.3,0.7), "simple.proportion"= c(0.3,0.7)))
vote.1.1 = t(c(0.8,0.2))
names(vote.1.1) = c("A","B")
vote.1.2 = t(c(0.2,0.8))
names(vote.1.2) = c("A","B")
vote.1 = list(vote.1.1, vote.1.2)
voteTransformation(vote.0, vote.1)



cleanEx()
nameEx("w2dist")
### * w2dist

flush(stderr()); flush(stdout())

### Name: w2dist
### Title: w2dist
### Aliases: w2dist

### ** Examples

P = list(mean = c(1,1), cov = diag(1,2))
Q = list(mean = c(0,0), cov = 1.1*diag(1,2))
w2dist(P,Q)



cleanEx()
nameEx("wasserCostFunction")
### * wasserCostFunction

flush(stderr()); flush(stdout())

### Name: wasserCostFunction
### Title: wasserCostFunction
### Aliases: wasserCostFunction

### ** Examples


database = list(as.data.frame(Cytometry2)[which(match(Cytometry2$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry3)[which(match(Cytometry3$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry4)[which(match(Cytometry4$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry5)[which(match(Cytometry5$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry7)[which(match(Cytometry7$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry8)[which(match(Cytometry8$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry9)[which(match(Cytometry9$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry12)[which(match(Cytometry12$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry13)[which(match(Cytometry13$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry14)[which(match(Cytometry14$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry15)[which(match(Cytometry15$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry16)[which(match(Cytometry16$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry17)[which(match(Cytometry17$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry19)[which(match(Cytometry19$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),],
as.data.frame(Cytometry21)[which(match(Cytometry21$`Population ID (name)`,
c("Monocytes", "CD4+CD8-", "Mature SIg Kappa", "TCRgd-"), nomatch = 0)>0),])


templates.optimalFlow = optimalFlowTemplates(database = database, templates.number = 5,
cl.paral = 1)


print(wasserCostFunction(1,2,list(templates.optimalFlow$database.elliptical[[1]],
templates.optimalFlow$database.elliptical[[2]])))



cleanEx()
nameEx("wasserMinDist")
### * wasserMinDist

flush(stderr()); flush(stdout())

### Name: wasserMinDist
### Title: wasserMinDist
### Aliases: wasserMinDist

### ** Examples

normals = list(list(mean = c(1,1), cov = diag(2,2)),
list(mean = c(1,1), cov = diag(1,2)), list(mean = c(3,3), cov = diag(1,2)))
k_barycenter = kcenter(normals, 2, c(1,1,2))$kcenters
wasserMinDist(normals, k_barycenter)



cleanEx()
nameEx("wassersteinKBarycenter")
### * wassersteinKBarycenter

flush(stderr()); flush(stdout())

### Name: wassersteinKBarycenter
### Title: wassersteinKBarycenter
### Aliases: wassersteinKBarycenter

### ** Examples

normals = list(list(mean = c(1,1), cov = diag(2,2)),
list(mean = c(1,1), cov = diag(1,2)), list(mean = c(3,3), cov = diag(1,2)))
wkb = wassersteinKBarycenter(1, 2, 0, "rnd", normals)
print(wkb$wasserstein.var)
print(wkb$wasserstein.k.barycente)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
