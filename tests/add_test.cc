#include <gtest/gtest.h>
#include "src/add.h"

TEST(AddTest, add)
{
    // clang-format off
    EXPECT_EQ
        (
        add(1, 2),
        3
        );
    // clang-format on

    EXPECT_EQ(add(1.0, 2.0), 3.0);
}
