update fi_parcela set situacao_par=26 where cod_emp_par=1 and situacao_par=4 and parce_par='S'
and exists (select 1 from fi_lancamento where cod_emp_lan=1 and cod_div_lan=cod_div_par and estornado_lan='S' and tp_lan=2);


UPDATE fi_receitas SET ANO_FRC=2013
where cod_emp_FRC=1 and ano_frc=2014 and
exists (select 1 from fi_parcela
        where cod_emp_par=cod_emp_frc and cod_div_par=cod_div_frc and parcela_par=parcela_par_frc and tp_par=tp_par_frc and parce_par='S' and login_inc_par='PARCE' );


UPDATE fi_itensreceitas SET ANO_ire=2013
where cod_emp_ire=1 and ano_ire=2014 and
exists (select 1 from fi_parcela
        where cod_emp_par=cod_emp_ire and cod_div_par=cod_div_ire and parcela_par=parcela_par_ire and tp_par=tp_par_ire and parce_par='S' and login_inc_par='PARCE' );

