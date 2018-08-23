/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   escape_norme.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mpetruse <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/22 12:32:47 by mpetruse          #+#    #+#             */
/*   Updated: 2018/08/22 22:47:36 by mpetruse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "md5.h"

void	extra(t_gen *g, char **argv)
{
	if (ft_strcmp(argv[1], "sha256") == 0)
		go_sha256(g->stdin, g);
	else if (ft_strcmp(argv[1], "sha224") == 0)
		go_sha224(g->stdin, g);
	else
		go_md5(g->stdin, g);
	if (!g->f_q)
		printf(" %s\n", argv[g->pars]);
	else
		ft_printf("\n");
}
