/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils_bonus.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gdominic <gdominic@student.42barcelona.co  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/05 16:36:54 by gdominic          #+#    #+#             */
/*   Updated: 2022/12/16 00:26:54 by gdominic         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

size_t	ft2_strlen(char *str)
{
	size_t	count;

	count = 0;
	if (!str)
		return (0);
	while (str[count] != '\0')
		count++;
	return (count);
}
