FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Vray Standalone Render     � 	 	 .   V r a y   S t a n d a l o n e   R e n d e r   
  
 l     ��  ��    T N Take the currently open BBEdit VRSCENE file and render it in Vray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   B B E d i t   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V r a y   S t a n d a l o n e        l     ��  ��      2016-03-05 09.57 AM     �   (   2 0 1 6 - 0 3 - 0 5   0 9 . 5 7   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * 8 2 Define the Vray Standalone command line arguments    + � , , d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s )  - . - l    /���� / r     0 1 0 m    	 2 2 � 3 3   1 o      ���� 0 vrayoptions vrayOptions��  ��   .  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 ' ! Get the current BBEdit file name    9 � : : B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e 7  ; < ; l    =���� = O     > ? > k     @ @  A B A l   �� C D��   C &   tell application "TextWrangler"    D � E E @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " B  F�� F r     G H G e     I I n     J K J m    ��
�� 
file K 4   �� L
�� 
docu L m    ����  H o      ���� 0 
bbeditfile 
BBeditFile��   ? m     M M�                                                                                  R*ch  alis    6  Pine                       Ҋ��H+     j
BBEdit.app                                                      :1�����        ����  	                Applications    ҋ      ��5�       j  Pine:Applications: BBEdit.app    
 B B E d i t . a p p  
  P i n e  Applications/BBEdit.app   / ��  ��  ��   <  N O N l     ��������  ��  ��   O  P Q P l   " R���� R r    " S T S n      U V U 1     ��
�� 
strq V l    W���� W n     X Y X 1    ��
�� 
psxp Y l    Z���� Z o    ���� 0 
bbeditfile 
BBeditFile��  ��  ��  ��   T o      ���� 0 vrayfile vrayFile��  ��   Q  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _ 8 2 Define the Vray Standalone command line arguments    ` � a a d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s ^  b c b l  # * d���� d r   # * e f e b   # ( g h g b   # & i j i m   # $ k k � l l    - s c e n e F i l e = j o   $ %���� 0 vrayfile vrayFile h o   & '���� 0 vrayoptions vrayOptions f o      ���� 0 vrayoptions vrayOptions��  ��   c  m n m l     ��������  ��  ��   n  o p o l  + 2 q���� q r   + 2 r s r b   + 0 t u t b   + . v w v o   + ,���� 0 vraypath vrayPath w o   , -���� 0 vrayoptions vrayOptions u m   . / x x � y y &   >   / d e v / n u l l   2 > & 1   & s o      ���� 0 command  ��  ��   p  z { z l  3 : |���� | r   3 : } ~ } I  3 8�� ��
�� .sysoexecTEXT���     TEXT  o   3 4���� 0 command  ��   ~ 1      ��
�� 
rslt��  ��   {  � � � l     �� � ���   �  display alert result    � � � � ( d i s p l a y   a l e r t   r e s u l t �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     : � �   � �  - � �  ; � �  P � �  b � �  o � �  z����  ��  ��   �   �  $������ 2�� M�������� k x������
�� 
psxp
�� 
strq�� 0 vraypath vrayPath�� 0 vrayoptions vrayOptions
�� 
docu
�� 
file�� 0 
bbeditfile 
BBeditFile�� 0 vrayfile vrayFile�� 0 command  
�� .sysoexecTEXT���     TEXT
�� 
rslt�� ;��,�,E�O�E�O� *�k/�,EE�UO��,�,E�O��%�%E�O��%�%E�O�j E� ascr  ��ޭ