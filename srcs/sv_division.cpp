#include "computorv1.hpp"

static int      numberOfDecimals(double number)
{
    bool hasDigit(false);
    std::stringstream stream;
    stream << std::fixed << std::setprecision(17) << number;
    std::string s = stream.str();

    int i = 0;
    while (s[i] != '.') { if (s[i] != '0') hasDigit = true; ++i; }

    int j(1);
    int last_decimal(0);
    while (s[i + j])
    {
        if (s[i + j] != '0') hasDigit = true;
        if (s[i + j] != '0')
            last_decimal = j;
        if (j == 8 && hasDigit == true)
            break ;
        ++j;
    }
    return (last_decimal);
}

int             sv_division(double a, double b, bool parentheses)
{
    double  pgcd(0);
    
    if (lib::fabs(a) == 0.0)
    {
        print(0);
        return(0);
    }
    else if (numberOfDecimals(a / b) > 4)
    {
        if (a < 0.0 && b < 0.0)
        {
            a = lib::fabs(a);
            b = lib::fabs(b);
        }
        if (numberOfDecimals(a) <= 4 && numberOfDecimals(b) <= 4 )
        {
            pgcd = lib::pgcd(lib::fabs(a), lib::fabs(b));
            if (numberOfDecimals(a / pgcd) <= 4
                && numberOfDecimals(b / pgcd) <= 4)
            {
                a /= pgcd;
                b /= pgcd;
                if (parentheses)
                    print("(", a, " / ", b, ")");
                else
                    print(a, " / ", b);
                return (0);
            }
        }
    }
    print(a/b);
    return (0);
}