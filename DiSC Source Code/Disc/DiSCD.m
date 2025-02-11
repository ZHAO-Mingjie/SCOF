function SDT_matrix = DiSCD(x, pm, y_pred)
    SDT_matrix = cell(1, pm.k); 
    eps=1e-10;
    k = pm.k;  
    d = pm.d; 
    for c = 1:k
        cluster_idx = find(y_pred == c);
        cluster_samples = x(cluster_idx, :);
        num_samples_c = length(cluster_idx);
        SDT_matrix{c} = cell(1, d);

        for s = 1:d
            num_values_s = pm.no_values(s);
          
            dist_matrix = zeros(num_values_s, num_values_s);
            cond_entropy_all = zeros(1, num_values_s); 
            for i = 1:num_values_s
                num_i_in_c = sum(cluster_samples(:, s) == i);

                if num_i_in_c > 0
                    p_i_given_c = num_i_in_c / num_samples_c;

                    cond_entropy_all(i) = p_i_given_c;
                end
            end
            
  
            for i = 1:num_values_s
                for j = i+1:num_values_s
                    cond_entropy_i = cond_entropy_all(i);
                    cond_entropy_j = cond_entropy_all(j);
                    normalization = sum(cond_entropy_all) + eps;
                    dist_matrix(i, j) =abs((cond_entropy_i / normalization) - (cond_entropy_j / normalization)) ;
                    dist_matrix(j, i)=dist_matrix(i, j);
                    
                   
                end
            end
            SDT_matrix{c}{s} = dist_matrix;
        end
    end
end
