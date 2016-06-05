/*
** mysh_parser.h for minishell in /home/boitea_r
** 
** Made by Ronan Boiteau
** Login   <boitea_r@epitech.net>
** 
** Started on  Wed Apr  6 19:15:52 2016 Ronan Boiteau
** Last update Fri Apr  8 05:00:25 2016 Ronan Boiteau
*/

#ifndef MYSH_PARSER_H_
# define MYSH_PARSER_H_

char		*is_separator(char *str);
char		**parse_command(char *str);

#endif /* !MYSH_PARSER_H_ */
