#if !defined(DARTS_H)
#define DARTS_H

#include <variant> // Include variant

namespace darts {
    int score(int x, int y);
    int score(int x, double y);
    int score(double x, int y);
    int score(double x, double y);
} // namespace darts

#endif //DARTS_H