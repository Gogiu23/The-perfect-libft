# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdominic <gdominic@student.42barcelona.co  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 09:13:01 by gdominic          #+#    #+#              #
#    Updated: 2023/01/06 00:30:31 by gdominic         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

-include sources.mk
-include includes.mk

#=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

NAME 			= libft.a

#=-=-=-=-=-=-=- COLORS DEFINITION =-=-=-=-=-=-=-=-=-#

BLACK			=	\033[0;30m
RED				=	\033[0;31m
GREEN			=	\033[0;32m
ORANGE			=	\033[0;33m
BLUE			=	\033[0;34m
PURPLE			=	\033[0;35m
CYAN			=	\033[0;36m
LIGHT_GRAY		=	\033[0;37m
DARK_GRAY		=	\033[1;30m
LIGHT_RED		=	\033[1;31m
LIGHT_GREEN		=	\033[1;32m
YELLOW			=	\033[1;33m
LIGHT_BLUE		=	\033[1;34m
LIGHT_PURPLE	=	\033[1;35m
LIGHT_CYAN		=	\033[1;36m
WHITE			=	\033[1;37m
NO_COLOR		=	\033[0m

#=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

INCLUDE_PATH	= ./includes

OBJS 			= $(SOURCES:.c=.o)
DEPS			= $(SOURCES:.c=.d)

CC 				= gcc
CFLAGS 			= -Wall -Wextra -Werror -O3 -Ofast -flto=thin -ffast-math
DFLAGS			= -MMD -MP -g
RM	 			= rm -f
MKFL			= Makefile

#=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=#

all: 
	$(MAKE) $(NAME)

%.o:	%.c $(MKFL) 
	@$(CC) $(CFLAGS) $(DFLAGS) -I $(INCLUDE_PATH) -c $< -o $@
	@printf "\033[2K\r$(YELLOW)$(NAME):$(LIGHT_BLUE)$<........Done✅ $(RESET)"


$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)
	@echo Archive\ created!!
	@printf "\033[2K\r$(BLUE)$(NAME): $(GREEN)Compiled Bro!!! [√]$(RESET)\n"

#=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=#

clean:
	@$(RM) $(OBJS)
	@$(RM) $(DEPS)
	@$(RM) a.out
	@printf "$(RED)$(NAME): $(ORANGE)Cleaning all .o in your libft.\n$(RESET)"

fclean: clean
	@$(RM) $(NAME)
	@printf "$(LIGHT_PURPLE)$(NAME): $(LIGHT_CYAN)Cleaning compiled library $(NAME).\n$(RESET)"

re: fclean all

gmk:
	@find sources -name '*.c' | sed 's/^/SOURCES += /' > sources.mk
	@find includes -name '*.h' | sed 's/^/INCLUDES += /' > includes.mk

norminette: clean
	@printf "$(BLUE)$(NAME): $(GREEN)norminette -> sources\n$(RESET)"
	@norminette sources
	@echo " "
	@printf "$(BLUE)$(NAME): $(GREEN)norminette -> includes\n$(RESET)"
	@norminette includes

norminette-exported: clean
	@printf "$(BLUE)$(NAME): $(GREEN)norminette exported\n$(RESET)"
	@norminette

export:
	@./scripts/export.sh
	@printf "$(BLUE)$(NAME): $(YELLOW)Libft exported.\n$(RESET)"

end:
	@make fclean
	@make gmk
	@make all
	@make norminette
	@make fclean
	@make export
	@printf "$(BLUE)$(NAME): $(LIGHT_CYAN)Prepared to be pushed.\n$(RESET)"

#=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=#

-include $(DEPS)

#=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=#

.PHONY: all clean fclean re gmk norminette norminette-exported export end
