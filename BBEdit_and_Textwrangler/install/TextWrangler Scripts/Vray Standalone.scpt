FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Vray Standalone Render     � 	 	 .   V r a y   S t a n d a l o n e   R e n d e r   
  
 l     ��  ��    Z T Take the currently open TextWrangler VRSCENE file and render it in Vray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   T e x t W r a n g l e r   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V r a y   S t a n d a l o n e        l     ��  ��      2016-11-19 7.54 AM      �   (   2 0 1 6 - 1 1 - 1 9   7 . 5 4   A M        l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * 8 2 Define the Vray Standalone command line arguments    + � , , d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s )  - . - l    /���� / r     0 1 0 m    	 2 2 � 3 3   1 o      ���� 0 vrayoptions vrayOptions��  ��   .  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 ' ! Get the current BBEdit file name    9 � : : B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e 7  ; < ; l     �� = >��   =  tell application "BBEdit"    > � ? ? 2 t e l l   a p p l i c a t i o n   " B B E d i t " <  @ A @ l    B���� B O     C D C r     E F E e     G G n     H I H m    ��
�� 
file I 4   �� J
�� 
docu J m    ����  F o      ���� 0 
bbeditfile 
BBeditFile D m     K K�                                                                                  !Rch  alis    T  PineHD                     �JWWH+     TTextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R       T  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   A  L M L l     ��������  ��  ��   M  N O N l   " P���� P r    " Q R Q n      S T S 1     ��
�� 
strq T l    U���� U n     V W V 1    ��
�� 
psxp W l    X���� X o    ���� 0 
bbeditfile 
BBeditFile��  ��  ��  ��   R o      ���� 0 vrayfile vrayFile��  ��   O  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] 8 2 Define the Vray Standalone command line arguments    ^ � _ _ d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s \  ` a ` l  # * b���� b r   # * c d c b   # ( e f e b   # & g h g m   # $ i i � j j    - s c e n e F i l e = h o   $ %���� 0 vrayfile vrayFile f o   & '���� 0 vrayoptions vrayOptions d o      ���� 0 vrayoptions vrayOptions��  ��   a  k l k l     ��������  ��  ��   l  m n m l  + 2 o���� o r   + 2 p q p b   + 0 r s r b   + . t u t o   + ,���� 0 vraypath vrayPath u o   , -���� 0 vrayoptions vrayOptions s m   . / v v � w w &   >   / d e v / n u l l   2 > & 1   & q o      ���� 0 command  ��  ��   n  x y x l  3 : z���� z r   3 : { | { I  3 8�� }��
�� .sysoexecTEXT���     TEXT } o   3 4���� 0 command  ��   | 1      ��
�� 
rslt��  ��   y  ~  ~ l     �� � ���   �  display alert result    � � � � ( d i s p l a y   a l e r t   r e s u l t   � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     : � �   � �  - � �  @ � �  N � �  ` � �  m � �  x����  ��  ��   �   �  $������ 2�� K�������� i v������
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
rslt�� ;��,�,E�O�E�O� *�k/�,EE�UO��,�,E�O��%�%E�O��%�%E�O�j E�ascr  ��ޭ