function [G] = fcn_G_q(gear)

G = zeros(5,5);

  G(1,1)=1;
  G(1,2)=0;
  G(1,3)=0;
  G(1,4)=0;
  G(1,5)=0;
  G(2,1)=0;
  G(2,2)=1;
  G(2,3)=0;
  G(2,4)=0;
  G(2,5)=0;
  G(3,1)=0;
  G(3,2)=0;
  G(3,3)=1;
  G(3,4)=0;
  G(3,5)=0;
  G(4,1)=0;
  G(4,2)=0;
  G(4,3)=0;
  G(4,4)=1/gear(3);
  G(4,5)=0;
  G(5,1)=0;
  G(5,2)=0;
  G(5,3)=0;
  G(5,4)=0;
  G(5,5)=1/gear(4);

 