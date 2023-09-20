# Add id column to beaver1
beaver1$id <- 1

# Add id column to beaver2
beaver2$id <- 2
# Vertically concatenate beaver1 and beaver2
beavers <- rbind(beaver1, beaver2)


print(beavers)
