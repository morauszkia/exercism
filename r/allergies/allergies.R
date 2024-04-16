allergy <- function(num) {
  allergies <- bitwAnd(num, 2^(0:7))
  names(allergies) <- c("eggs", "peanuts", "shellfish", "strawberries", 
                        "tomatoes", "chocolate", "pollen", "cats")
  allergies
}

allergic_to <- function(allergy_object, allergy) {
  allergy_object[allergy] > 0
}

list_allergies <- function(allergy_object) {
  names(which(allergy_object > 0))
}
