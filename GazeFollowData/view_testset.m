load test2_annotations.mat

rp = randperm(length(test_eyes));
for i_rp=1:length(test_eyes)
    i = rp(i_rp);
   path = test_path{i};
   im = imread(path);
   e = test_eyes{i};
   e = [size(im,2) size(im,1)].*e;
   g = test_gaze{i};
   for j=1:size(g,1)
       g(j,:) = [size(im,2) size(im,1)].* g(j,:);
   end
   image(im); hold on;
   plot(e(1),e(2),'-ob'); hold on;
   plot(g(:,1),g(:,2),'or'); hold on;
   pause();
   clf;
end
