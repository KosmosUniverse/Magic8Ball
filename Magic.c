/*
** Magic.c for cq in /home/ducret_t/persauvegarde/Magic8Ball
** 
** Made by thomas ducret
** Login   <ducret_t@epitech.net>
** 
** Started on  Sat Jun 18 12:45:18 2016 thomas ducret
** Last update Mon Jun 27 09:32:39 2016 thomas ducret
*/

#define _GNU_SOURCE

#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

static char	**init_tab(char **tab)
{
  if ((tab = malloc(sizeof(char *) * 15)) == NULL)
    return (NULL);
  tab[0] = strdup("Man");
  tab[1] = strdup("RTFM");
  tab[2] = strdup("Segmantation fault");
  tab[3] = strdup("Yes");
  tab[4] = strdup("No");
  tab[5] = strdup("Exit success");
  tab[6] = strdup("Exit failure");
  tab[7] = strdup("Dark hole is right");
  tab[8] = strdup("Ask thomas he is the best");
  tab[9] = strdup("Don't ask");
  tab[10] = strdup("Ask again later");
  tab[11] = strdup("42");
  tab[12] = strdup("Tha game");
  tab[13] = strdup("Caca");
  tab[14] = NULL;
  return (tab);
}

static int	check_input(char *buff)
{
  if (buff == NULL || buff[0] == '\0')
    return (-1);
  else
    return (0);
}

static void	clear_tab(char **tab)
{
  int		i;

  i = 0;
  while (tab[i] != NULL)
    {
      free(tab[i]);
      i += 1;
    }
  free(tab);
}

int		main(void)
{
  int		i;
  size_t	n;
  char		*buff;
  int		check;
  char		**tab;

  tab = NULL;
  buff = NULL;
  if ((tab = init_tab(tab)) == NULL)
    return (1);
  srand(time(NULL) * getpid());
  check = 0;
  n = 0;
  printf("Ask Me :\n");
  if (getline(&buff, &n, stdin) == -1)
    {
      perror("getline");
      return (1);
    }
  check = check_input(buff);
  while (check != -1 && strcmp(buff, "exit\n") != 0)
    {
      i = rand() % 14;
      printf("%s\n", tab[i]);
      printf("Ask Me Again :\n");
      if (getline(&buff, &n, stdin) == -1)
	{
	  perror("getline");
	  return (1);
	}
      check = check_input(buff);
    }
  clear_tab(tab);
  free(buff);
  if (check == -1)
    return (1);
  printf("exit\n");
  return (0);
}
