SELECT
    p.program_id,
    p.index_num AS indexnum_program,
    p.year_start,
    p.year_finish,
    s.index_num AS indexnum_subprogram,
    ar.name AS area,
    pr.target_desc,
    co.area_id
FROM program AS p INNER JOIN sub_program AS s
                             ON s.sub_program_id = p.program_id
                  INNER JOIN project AS pr
                             ON s.sub_program_id = pr.project_id
                  INNER JOIN contract AS co
                             ON s.sub_program_id = co.contract_id
                  INNER JOIN area AS ar
                             ON co.area_id = ar.area_id;