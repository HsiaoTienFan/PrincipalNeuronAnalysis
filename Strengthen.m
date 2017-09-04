clc
test1 = [99 99];
test2 = [88 88];
count = 0;
a = sort(abs(outWM(1,1:netDim*reservoirNum)));

while (test1(1) > test2(1)) | (test1(2) > test2(2)) 
    test1 = test2;
    x = abs(outWM) > a(round(netDim*reservoirNum*5/10));
    y1 = find(x(1,1:netDim*reservoirNum) ==1);
    intWM(y1,:) = intWM(y1,:)*1.001;
    intWM(:,y1) = intWM(:,y1)*1.001;
    headers
    learnAndTest
    count = count+1;
    test2 = (sqrt(msetestresult ./ teacherVariance));
end
