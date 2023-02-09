/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gdominic <gdominic@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/11 19:09:21 by gdominic          #+#    #+#             */
/*   Updated: 2023/02/09 19:36:20 by gdominic         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "../../includes/libft.h"

char	*ft_strjoin(char *ptr, char *buffer)
{
	char	*str;
	size_t	j;
	size_t	i;

	if (!ptr)
	{
		ptr = (char *)malloc(sizeof(char) * 1);
		if (!ptr)
			return (NULL);
		ptr[0] = '\0';
	}
	i = -1;
	j = 0;
	str = malloc(sizeof(char) * (ft2_strlen(ptr) + ft2_strlen(buffer) + 1));
	if (!str)
		return (NULL);
	if (ptr)
		while (ptr[++i] != '\0')
			str[i] = ptr[i];
	while (buffer[j] != '\0')
		str[i++] = buffer[j++];
	str[ft2_strlen(ptr) + ft2_strlen(buffer)] = '\0';
	free(ptr);
	return (str);
}
