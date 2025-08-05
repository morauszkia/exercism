#include "darts.h"

namespace darts {
    int score(double x, double y) {
        double distance_squared = x * x + y * y; 
        if (distance_squared > 100) {
            return 0;
        } else if (distance_squared > 25) {
            return 1;
        } else if (distance_squared > 1) {
            return 5;
        } else {
            return 10;
        }
    }
} // namespace darts