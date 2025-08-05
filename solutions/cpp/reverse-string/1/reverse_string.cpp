#include "reverse_string.h"
#include <string>

namespace reverse_string {
    std::string reverse_string(std::string text) {
        std::string result = "";
        for (size_t i = 0; i < text.length(); i++) {
            result = text[i] + result;
        }
        return result;
    }
}
