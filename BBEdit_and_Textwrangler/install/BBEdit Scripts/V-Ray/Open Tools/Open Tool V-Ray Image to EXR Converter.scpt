FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' Open Tool V-Ray Image to EXR Converter     � 	 	 N   O p e n   T o o l   V - R a y   I m a g e   t o   E X R   C o n v e r t e r   
  
 l     ��  ��    8 2 Open up the V-Ray Image to EXR Converter program.     �   d   O p e n   u p   t h e   V - R a y   I m a g e   t o   E X R   C o n v e r t e r   p r o g r a m .      l     ��  ��      2016-12-17 10.47 AM     �   (   2 0 1 6 - 1 2 - 1 7   1 0 . 4 7   A M      l     ��������  ��  ��        l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     j / A p p l i c a t i o n s / C h a o s G r o u p / V - R a y / M a y a 2 0 1 7 / b i n / v r i m g 2 e x r  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     �� # $��   # m g set vrayPath to quoted form of POSIX path of "/Applications/ChaosGroup/V-Ray/Maya2016.5/bin/vrimg2exr"    $ � % % �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / C h a o s G r o u p / V - R a y / M a y a 2 0 1 6 . 5 / b i n / v r i m g 2 e x r " "  & ' & l     �� ( )��   ( k e set vrayPath to quoted form of POSIX path of "/Applications/ChaosGroup/V-Ray/Maya2016/bin/vrimg2exr"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / C h a o s G r o u p / V - R a y / M a y a 2 0 1 6 / b i n / v r i m g 2 e x r " '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / - ' Define the Vray command line arguments    0 � 1 1 N   D e f i n e   t h e   V r a y   c o m m a n d   l i n e   a r g u m e n t s .  2 3 2 l    4���� 4 r     5 6 5 m    	 7 7 � 8 8   6 o      ���� 0 vrayoptions vrayOptions��  ��   3  9 : 9 l    ;���� ; r     < = < b     > ? > o    ���� 0 vraypath vrayPath ? o    ���� 0 vrayoptions vrayOptions = o      ���� 0 command  ��  ��   :  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D   display alert command    E � F F ,   d i s p l a y   a l e r t   c o m m a n d C  G H G l    I���� I I   �� J��
�� .sysoexecTEXT���     TEXT J o    ���� 0 command  ��  ��  ��   H  K L K l     �� M N��   M   display alert result    N � O O *   d i s p l a y   a l e r t   r e s u l t L  P�� P l     ��������  ��  ��  ��       �� Q R��   Q ��
�� .aevtoappnull  �   � **** R �� S���� T U��
�� .aevtoappnull  �   � **** S k      V V   W W  2 X X  9 Y Y  G����  ��  ��   T   U  ������ 7������
�� 
psxp
�� 
strq�� 0 vraypath vrayPath�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT�� ��,�,E�O�E�O��%E�O�j ascr  ��ޭ