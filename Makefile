# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smoreno- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/24 03:09:03 by smoreno-          #+#    #+#              #
#    Updated: 2019/04/13 01:37:12 by smoreno-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		=	libftprintf.a
SRC			=	libft/ft_memset.c         \
				libft/ft_bzero.c          \
				libft/ft_memcpy.c         \
				libft/ft_memccpy.c        \
				libft/ft_memmove.c        \
				libft/ft_memchr.c         \
				libft/ft_memcmp.c         \
				libft/ft_strlen.c         \
				libft/ft_intlen.c         \
				libft/ft_listlen.c        \
				libft/ft_strdup.c         \
				libft/ft_strcpy.c         \
				libft/ft_strncpy.c        \
				libft/ft_strcat.c         \
				libft/ft_strncat.c        \
				libft/ft_strlcat.c        \
				libft/ft_strchr.c         \
				libft/ft_strrchr.c        \
				libft/ft_strstr.c         \
				libft/ft_strnstr.c        \
				libft/ft_strcmp.c         \
				libft/ft_strncmp.c        \
				libft/ft_atoi.c           \
				libft/ft_isalpha.c        \
				libft/ft_isspace.c        \
				libft/ft_isdigit.c        \
				libft/ft_isalnum.c        \
				libft/ft_isascii.c        \
				libft/ft_isprint.c        \
				libft/ft_toupper.c        \
				libft/ft_tolower.c        \
				libft/ft_memalloc.c       \
				libft/ft_memdel.c         \
				libft/ft_strnew.c         \
				libft/ft_strdel.c         \
				libft/ft_strclr.c         \
				libft/ft_striter.c        \
				libft/ft_striteri.c       \
				libft/ft_strmap.c         \
				libft/ft_strmapi.c        \
				libft/ft_strequ.c         \
				libft/ft_strnequ.c        \
				libft/ft_strsub.c         \
				libft/ft_strjoin.c        \
				libft/ft_strtrim.c        \
				libft/ft_strsplit.c       \
				libft/ft_counter_words.c  \
				libft/ft_sortinttab.c     \
				libft/ft_itoa.c           \
				libft/ft_putchar.c        \
				libft/ft_putstr.c         \
				libft/ft_puttab.c         \
				libft/ft_putendl.c        \
				libft/ft_putnbr.c         \
				libft/ft_putchar_fd.c     \
				libft/ft_putstr_fd.c      \
				libft/ft_putendl_fd.c     \
				libft/ft_putnbr_fd.c      \
				libft/ft_lstnew.c         \
				libft/ft_lstdelone.c      \
				libft/ft_lstdel.c         \
				srcs/ft_convert.c\
				srcs/parser.c\
				srcs/ft_printf.c \
				srcs/ft_wchar.c\
				srcs/flags.c \
				srcs/utils.c \
				srcs/utils2.c \
				srcs/numb_convert.c \
				srcs/tools.c \
				srcs/tools2.c \
				srcs/pading.c \
				srcs/float.c \
				srcs/lst.c  

OBJ     =     $(SRC:.c=.o)

FLAGS     =  -Wall -Werror -Wextra -Iincludes

all: $(NAME) includes/

$(NAME): $(OBJ)
	@ar rcs $(NAME) $^

test: all
	gcc main.c $(NAME) -Iincludes && ./a.out    

%.o: %.c
	@gcc $(FLAGS) -o $@ -c $<

re: fclean all

clean:
	@/bin/rm -Rf $(OBJ)

fclean: clean
	@/bin/rm -Rf $(NAME)
.PHONY : all, $(NAME), clean, fclean, re
