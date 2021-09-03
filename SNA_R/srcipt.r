
R version 4.0.2 (2020-06-22) -- "Taking Off Again"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> local({pkg <- select.list(sort(.packages(all.available = TRUE)),graphics=TRUE)
+ if(nchar(pkg)) library(pkg, character.only=TRUE)})
> chooseCRANmirror()
> utils:::menuInstallPkgs()
Warning in install.packages(lib = .libPaths()[1L], dependencies = NA, type = type) :
  'lib = "C:/RProject/library"' is not writable
trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/igraph_1.2.6.zip'
Content type 'application/zip' length 9342837 bytes (8.9 MB)
downloaded 8.9 MB

package ‘igraph’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\kg83\AppData\Local\Temp\RtmpUVHRQP\downloaded_packages
> utils:::menuInstallPkgs()
also installing the dependencies ‘coda’, ‘statnet.common’, ‘network’

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/coda_0.19-4.zip'
Content type 'application/zip' length 323093 bytes (315 KB)
downloaded 315 KB

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/statnet.common_4.5.0.zip'
Content type 'application/zip' length 247494 bytes (241 KB)
downloaded 241 KB

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/network_1.17.1.zip'
Content type 'application/zip' length 852678 bytes (832 KB)
downloaded 832 KB

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.0/sna_2.6.zip'
Content type 'application/zip' length 1316322 bytes (1.3 MB)
downloaded 1.3 MB

package ‘coda’ successfully unpacked and MD5 sums checked
package ‘statnet.common’ successfully unpacked and MD5 sums checked
package ‘network’ successfully unpacked and MD5 sums checked
package ‘sna’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\kg83\AppData\Local\Temp\RtmpUVHRQP\downloaded_packages
> library(igraph)

Attaching package: ‘igraph’

The following objects are masked from ‘package:stats’:

    decompose, spectrum

The following object is masked from ‘package:base’:

    union

Warning message:
package ‘igraph’ was built under R version 4.0.5 
> library(sna)
Loading required package: statnet.common

Attaching package: ‘statnet.common’

The following objects are masked from ‘package:base’:

    attr, order

Loading required package: network

‘network’ 1.17.1 (2021-06-12), part of the Statnet Project
* ‘news(package="network")’ for changes since last version
* ‘citation("network")’ for citation information
* ‘https://statnet.org’ for help, support, and other information


Attaching package: ‘network’

The following objects are masked from ‘package:igraph’:

    %c%, %s%, add.edges, add.vertices, delete.edges, delete.vertices,
    get.edge.attribute, get.edges, get.vertex.attribute, is.bipartite,
    is.directed, list.edge.attributes, list.vertex.attributes,
    set.edge.attribute, set.vertex.attribute

sna: Tools for Social Network Analysis
Version 2.6 created on 2020-10-5.
copyright (c) 2005, Carter T. Butts, University of California-Irvine
 For citation information, type citation("sna").
 Type help(package="sna") to get started.


Attaching package: ‘sna’

The following objects are masked from ‘package:igraph’:

    betweenness, bonpow, closeness, components, degree, dyad.census,
    evcent, hierarchy, is.connected, neighborhood, triad.census

Warning messages:
1: package ‘sna’ was built under R version 4.0.5 
2: package ‘statnet.common’ was built under R version 4.0.5 
3: package ‘network’ was built under R version 4.0.5 
> save.image("C:\\Users\\kg83\\Documents\\SNA")
> setwd("C:/Users/kg83/Documents/SNA_R")
> getwd()
[1] "C:/Users/kg83/Documents/SNA_R"
> g1 <- read.table('undirected.txt')
> head(g1)
  V1 V2
1  0 14
2  0 21
3  1 13
4  1 16
5  1 17
6  2  6
> graph1 <- graph_from_data_frame(g1, directed = FALSE, vertices = NULL)
> plot(graph1)
> g_full <- make_full_graph(8, directed = FALSE)
> plot(g_full)
> g_ring <- make_ring(12, directed = FALSE, mutual = FALSE, circular = TRUE)
> plot(g_ring)
> g_star <- make_star(10, center =1)
> plot(g_star)
> g_gnp <- sample_gmp(20, 0.3, ditected = FALSE, loops = FALSE)
Error in sample_gmp(20, 0.3, ditected = FALSE, loops = FALSE) : 
  could not find function "sample_gmp"
> g_gnp <- sample_gnp(20, 0.3, ditected = FALSE, loops = FALSE)
Error in sample_gnp(20, 0.3, ditected = FALSE, loops = FALSE) : 
  unused argument (ditected = FALSE)
> g_gnp <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
> plot(g_gnp)
> g_gnm <- sample_gnm(20, 50, directed = FALSE, loops = FALSE)
> plot(g_gnm)
> g_gnm <- sample_gnm(20, 25, directed = FALSE, loops = FALSE)
> plot(g_gnm)
> g_gpa <- sample_pa(20, power =1)
> plot(g_gpa)
> save.image("C:\\Users\\kg83\\Documents\\SNA_R\\.RData")
> g1 <- sample_pa(12, power =1, directed = FALSE)
> plot(g1)
> degree(g1)
Error in FUN(X[[i]], ...) : 
  as.edgelist.sna input must be an adjacency matrix/array, edgelist matrix, network, or sparse matrix, or list thereof.
