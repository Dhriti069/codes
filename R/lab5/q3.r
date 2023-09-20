# list installed packages
installed_packages <- installed.packages()
print(rownames(installed_packages))

# count installed packages
num_installed_packages <- length(rownames(installed_packages))
cat("Number of installed packages:", num_installed_packages)
