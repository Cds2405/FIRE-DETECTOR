#line 1 "G:/8051_Fire_Detecter/Fire_Detector.c"
void main()
 {
 P2_1_bit = 1;
 P2_0_bit = 1;
while(1)
 {
 if(!P2_0_bit)
 {
 P2_1_bit = 0;
 Delay_ms(500);
 P2_1_bit = 1;
 Delay_ms(500);
 }


 }


}
