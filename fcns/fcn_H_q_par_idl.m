function [H] = fcn_H_q_par_idl(q,L,m,I,gear,eff)

H = zeros(5,5);

  H(1,1)=m(1) + m(2) + m(3);
  H(1,2)=0;
  H(1,3)=- (L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2 - (L(2)*m(2)*sin(q(3) + q(4)))/2 - L(2)*m(3)*...
         sin(q(3) + q(4));
  H(1,4)=- (L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2 - (L(2)*m(2)*sin(q(3) + q(4)))/2 - L(2)*m(3)*...
         sin(q(3) + q(4));
  H(1,5)=-(L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2;
  H(2,1)=0;
  H(2,2)=m(1) + m(2) + m(3);
  H(2,3)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2 + (L(2)*m(2)*cos(q(3) + q(4)))/2 + L(2)*m(3)*...
         cos(q(3) + q(4));
  H(2,4)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2 + (L(2)*m(2)*cos(q(3) + q(4)))/2 + L(2)*m(3)*...
         cos(q(3) + q(4));
  H(2,5)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2;
  H(3,1)=- (L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2 - (L(2)*m(2)*sin(q(3) + q(4)))/2 - L(2)*m(3)*...
         sin(q(3) + q(4));
  H(3,2)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2 + (L(2)*m(2)*cos(q(3) + q(4)))/2 + L(2)*m(3)*...
         cos(q(3) + q(4));
  H(3,3)=I(1) + I(2) + I(3) + gear(1) + gear(2) + (L(2)^2*m(2))/4 + L(2)^2*m(3) + (L(3)^2*m(3))/4 +...
          L(2)*L(3)*m(3)*cos(q(5));
  H(3,4)=I(2) + I(3) + gear(2) + (L(2)^2*m(2))/4 + L(2)^2*m(3) + (L(3)^2*m(3))/4 + gear(1)*gear(3) +...
          gear(2)*gear(4) + L(2)*L(3)*m(3)*cos(q(5));
  H(3,5)=I(3) + (L(3)^2*m(3))/4 + gear(2)*gear(4) + (L(2)*L(3)*m(3)*cos(q(5)))/2;
  H(4,1)=- (L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2 - (L(2)*m(2)*sin(q(3) + q(4)))/2 - L(2)*m(3)*...
         sin(q(3) + q(4));
  H(4,2)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2 + (L(2)*m(2)*cos(q(3) + q(4)))/2 + L(2)*m(3)*...
         cos(q(3) + q(4));
  H(4,3)=I(2) + I(3) + gear(2) + (L(2)^2*m(2))/4 + L(2)^2*m(3) + (L(3)^2*m(3))/4 + gear(1)*gear(3) +...
          gear(2)*gear(4) + L(2)*L(3)*m(3)*cos(q(5));
  H(4,4)=I(2) + I(3) + gear(2) + gear(1)*gear(3)^2 + gear(2)*gear(4)^2 + (L(2)^2*m(2))/4 + L(2)^2*...
         m(3) + (L(3)^2*m(3))/4 + 2*gear(2)*gear(4) + L(2)*L(3)*m(3)*cos(q(5));
  H(4,5)=I(3) + gear(4)*(gear(2) + gear(2)*gear(4)) + (L(3)^2*m(3))/4 + (L(2)*L(3)*m(3)*cos(q(5)))/2;
  H(5,1)=-(L(3)*m(3)*sin(q(3) + q(4) + q(5)))/2;
  H(5,2)=(L(3)*m(3)*cos(q(3) + q(4) + q(5)))/2;
  H(5,3)=I(3) + (L(3)^2*m(3))/4 + gear(2)*gear(4) + (L(2)*L(3)*m(3)*cos(q(5)))/2;
  H(5,4)=I(3) + gear(2)*gear(4)^2 + (L(3)^2*m(3))/4 + gear(2)*gear(4) + (L(2)*L(3)*m(3)*cos(q(5)))/2;
  H(5,5)=I(3) + gear(2)*gear(4)^2 + (L(3)^2*m(3))/4;

 