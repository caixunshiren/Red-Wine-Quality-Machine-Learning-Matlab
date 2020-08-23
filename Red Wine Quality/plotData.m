function [] = plotData(X,y,dim)
    figure; hold on;
    pos = find(y==1); neg = find(y == 0);
    % Plot Examples
    
    if(dim == 2)
        plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
        plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7); 
    elseif(dim == 3)
        plot3(X(pos, 1), X(pos, 2), X(pos, 3), 'k+','LineWidth', 2, 'MarkerSize', 7);
        plot3(X(neg, 1), X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7); 
    end
    hold off;
end

