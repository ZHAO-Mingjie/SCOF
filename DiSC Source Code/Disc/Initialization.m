
function [ modes, partition_new ] = kmd_clustering( x ,pm ,modes)

dis_matrix = cell( 1 , pm.d );
for i=1:pm.d 
    sub_dissim_matrix_upper = triu( ones( pm.no_values(i) ) , 1); %
    dis_matrix{ i } = sub_dissim_matrix_upper + sub_dissim_matrix_upper'; %
end

loop_stop = 0;
no_loop=0;
partition_old = zeros( pm.n , 1 );
while loop_stop == 0 && no_loop<=50
    partition_new = zeros( pm.n , 1 );
    no_loop = no_loop + 1;
    dis_obj_modes = zeros( pm.n , pm.k );
    for i=1:pm.n
        for j=1:pm.k
            dis_sub = zeros( 1 , pm.d );
            for t = 1 : pm.d
                dis_sub( t ) = dis_matrix{ t }( x( i , t ) , modes( j , t ) ) ;
            end
            dis_obj_modes( i , j ) = mean( dis_sub );
        end
        [ ~ , partition_new( i ) ] = min( dis_obj_modes( i , : ) );
    end
    if sum( sum( abs( partition_new - partition_old ) ) ) == 0
        loop_stop = 1;
    end
    partition_old = partition_new;
    for j = 1 : pm.k
        x_sub = x( partition_new == j , 1 : pm.d );
        if isempty( x_sub ) == 0
            for t = 1 : pm.d
                sta_table = tabulate( x_sub( : , t ) );
                [ ~ , lct_max_freq ]= max( sta_table( : , 2 ) );
                modes( j , t )= sta_table( lct_max_freq , 1 );
            end
        end
    end
end

end
