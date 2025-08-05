allergy <- function(num) {
  allergies <- bitwAnd(num, 2^(0:7))
  names(allergies) <- c("eggs", "peanuts", "shellfish", "strawberries", 
                        "tomatoes", "chocolate", "pollen", "cats")
  names(allergies[allergies > 0])
}

allergic_to <- function(allergy_object, allergy) {
  allergy %in% allergy_object
}

list_allergies <- function(allergy_object) {
  allergy_object
}
