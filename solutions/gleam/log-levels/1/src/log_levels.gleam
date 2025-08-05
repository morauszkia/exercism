import gleam/string
import gleam/list

pub fn message(log_line: String) {
  case log_line {
    "[ERROR]: " <> message | "[WARNING]: " <> message | "[INFO]: " <> message -> string.trim(message)
    _ -> "Unknown log message type"
  }
}

pub fn log_level(log_line: String) {
  case log_line {
    "[ERROR]" <> _ -> "error"
    "[WARNING]" <> _ -> "warning"
    "[INFO]" <> _ -> "info"
    _ -> "Unknown log level"
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
