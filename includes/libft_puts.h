#ifndef LIBFT_PUTS_H
# define LIBFT_PUTS_H

# include "libft.h"

void  ft_putchar_fd(char c, int fd);
int	  ft_putchar(const char c);
void  ft_putendl_fd(char *s, int fd);
void  ft_putnbr_fd(int n, int fd);
int	  ft_putnbr_u(unsigned int n, int counter);
int	  ft_putnbr(int n, int counter);
int	  ft_putstr(const char *s);
void  ft_putstr_fd(char *s, int fd);

#endif
