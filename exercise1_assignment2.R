# The following code creates a function named species_avg_sepal_length, 
# which will return the average sepal length for a specified iris species.
# The built-in iris dataset will be used, which contains measurements for 150 iris flowers from three different species.

library(dplyr)

species_avg_sepal_length <- function(data, species_name) {
  species_data<-data %>% filter(Species == species_name) %>% filter(Sepal.Width > 3)
  return(mean(species_data$Sepal.Length))
}

# Example usage:
avg_length <- species_avg_sepal_length(iris, "versicolor")
print(avg_length)

