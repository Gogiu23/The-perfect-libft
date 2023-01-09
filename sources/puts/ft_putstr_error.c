/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_error.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gdominic <gdominic@student.42barcelona.co  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/06 18:08:10 by gdominic          #+#    #+#             */
/*   Updated: 2023/01/08 16:36:36 by gdominic         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

int	ft_putstr_error(const char *s)
{
	if (s == NULL)
		return (write(1, "(null)", 6));
	else
	{
		write (2, s, ft_strlen(s));
		exit (EXIT_FAILURE);
	}
}
