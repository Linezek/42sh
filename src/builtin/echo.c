/*
** echo.c for minishell in /home/boitea_r
**
** Made by Ronan Boiteau
** Login   <boitea_r@epitech.net>
**
** Started on  Thu Jan 14 20:06:55 2016 selim rinaz
** Last update Sun Jun  5 22:59:55 2016 Antoine Galpin
*/

#include <limits.h>
#include <stdlib.h>
#include "my.h"

static void	print_arg(char *str)
{
  int		idx;

  idx = 0;
  while (str[idx] != '\0')
    {
      my_printf("%c", str[idx]);
      ++idx;
    }
}

t_uchar		run_echo(char ***env, char **argv)
{
  t_uint	idx;
  char		option_n;

  idx = 1;
  option_n = 0;
  (void)env;
  if (argv[idx] && my_strcmp(argv[idx], "-n") == 0)
    {
      idx += 1;
      option_n = 1;
    }
  while (idx < UINT_MAX && argv != NULL && argv[idx] && argv[idx + 1])
    {
      print_arg(argv[idx]);
      my_printf(" ");
      idx += 1;
    }
  if (argv[idx])
    print_arg(argv[idx]);
  if (!option_n)
    my_printf("\n");
  return (0);
}
