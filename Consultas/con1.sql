

nu_prontuario

select * from tb_cds_atend_individual

SELECT atend.*
from tb_cds_atend_individual atend 
inner join tb_cds_ficha_atend_individual  ficha  on  atend.co_cds_ficha_atend_individual = ficha.co_seq_cds_ficha_atend_indivdl
left join tb_cds_cad_individual   cad on cad.nu_cns_cidadao  = atend.nu_cartao_sus
where dt_ultima_menstruacao is not null and cad.nu_cns_cidadao is null and dt_ultima_menstruacao >= '20190601'


