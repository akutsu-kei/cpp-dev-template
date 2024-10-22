#ifndef ADD_H
#define ADD_H

#include <concepts>

template <typename T>
    requires std::integral<T> || std ::floating_point<T>
T add(T a, T b)
{
    return a + b;
}

#endif // ADD_H