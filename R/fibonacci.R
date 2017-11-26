#
# #Fibonacci lukusarja:
fibonacci <- function(yla){
  # i=1;
  # yla=15;
  Fib <- c(1,rep(0, yla-1))
  for(i in 1:yla){
    if(i == 1){Fib[i] = 1}
    if(i == 2){Fib[i] = 1}
    if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
    i=i+1
  };
  print(Fib)
}

#
#
# #Fibonacci suhdeluvut
# require(iterators)
# ## Generator for Fibonacci sequence
# iFib <- function() {
#   lastFib <- 0
#   nextFib <- 1
#   nextEl <- function() {
#     newLast <<- nextFib
#     nextFib <<- lastFib + nextFib
#     lastFib <<- newLast
#     lastFib
#   }
#   it <- list(nextElem = nextEl)
#   class(it) <- c('abstractiter','iter')
#   it
# }
# fib1 <- iFib(); nextElem(fib1)
# fib2 <- iFib()
# nextElem(fib1)/nextElem(fib2)
# nextElem(fib1)/nextElem(fib2)
#
#
# #Kultaiset ympyr?t
#
# require(plotrix)
# require(grid)
#
# #Neli?t
# plot(c(-20, 20), c(-20, 20), type = "n", asp=1)
# rect(0,0,1,1)
# rect(1,0,2,1)
# rect(0,1,2,3)
# rect(0,1,2,3)
# rect(-3,0,0,3)
# rect(-3,-5,2,0)
# rect(2,-5,10,3)
# rect(-3,3,10,16)
# rect(-24,-5,-3,16)
#
# #Nelj?nnes ympyr?t neli?ihin:
# deg1=180; deg2=360
# draw.arc(x=1,y=1,radius=1,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
# deg1=0; deg2=90
# draw.arc(x=0,y=1,radius=2,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
# deg1=90; deg2=180
# draw.arc(x=0,y=0,radius=3,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
# deg1=180; deg2=270
# draw.arc(x=2,y=0,radius=5,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
# deg1=270; deg2=360
# draw.arc(x=2,y=3,radius=8,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
# deg1=0; deg2=90
# draw.arc(x=-3,y=3,radius=13,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
# deg1=90; deg2=180
# draw.arc(x=-3,y=-5,radius=21,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
# deg1=180; deg2=270
# draw.arc(x=10,y=-5,radius=34,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
#
# #"??ret?n"
# plot(c(-300, 300), c(-300, 300), type = "n", asp=1)
#
# deg1=180; deg2=360
# draw.arc(x=1,y=1,radius=1,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
# deg1=0; deg2=90
# draw.arc(x=0,y=1,radius=2,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
#
#
# deg1=90; deg2=180
# draw.arc(x=0,y=0,radius=3,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
# deg1=180; deg2=270
# draw.arc(x=2,y=0,radius=5,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
# deg1=270; deg2=360
# draw.arc(x=2,y=3,radius=8,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=0; deg2=90
# draw.arc(x=-3,y=3,radius=13,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=90; deg2=180
# draw.arc(x=-3,y=-5,radius=21,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=180; deg2=270
# draw.arc(x=10,y=-5,radius=34,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=270; deg2=360
# draw.arc(x=10,y=16,radius=55,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=360; deg2=360+90
# draw.arc(x=-24,y=16,radius=89,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=90; deg2=180
# draw.arc(x=-24,y=-39,radius=144,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
# deg1=180; deg2=270
# draw.arc(x=64,y=-39,radius=144+89,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=50,col=1)
#
#
# #############################
# #Fibonacci plot automaatti
# #joka piirt?? halutun m??r?n
# #kultaista spiraalia
#
# require(plotrix)
# require(grid)
#
# #Ensin tarvitaan Fibonaccin lukusarja
#
# yla=20; Fib <- c(1,rep(0, yla-1))
# for(i in 1:yla+2){
#   if(i == 1){Fib[i] = 1}
#   if(i == 2){Fib[i] = 1}
#   if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
#   i=i+1
# }; Fib
#
# #Sitten piirret??n tyhj? tausta
# plot(c(-50, 50), c(-50, 50), type = "n", asp=1)
#
# #Sitten piirret??n ensimm?iset spiraalit
# deg1=180; deg2=360
# draw.arc(x=1,y=1,radius=1,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
# deg1=0; deg2=90
# draw.arc(x=0,y=1,radius=2,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
#
# #x=0, y=0, rad=3 # x=2, y=0, rad=5 # x=2, y=3, rad=8 # x=-3, y=3, rad=13
#
# #Tehd??n lukusarja koordinaateille
# FibX <- c(rep(0, yla*2))
# i=3;j=3;
# for(i in 1:yla*2){
#   FibX[i] = Fib[j]
#   i=i+1
#   FibX[i] = 0
#   i=i+1
#   j=j+1
#   FibX
# };
# FibX
#
# #Sitten piirret??n loput
# i=1; for(i in 4:10){
#   deg1=deg1+90; deg2=deg2+90
#   draw.arc(x=X+sarja[i+1],y=Y+sarja[i],radius=Fib[i+3],
#            angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#   i=i+1
# }
#
#
# ##################################
# #Automaatti, joka ei toimi:
#
# raja=200; lkm=10
# deg1=0; deg2=90; X=0; Y=0;
#
#
# i=1; yla=20; Fib <- c(1,rep(0, yla-1))
# for(i in 1:yla){
#   if(i == 1){Fib[i] = 1}
#   if(i == 2){Fib[i] = 1}
#   if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
#   i=i+1
# }; Fib
#
# yla=20; FibX <- c(rep(0, yla*2))
# i=3; j=3
# for(i in 3:yla*2+1){
#   FibX[i] = Fib[j]; i+1
#   FibX[i]=0
#   i=i+1; j=j+1
# }; FibX
#
#
# #Kokeilu yksi#
# sarja <- c(0,0,2,0,3,0,-5,0,-8,13,0,21,0,-34,0,-55,0)
# deg1=0; deg2=90; X=0; Y=0; raja=200; i=1;
# plot(c(-raja, raja), c(-raja, raja), type = "n", asp=1)
# for(i in 1:10){
#   deg1=deg1+90; deg2=deg2+90
#   draw.arc(x=X+sarja[i+1],y=Y+sarja[i],radius=Fib[i+3],
#            angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#   i=i+1
# }
# #Kokeilu yksi#
#
#
# #Fibonacci lukusarja:
#
#
# #Fibonacci lukusarja, joka l?htee "2":sta ja kaksi samaa:
# i=1; yla=10; Fib <- c(2,rep(0, 2*yla-1))
# for(i in 1:2*yla){
#   if(i == 1){Fib[i] = 1}
#   if(i == 2){Fib[i] = 1}
#   if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
#   i=i+1
# }; Fib
#
# deg1=180; deg2=360
# draw.arc(x=0,y=0,radius=1,angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
# deg1=180; deg2=360
# draw.arc(x=0,y=0,radius=Fib[4],angle1=deg1*pi/180,angle2=deg2*pi/180,deg1=0,deg2=45,n=35,col=1)
#
#
#
# 3/2
# 5/3
# 16/10
# 39/24
#
#
#
#
#
#
#
