/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gdominic <gdominic@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/12 15:52:02 by gdominic          #+#    #+#             */
/*   Updated: 2023/02/09 18:58:50 by gdominic         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

char	*ft_strchr(char *ptr, int n)
{
	int		i;

	i = 0;
	if (!ptr)
		return (0);
	while (ptr[i] != '\0')
	{
		if (ptr[i] == (char)n)
			return (&ptr[i]);
		i++;
	}
	return (0);
}
