# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdeken <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/03/05 14:35:23 by mdeken            #+#    #+#              #
#    Updated: 2016/09/03 17:55:53 by mdeken           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol

SRC_REP = src

SRC_FILE := $(shell ls -1 src)

LIBFT = -L libft/ -lft -lm

#MINILIBX = -lmlx -framework OpenGl -framework AppKit

FLAGS = -Wall -Werror -Wextra

OBJ_REP = obj

OBJ_FILE = $(SRC_TEST:.c=.o)

OBJ = $(addprefix $(OBJ_REP)/,$(OBJ_FILE))

INC_REP = includes

INC = -I $(INC_REP) -I libft/includes

vpath %.h includes
vpath %.c src

all: lib print $(NAME)


lib:
	make -C libft/

$(NAME) : $(OBJ)
	@clang $(FLAGS) -o $(NAME) $(LIBFT) $(MINILIBX) $^
	@echo "\n\033[34;1m"$@ "est cree\033[0m"

$(OBJ_REP)/%.o: $(SRC_REP)/%.c
	@mkdir $(OBJ_REP) 2> /dev/null || true
	@clang $(FLAGS) $(INC) -o $@ -c $<
	@printf '\033[32;1m.\033[0m'

clean:
	@echo "\033[31mSuppresion des .o\033[0m"
	@rm -rf $(OBJ)
	@make -C libft/ clean
	@rmdir $(OBJ_REP) 2> /dev/null || true

fclean: clean
	@echo "\033[31mSuppresion de l'executable\033[0m"
	@rm -rf $(NAME)
	@make -C libft/ fclean

re: fclean all

norme:
	@norminette src/$(SRC_FILE)
	@norminette $(INC_REP)/*.h

print:
	@echo "\033[34;1mCompilation de " $(NAME) "\033[0m"

.PHONY: all lib clean fclean re norme

