pub fn expected_minutes_in_oven() {
  40
} 

pub fn remaining_minutes_in_oven(actual) {
  expected_minutes_in_oven() - actual
}

pub fn preparation_time_in_minutes(layers) {
  let time_per_layer = 2
  time_per_layer * layers
}

pub fn total_time_in_minutes(layers, actual) {
  preparation_time_in_minutes(layers) + actual
}

pub fn alarm() {
  "Ding!"
}
