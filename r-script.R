library(tidyverse)

sci_data <- read_csv("data/sci-online-classes.csv")


library(readr)
sci_online_classes <- read_csv("data/sci-online-classes.csv", 
                               col_types = cols(student_id = col_character()))


sci_data

5 > 3


5 == 3


my_cat <- 2

my_dog = 3

my_dog

"Muffins" -> my_fat_cat


sci_data <- read_csv("data/sci-online-classes.csv") |> # read in data
  select(student_id, FinalGradeCEMS, course_id) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

sci_data

add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}

add_numbers(2+3)

add_numbers(2, 34)
add_numbers(my_cat, my_dog)

ggplot(sci_data, aes(x = final_grade)) +
  geom_histogram(fill = "green")

