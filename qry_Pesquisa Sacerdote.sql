SELECT id_fiel, nome_fiel 
			FROM fiel
			WHERE id_cargo = (SELECT id_cargo FROM cargo WHERE nome_cargo LIKE '%SACERDOTE%')
			ORDER BY nome_fiel ASC