> degree(g1)
Error in FUN(X[[i]], ...) : 
  as.edgelist.sna input must be an adjacency matrix/array, edgelist matrix, network, or sparse matrix, or list thereof.
> #Measure betweeness of points
> #preferencial attachment graph 
> g1 <- sample_pa(20, power = 1, directed = FALSE)
> plot(g1)
> betweenness(g1)
Error in FUN(X[[i]], ...) : 
  as.edgelist.sna input must be an adjacency matrix/array, edgelist matrix, network, or sparse matrix, or list thereof.
> igraph::degree(g1)
 [1] 6 4 2 1 3 1 1 3 1 3 1 2 2 1 1 1 2 1 1 1
> igraph::betweenness(g1)
 [1] 142  77  18   0  35   0   0  50   0  50   0  18  18   0   0   0
[17]  18   0   0   0
> #measure network density
> g1 <- sample_pa(12, power=1, directed = FALSE)
> plot(g1)
> ed <- edge_destiny(g1, loops = FALSE)
Error in edge_destiny(g1, loops = FALSE) : 
  could not find function "edge_destiny"
> ed <- edge_density(g1, loops = FALSE)
> ed <- edge_density(g1, loops = FALSE)
> ed
[1] 0.1666667
> g1 <- sample_pa(20, power=1, directed = FALSE)
> plot(g1)
> ed <- edge_density(g1, loops = FALSE)
> ed
[1] 0.1
> g1 <- sample_pa(40, power=1, directed = FALSE)
> ed <- edge_density(g1, loops = FALSE)
> ed
[1] 0.05
> #2 divided by number of nodes
> save.image("C:\\Users\\kg83\\Documents\\SNA_R\\.RData")
> save.image("C:\\Users\\kg83\\Documents\\SNA_R\\SNA")
> gnp <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
> plot(gnp_
+ plot(gnp)
Error: unexpected symbol in:
"plot(gnp_
plot"
> plot(gnp)
> edg <- edge_density(gnp, loops = FALSE)
> edg
[1] 0.3210526
> gnp <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
> edg <- edge_density(gnp, loops = FALSE)
> edg
[1] 0.3315789
> # identify cliques
> gnp <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
> plot(gnp)
> clique_num(gnp)
[1] 4
> gnp <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
> clique_num(gnp)
[1] 4
> cliques(gnp, min=4)
[[1]]
+ 4/20 vertices, from d693960:
[1]  7 14 15 17

[[2]]
+ 4/20 vertices, from d693960:
[1]  5  9 17 18

[[3]]
+ 4/20 vertices, from d693960:
[1]  5  7  9 17

[[4]]
+ 4/20 vertices, from d693960:
[1]  4  7 14 17

[[5]]
+ 4/20 vertices, from d693960:
[1]  3  4  6 14

[[6]]
+ 4/20 vertices, from d693960:
[1] 1 3 4 6

[[7]]
+ 4/20 vertices, from d693960:
[1]  3  4 14 17

[[8]]
+ 4/20 vertices, from d693960:
[1]  3  4 17 19

> plot(gnp)
> cliques(gnp, min =3, max = 4)
[[1]]
+ 3/20 vertices, from d693960:
[1]  7 14 17

[[2]]
+ 3/20 vertices, from d693960:
[1]  1  5 10

[[3]]
+ 3/20 vertices, from d693960:
[1]  5 10 17

[[4]]
+ 3/20 vertices, from d693960:
[1]  1  5 18

[[5]]
+ 3/20 vertices, from d693960:
[1]  5 17 18

[[6]]
+ 3/20 vertices, from d693960:
[1]  5 17 19

[[7]]
+ 3/20 vertices, from d693960:
[1] 1 5 7

[[8]]
+ 3/20 vertices, from d693960:
[1]  5  7 17

[[9]]
+ 3/20 vertices, from d693960:
[1] 10 13 16

[[10]]
+ 3/20 vertices, from d693960:
[1] 10 11 13

[[11]]
+ 3/20 vertices, from d693960:
[1]  1 10 13

[[12]]
+ 3/20 vertices, from d693960:
[1]  6 10 16

[[13]]
+ 3/20 vertices, from d693960:
[1]  1  6 10

[[14]]
+ 3/20 vertices, from d693960:
[1]  7 14 15

[[15]]
+ 4/20 vertices, from d693960:
[1]  7 14 15 17

[[16]]
+ 3/20 vertices, from d693960:
[1] 14 15 17

[[17]]
+ 3/20 vertices, from d693960:
[1] 10 15 17

[[18]]
+ 3/20 vertices, from d693960:
[1] 15 17 18

[[19]]
+ 3/20 vertices, from d693960:
[1]  7 15 17

[[20]]
+ 3/20 vertices, from d693960:
[1]  5  9 18

[[21]]
+ 4/20 vertices, from d693960:
[1]  5  9 17 18

[[22]]
+ 3/20 vertices, from d693960:
[1] 5 7 9

[[23]]
+ 4/20 vertices, from d693960:
[1]  5  7  9 17

[[24]]
+ 3/20 vertices, from d693960:
[1]  5  9 17

[[25]]
+ 3/20 vertices, from d693960:
[1]  9 11 18

[[26]]
+ 3/20 vertices, from d693960:
[1]  9 17 18

[[27]]
+ 3/20 vertices, from d693960:
[1]  7  9 17

[[28]]
+ 3/20 vertices, from d693960:
[1]  2  5 19

[[29]]
+ 3/20 vertices, from d693960:
[1] 2 5 7

[[30]]
+ 3/20 vertices, from d693960:
[1]  4  6 14

[[31]]
+ 3/20 vertices, from d693960:
[1] 1 4 6

[[32]]
+ 3/20 vertices, from d693960:
[1]  4  7 14

[[33]]
+ 4/20 vertices, from d693960:
[1]  4  7 14 17

[[34]]
+ 3/20 vertices, from d693960:
[1]  4 11 14

[[35]]
+ 3/20 vertices, from d693960:
[1]  4 14 17

[[36]]
+ 3/20 vertices, from d693960:
[1]  4 11 18

[[37]]
+ 3/20 vertices, from d693960:
[1]  1  4 18

[[38]]
+ 3/20 vertices, from d693960:
[1]  4 17 18

[[39]]
+ 3/20 vertices, from d693960:
[1]  4 17 19

[[40]]
+ 3/20 vertices, from d693960:
[1] 1 4 7

[[41]]
+ 3/20 vertices, from d693960:
[1]  4  7 17

[[42]]
+ 3/20 vertices, from d693960:
[1] 3 4 6

[[43]]
+ 4/20 vertices, from d693960:
[1]  3  4  6 14

[[44]]
+ 4/20 vertices, from d693960:
[1] 1 3 4 6

[[45]]
+ 3/20 vertices, from d693960:
[1]  3  4 14

[[46]]
+ 4/20 vertices, from d693960:
[1]  3  4 14 17

[[47]]
+ 3/20 vertices, from d693960:
[1]  3  4 19

[[48]]
+ 4/20 vertices, from d693960:
[1]  3  4 17 19

[[49]]
+ 3/20 vertices, from d693960:
[1] 1 3 4

[[50]]
+ 3/20 vertices, from d693960:
[1]  3  4 17

[[51]]
+ 3/20 vertices, from d693960:
[1]  3  6 14

[[52]]
+ 3/20 vertices, from d693960:
[1] 1 3 6

[[53]]
+ 3/20 vertices, from d693960:
[1]  3 14 17

[[54]]
+ 3/20 vertices, from d693960:
[1]  3 17 19

> gnp <- sample_gnp(20, 0.6, directed = FALSE, loops = FALSE)
> plot(gnp)
> clique_num(gnp)
[1] 7
> # number of clique tells us which groups work together all the time
> #components of a graph
> gnp <- sample_gnp(30, 0.08, directed = FALSE, loops = FALSE)
> plot(gnp)
> components(gnp)
Error in FUN(X[[i]], ...) : 
  as.edgelist.sna input must be an adjacency matrix/array, edgelist matrix, network, or sparse matrix, or list thereof.
> igraph::components(gnp)
$membership
 [1] 1 1 1 1 1 1 2 1 1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1

$csize
[1] 28  1  1

$no
[1] 3

> #random walk on a graph
> g1 <- sample_gnp(30, 0.08, directed = FALSE)
> plot(g1)
> igraph::random_walk(g1)
Error in as.igraph.vs(graph, start) : 
  argument "start" is missing, with no default
> igraph::random_walk(g1, 26)
Error in igraph::random_walk(g1, 26) : 
  argument "steps" is missing, with no default
> igraph::random_walk(g1, 26, 8, stuck = "return")
+ 8/30 vertices, from 4241411:
[1] 26 20 26 20 26 20 12 22
> igraph::random_walk(g1, 26, 8, stuck = "return")
+ 8/30 vertices, from 4241411:
[1] 26 20  6 22  6 23 10 17
> igraph::random_walk(g1, 26, 8, stuck = "return")
+ 8/30 vertices, from 4241411:
[1] 26 20 26 20 12  5  8 10
> #Visualize a network 
> g1 <- sample_gnp(30, 0.01)
> plot(g1)
> #change colors and vertices of edges
> g1 <- sample_gnp(30, 0.08)
> plot(g1)
> g1 <- sample_gnp(30, 0.08) %>%
+ set_vertex_attr("color", value = "blue") %>%
+ set_edge_attr("color", value = "green")
> plot(g1)
> #write out a graph
> g2 <- sample_gnp(30, 0.08, directed = FALSE)
> plot(g2)
> write.graph(g1, file = 'rand_network.txt', format = "edgelist")
> pdf("rand_network.pdf")
> plot(g2)
> dev.off()
null device 
          1 
> 
