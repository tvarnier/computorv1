NAME		= computor

CC			= g++-9
FLAGS		= -g -Wall -Wextra -Werror
LIB			= lib/lib.a

INCLUDES	= ./includes/computorv1.hpp

SRC			= main.cpp \
			  parse.cpp \
			  pr_basic_checks.cpp \
			  pr_authorized.cpp \
			  pr_ignore.cpp \
			  solve.cpp \
			  sv_simple_equation.cpp \
			  sv_quadratic_equation.cpp \
			  sv_division.cpp \
			  error.cpp

OBJ			= Value.cpp \
			  Equation.cpp
OBJ_DIR		= objects/

SRC_PATH	= ./srcs/
SRCS		= $(addprefix $(SRC_PATH), $(SRC))
SRCS		+= $(addprefix $(SRC_PATH), $(OBJ_DIR), $(OBJ))

BIN			= $(SRC:%.cpp=%.o)
BIN			+= $(addprefix $(OBJ_DIR), $(OBJ:%.cpp=%.o))
BIN_PATH	= ./bins/
BINS		= $(addprefix $(BIN_PATH), $(BIN))

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(LIB) $(BIN_PATH) $(BIN_PATH)$(OBJ_DIR) $(BINS)
	$(CC) $(FLAGS) $(BINS) $(LIB) -o $@

$(BIN_PATH):
	@ mkdir $@

$(BIN_PATH)$(OBJ_DIR):
	@ mkdir $@

$(LIB):
	@ make -C lib

$(BIN_PATH)%.o: $(SRC_PATH)%.cpp $(HEADER)
	$(CC) -I includes -o $@ -c $< $(FLAGS)

clean:
	@ make -C lib clean
	@ rm -rf $(BIN_PATH)

fclean: clean
	@ rm -rf $(LIB)
	@ rm -f $(NAME)

re: fclean all

test: $(name)
	@ echo "\n ===== \033[0;32m DEGREE 0 - All Real Number Solution \033[0m ===== \n"
	./$(NAME) -v "5 * X^0 = 5 * X^0"
	@ echo "\n ===== \033[0;32m DEGREE 0 - No Solution \033[0m ===== \n"
	./$(NAME) -v "4X^0 = 8X^0"
	@ echo "\n ===== \033[0;32m DEGREE 1 \033[0m ===== \n"
	./$(NAME) -v "5 = 4 + 7X"
	@ echo "\n ===== \033[0;32m DEGREE 2 - Discriminant > 0 \033[0m ===== \n"
	./$(NAME) -v "5 + 13X + 3X^2 = 1 + 0X"
	@ echo "\n ===== \033[0;32m DEGREE 2 - Discriminant = 0 \033[0m ===== \n"
	./$(NAME) -v "6 + 11X + 5X^2 = 1 + X^1"
	@ echo "\n ===== \033[0;32m DEGREE 2 - Discriminant < 0 \033[0m ===== \n"
	./$(NAME) -v "5 + 3X + 3X^2 = 1 + X^1"
	@ echo