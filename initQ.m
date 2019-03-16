function matrix =  initQ()

 %11X4 matrix of random values between 0.01 and 0.1;
 a = 0.01;
 b = 0.1;
 
 %Create a 11x4 matrix in the range of 0.01 and 0.1
 matrix = (b-a).*rand(11,4) + a;
 
 %Create a surface plot.
 %surf(matrix);

end 
