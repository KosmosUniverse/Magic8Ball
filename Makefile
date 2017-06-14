##
## Makefile for magic8ball in /home/ducret_t/persauvegarde/Magic8Ball
## 
## Made by thomas ducret
## Login   <ducret_t@epitech.net>
## 
## Started on  Mon Jun 20 10:28:46 2016 thomas ducret
## Last update Sat Jun 25 22:24:32 2016 thomas ducret
##

CC	=	gcc

RM	=	rm -rf

SRCS	=	Magic.c

OBJS	=	$(SRCS:.c=.o)

OBJLIST	=	objs/Magic.o

NAME	=	Magic8Ball

CFLAGS	+=	-W -Wall -Wextra
CFLAGS	+=	-ansi -pedantic
CFLAGS	+=	-g -g3 -ggdb

all	:	$(NAME)

$(NAME)	:	$(OBJS)
		mkdir -p ./objs
		mv $(OBJS) ./objs
		$(CC) -o $(NAME) $(OBJLIST)

clean	:
		$(RM) ./objs

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re

coffee:
	@echo -e "                      \033[37m\033[5m(\033[0m"
	@echo -e "                       \033[37m\033[5m)\033[0m     \033[37m\033[5m(\033[0m"
	@echo -e "                ___...\033[37m\033[5m(\033[0m ------\033[37m\033[5m)\033[0m......___"
	@echo -e "            .-\"\"       \033[37m\033[5m)\033[0m    \033[37m\033[5m(\033[0m          \"\"-."
	@echo -e "      .-'\`\`'|-_              \033[37m\033[5m)\033[0m         _.-|"
	@echo "     /  .--.|   \`\"\"---...........---\"\"\`   |"
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \\  \\   |                             |"
	@echo "      \`\\ \`\\ |                             |"
	@echo -e "        \`\\ \`|       \033[35mBONJOUR LE SWAG\033[0m       |"
	@echo "        _/ /\\                             /"
	@echo "       (__/  \\                           /"
	@echo "    _..---\"\"\` \\                         /\`\"\"---.._"
	@echo " .-'           \\                       /          '-."
	@echo ":               \`-.__             __.-'              :"
	@echo ":                  ) \"\"---...---\"\" (                 :"
	@echo " '._               \`\"--...___...--\"\`              _.'"
	@echo "   \\\"\"--..__                              __..--\"\"/"
	@echo "    '._     \"\"\"----.....______.....----\"\"\"     _.'"
	@echo "      \`\"\"--..,,_____            _____,,..--\"\"\`"
	@echo "                    \`\"\"\"----\"\"\"\`"
