#include "raindrops.h"
#include <string>

namespace raindrops {
    std::string convert(int number) {
        std::string result = "";
        if (number % 3 == 0) {
            result += "Pling";
        }
        if (number % 5 == 0) {
            result += "Plang";
        }
        if (number % 7 == 0) {
            result += "Plong";
        }
        return (result == "") ? std::to_string(number) : result;
    }
}  // namespace raindrops
