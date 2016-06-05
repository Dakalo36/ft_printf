# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dnematan <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/14 15:01:22 by dnematan          #+#    #+#              #
#    Updated: 2016/06/05 17:07:10 by dnematan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printchar.c ft_printstr.c ft_printnbr.c ft_convert1.c ft_printdec.c\
	  ft_isspec.c ft_inner.c

CC = gcc -Wall -Wextra -Werror

O_FILES = $(SRC:.c=.o)

INC = "ft_printf.h"

all: $(NAME)

$(NAME):
	$(CC) -c $(SRC) $(INC)
	ar rc $(NAME) $(O_FILES)
	ranlib $(NAME)

clean:
	rm -rf $(O_FILES)

fclean:clean
	rm -rf $(NAME)

re: fclean all clean
