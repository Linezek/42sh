##
## Makefile for 42sh in /home/boitea_r/c/PSU_2015_minishell2
## 
## Made by Ronan Boiteau
## Login   <boitea_r@epitech.net>
## 
## Started on  Mon Apr 18 17:32:47 2016 Ronan Boiteau
## Last update Sun Jun  5 23:28:53 2016 Ronan Boiteau
##

NAME	 = 42sh

IDIR	 = include/

LIB	 = libmy.a
LNAME	 = my
LDIR	 = lib/my

CC	 = gcc
CFLAGS	+= -I $(IDIR)
CFLAGS	+= -Wall -Wextra -ansi
CFLAGS	+= -Wpedantic -Wno-long-long
CFLAGS	+= -Werror

SDIR	 = src/
SRCS	 = $(SDIR)builtin/builtins.c			\
	   $(SDIR)builtin/cd.c				\
	   $(SDIR)builtin/echo.c			\
	   $(SDIR)builtin/env.c				\
	   $(SDIR)builtin/exit.c			\
	   $(SDIR)builtin/fct_ptr.c			\
	   $(SDIR)builtin/printenv.c			\
	   $(SDIR)builtin/pwd.c				\
	   $(SDIR)builtin/setenv.c			\
	   $(SDIR)builtin/unsetenv.c			\
	   $(SDIR)count_args.c				\
	   $(SDIR)exec_path.c				\
	   $(SDIR)get_path.c				\
	   $(SDIR)input.c				\
	   $(SDIR)logic.c				\
	   $(SDIR)main.c				\
	   $(SDIR)parser.c				\
	   $(SDIR)run/pipe.c				\
	   $(SDIR)run/redirections.c			\
	   $(SDIR)run/run.c				\
	   $(SDIR)run/search_path.c			\
	   $(SDIR)run/subcommand.c			\
	   $(SDIR)signal/child.c			\
	   $(SDIR)signal/parent.c

OBJS	 = $(SRCS:.c=.o)

RM	 = rm -f


all: $(LIB) $(NAME)

$(LIB):
	cd $(LDIR) && $(MAKE)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) -L lib -l $(LNAME)

clean:
	$(RM) $(OBJS)
	cd $(LDIR) && $(MAKE) clean

fclean: clean
	$(RM) $(NAME)
	cd $(LDIR) && $(MAKE) fclean

re: fclean all

.PHONY: all clean fclean re
