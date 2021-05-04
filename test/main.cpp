# include "../lib/includes/lib.hpp"

void    equation_reduite()
{
    std::vector<std::vector<std::string>> secondTest{
        {"3X^42 - 4X^2 + 42X - 101 = 4X^43 - 4X^42 + 42X - 42"},
    };
    lib::ProgramTester   test("Équation réduite", "computor -v", secondTest);
    test.executeTests();
}

void    equation_0()
{
    std::vector<std::vector<std::string>> secondTest{
        {"5 * X^0 = 5 * X^0"},
        {"4 * X^0 = 8 * X^0"}
    };
    lib::ProgramTester   test("Degré 0", "computor -v", secondTest);
    test.executeTests();
}
void    equation_1()
{
    std::vector<std::vector<std::string>> secondTest{
        {"5 * X^0 = 4 * X^0 + 7 * X^1"}
    };
    lib::ProgramTester   test("Degré 1", "computor -v", secondTest);
    test.executeTests();
}
void    equation_2()
{
    std::vector<std::vector<std::string>> secondTest{
        {"3X^2 + 13X + 4 = 0"},
        {"5X^2 + 10X + 5 = 0"},
        {"3X^2 + 2X + 4 = 0"}
    };
    lib::ProgramTester  test("Degré 2", "computor -v", secondTest);
    test.executeTests();
}

int main(int ac, char **av)
{
    equation_reduite();
    equation_0();
    equation_1();
    equation_2();
    return (0);
}
