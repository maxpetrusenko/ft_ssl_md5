# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpetruse <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/18 16:34:50 by mpetruse          #+#    #+#              #
#    Updated: 2018/08/22 22:41:49 by mpetruse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_ssl

FLAGS = -Wall -Wextra -Werror

SOURCES = lib.c main.c print.c sha256.c extra.c md5.c options.c sha224.c

INCLUDE = md5.h

OBJS = lib.o main.o print.o sha256.o extra.o md5.o options.o sha224.o

all: $(NAME)

$(NAME):
	@$(CC) $(FLAGS) -g -c $(SOURCES) -I $(INCLUDE)
	@gcc	$(FLAGS) -g -o $(NAME) $(OBJS) -L./libft -lft
	@echo "\033[32mBinary \033[1;32m$(NAME)\033[1;0m\033[32m created.\033[0m"

clean:
	@rm -f $(OBJS)
	@echo "\033[31mObjects files \033[1;31m$(OBJS)\033[1;0m\033[31m removed.\033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[31mBin \033[1;31m$(NAME)\033[1;0m\033[31m removed.\033[0m"

re: fclean all
