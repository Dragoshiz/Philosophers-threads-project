# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dodo <dodo@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/22 12:08:58 by dimbrea           #+#    #+#              #
#    Updated: 2024/01/04 14:37:04 by dodo             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror -pthread -g 

SRCS = \
action_utils.c \
actions.c \
check.c \
main.c \
utils.c \

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)
	
re: fclean all

PHONY: all clean fclean re