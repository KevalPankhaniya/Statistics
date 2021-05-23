clc;
clear all;
close all;

pkg load communications;

iterations = 10000
iterations_temp = iterations;
tempTry = 0;
redBall = 0;
tempVar = 1;
p = [0,0,0,0,0];
expected_mean_value = [];

for tempTry = 1:iterations
	expected_mean_value(tempTry) = 2;
endfor

while (iterations)

	redBall = 0;
	for tempTry=1:4
		red = randint(1);
		if(red == 0)
			redBall++;
		endif
	endfor

	if(redBall == 0)
		p(1)++;
	elseif(redBall == 1)
	        p(2)++;
	elseif(redBall == 2)
		p(3)++;
	elseif(redBall == 3)
		p(4)++;
	elseif(redBall == 4)
		p(5)++;
	else
		disp('Something is wrong');
	endif	

	q = p /tempVar;
	mean_value(tempVar) = (q(1)*0)+(q(2)*1)+(q(3)*2)+(q(4)*3)+(q(5)*4);
	tempVar++;

	iterations = iterations - 1;
	
endwhile


figure('units','normalized','outerposition',[0 0 1 1]);
subplot(1,2,1);
bar(q); title("Probability Distribution"); xlabel("X Number of Red Balls");ylabel("Probability");
subplot(1,2,2);	
plot(expected_mean_value);
hold on;
plot(mean_value);
pause(5);
