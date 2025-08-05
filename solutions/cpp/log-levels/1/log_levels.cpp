#include <string>

namespace log_line {
    std::string message(std::string line) {
        size_t delimiter_index{line.find(" ")};
        return line.substr(delimiter_index + 1);
    }

    std::string log_level(std::string line) {
        size_t end_index{line.find("]")};
        return line.substr(1, end_index - 1);
    }

    std::string reformat(std::string line) {
        return log_line::message(line) + " (" + log_line::log_level(line) + ")";
    }
}
