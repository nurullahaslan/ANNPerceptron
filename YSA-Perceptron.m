
input1= 0.05;
input1= 0.10;
desired_out = [0;1;1;1];
bias = 1;
bias = -1;
coeff = 0.5;
weights = -1*2.*rand(2,1);

         %İnput satırı için net hesaplanır
          neth1 = bias1+input1*w1+input2*w2;
          neth2 = bias1+input1*w3+input2*w4;
          %Aktivasyon fonksiyonu tanh
          outh1 = 2*(1/(1+exp(-neth1)))-1;
          outh2 = 2*(1/(1+exp(-neth2)))-1;
          
          neto1 = bias2+outh1*w5+outh2*w6;
          neto2 = bias2+outh1*w7+outh2*w8;
          
          outo1 = 2*(1/(1+exp(-neto1)))-1;
          outo2 = 2*(1/(1+exp(-neto2)))-1;
          
          delta = desired_out(j)-out(j);
          %Ağırlıklar güncellenir
          weights(1,1) = weights(1,1)+coeff*input(j,1)*delta;
          weights(2,1) = weights(2,1)+coeff*input(j,2)*delta;
disp('Output =');
disp(out1);
disp('Weights =');
disp(weights);
