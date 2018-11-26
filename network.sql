UPDATE correlation_preformed_clr T
   SET T.gene_i1 = 
     (SELECT gene_i
     FROM gene_info A
     WHERE concat(A.gene_id,".0") = T.gene_id1)
