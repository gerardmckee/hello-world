# Copyright 2014 Gerard Mckee. All rights reserved.
# Author; Gerard McKee
# Description: Random R Code
# Date: 9/10/2014

setwd("/Users/gerardmckee/Documents/AAASchool/Coursera/2014/R-Programming/Week2")

makeList <- function(x, y, z) {
    # from "Computing on the language"
    #   http://simplystatistics.org/2011/10/27/computing-on-the-language/
    # construct a list function
    #
    # Args:
    #   x: input 1
    #   y: input 2
    #   z: input 3
    #
    # Returns:
    # an R list function 
    xx <- if (class(x) == "character")
        paste('"', x, '"', sep = "")
    yy <- if (class(y) == "character")
        paste('"', y, '"', sep = "")
    zz <- if (class(z) == "character")
        paste('"', z, '"', sep = "")

    cat("list(x = ", xx, ", y = ", yy, ", z = ", zz, ")", sep = "")
}

x <- 1
y <- 2
z <- "hello"
makeList(x, y, z)


# from Web-scraping
# http://simplystatistics.org/2011/10/24/web-scraping/

# get the page's html-code
web_page <- readLines("http://www.r-bloggers.com")

# extract relevant part of web page:
# missing line added on oct. 24th:
ul_tags <- grep("ul>", web_page) 

pos_1 <- grep("Contributing Blogs", web_page) + 2
pos_2 <- ul_tags[which(ul_tags > pos_1)[1]] - 2

blog_list_1 <- web_page[pos_1:pos_2]

# extract 2nd element of sublists produced by stringsplit:
blog_list_2 <- unlist(lapply(strsplit(blog_list_1, "\""), "[[", 2))

# exclude elememts without propper address:
blog_list_3 <- blog_list_2[grep("http:", blog_list_2)]

# plot results:
len <- length(blog_list_3)
x <- rep(1:3, ceiling(len/3))[1:len]
y <- 1:len

par(mar = c(0, 5, 0, 5), xpd = T)
plot(x, y, ylab = "", xlab = "", type = "n",
     bty = "n", axes = F)
text(x, y, blog_list_3, cex = 0.5)

# Pie Charts
# http://simplystatistics.org/2012/11/27/i-give-up-i-am-embracing-pie-charts/

N=10
for(i in 0:(N-1)){
    x=cos(2*pi/N*i);y=x+1;z=(y-2)*22.5
    bitmap(sprintf("Rplot%02d.png",i)) 
    pie(c(y,8-y),col=c("white","yellow"),init.angle=135-z,border=FALSE,labels=NA)
    dev.off()
}
system("convert Rplot*.png pacman.gif")
##system("rm *.png") edited to save caffo's pngs (see comments)
system("rm Rplot*.png")

# Quiltplots
# http://simplystatistics.org/2014/01/28/marie-curie-says-stop-hating-on-quilt-plots-already/

set.seed(12345)
library(fields)
x <- matrix(rbinom(25, size = 4, prob = 0.5), nrow = 5)
pt <- prop.table(x)
heatmap(x)
quilt.plot(x = rep(1:5, 5), y = rep(1:5,5), z.pt)
quilt(pt, 1:5, 1:5, zlabel="Proportion")


