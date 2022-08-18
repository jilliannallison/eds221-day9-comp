# ~~~~~~~~~~~~~Practicing reprex~~~~~~~~~~~~~~~# 
library(tidyverse)
library(palmerpenguins) 

penguins %>%
  select(species, body_mass_g, flipper_length_mm, year) %>%
  filter(species == "Chinstrap") %>%
  str_to_lower(species) %>%
  group_by(island) %>% 
  summarize(mean(body_mass_g, na.rm = TRUE), 
            mean(flipper_length_mm, na.rm = TRUE)) 

### A reprex  

library(tidyverse) 

warpbreaks %>% 
  str_to_lower(wool) 

### fixed 

library(tidyverse)

warpbreaks %>% 
  mutate(wool = str_to_lower(wool))


### a reprex with a synthesized data frame
library(tidyverse)
dat <- tribble(
  ~grade, ~student, 
  100, "ELKE", 
  100, "JILLIAN", 
  100, "ERICA", 
  100, "ADELAIDE"
)

dat %>% 
  mutate(student = str_to_lower(student))

