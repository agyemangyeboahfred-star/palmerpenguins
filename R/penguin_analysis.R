install.packages("palmerpenguins")
library(palmerpenguins)

#Task 1: Calculate Summary Statistics

#Inspecting the data
head(penguins)

numeric_means <- apply(penguins[sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)
print(numeric_means)


#Task 2: Count Penguins by Species
species_counts <- tapply(penguins$species, penguins$species,length)
print(species_counts)


#Task 3: Analyze bill length by species
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), mean, na.rm = TRUE)
print(bill_length_means)


#Task 4: Summary table (mean & sd for numeric columns) using sapply
summary_table <- sapply(penguins[sapply(penguins, is.numeric)],function(x)
  c(mean = mean(x, na.rm = TRUE), sd   = sd(x, na.rm = TRUE)))

print(summary_table)
