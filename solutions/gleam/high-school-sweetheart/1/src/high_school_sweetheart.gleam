import gleam/string
import gleam/list

pub fn first_letter(name: String) {
  name |>
    string.trim |>
    string.slice(0, 1)
}

pub fn initial(name: String) {
  name |>
  first_letter |>
  string.uppercase |>
  string.append(".")
}

pub fn initials(full_name: String) {
  let assert [first, second] = full_name |>
    string.split(" ") |>
    list.map(initial)

  first <> " " <> second
}

pub fn pair(full_name1: String, full_name2: String) {
  "
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     " <> initials(full_name1) <> "  +  " <> initials(full_name2) <> "     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"
}
