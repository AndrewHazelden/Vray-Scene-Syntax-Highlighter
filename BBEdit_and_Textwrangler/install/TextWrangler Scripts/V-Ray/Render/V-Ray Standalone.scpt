FasdUAS 1.101.10   ��   ��    k             l     ��  ��      V-Ray Standalone Render     � 	 	 0   V - R a y   S t a n d a l o n e   R e n d e r   
  
 l     ��  ��    [ U Take the currently open TextWrangler VRSCENE file and render it in V-Ray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   T e x t W r a n g l e r   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V - R a y   S t a n d a l o n e        l     ��  ��      2016-12-17 9.57 AM     �   &   2 0 1 6 - 1 2 - 1 7   9 . 5 7   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 8 2 Define the Vray Standalone command line arguments    5 � 6 6 d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s 3  7 8 7 l    9���� 9 r     : ; : m    	 < < � = =   ; o      ���� 0 vrayoptions vrayOptions��  ��   8  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B ' ! Get the current BBEdit file name    C � D D B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e A  E F E l     �� G H��   G    tell application "BBEdit"    H � I I 4   t e l l   a p p l i c a t i o n   " B B E d i t " F  J K J l   O L���� L O    O M N M Q    N O P Q O k    $ R R  S T S r     U V U e     W W n     X Y X m    ��
�� 
file Y 4   �� Z
�� 
docu Z m    ����  V o      ���� 0 vrayeditfile vrayEditFile T  [�� [ r    $ \ ] \ n    " ^ _ ^ 1     "��
�� 
strq _ l     `���� ` n      a b a 1     ��
�� 
psxp b l    c���� c o    ���� 0 vrayeditfile vrayEditFile��  ��  ��  ��   ] o      ���� 0 vrayfile vrayFile��   P R      ������
�� .ascrerr ****      � ****��  ��   Q k   , N d d  e f e r   , / g h g m   , - i i � j j � Y o u   n e e d   t o   h a v e   a   . v r s c e n e   s c e n e   f i l e   o p e n   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! h o      ���� 0 errormessage errorMessage f  k l k I  0 K�� m n
�� .sysodlogaskr        TEXT m l  0 1 o���� o o   0 1���� 0 errormessage errorMessage��  ��   n �� p q
�� 
btns p J   2 7 r r  s�� s m   2 5 t t � u u  O K��   q �� v w
�� 
dflt v m   : ;����  w �� x y
�� 
disp x m   > ?����  y �� z��
�� 
givu z m   B E���� 
��   l  {�� { L   L N����  ��   N m     | |�                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   K  } ~ } l     ��������  ��  ��   ~   �  l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  P Y ����� � r   P Y � � � b   P W � � � b   P U � � � m   P S � � � � �    - s c e n e F i l e = � o   S T���� 0 vrayfile vrayFile � o   U V���� 0 vrayoptions vrayOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l  Z e ����� � r   Z e � � � b   Z a � � � b   Z ] � � � o   Z [���� 0 vraypath vrayPath � o   [ \���� 0 vrayoptions vrayOptions � m   ] ` � � � � � &   >   / d e v / n u l l   2 > & 1   & � o      ���� 0 command  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   display alert command    � � � � ,   d i s p l a y   a l e r t   c o m m a n d �  � � � l  f q ����� � r   f q � � � I  f m�� ���
�� .sysoexecTEXT���     TEXT � o   f i���� 0 command  ��   � 1      ��
�� 
rslt��  ��   �  � � � l     �� � ���   �   display alert result    � � � � *   d i s p l a y   a l e r t   r e s u l t �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     q � �   � �  7 � �  J � �  � � �  � � �  �����  ��  ��   �   �  $������ <�� |������������ i���� t������������ � �������
�� 
psxp
�� 
strq�� 0 vraypath vrayPath�� 0 vrayoptions vrayOptions
�� 
docu
�� 
file�� 0 vrayeditfile vrayEditFile�� 0 vrayfile vrayFile��  ��  �� 0 errormessage errorMessage
�� 
btns
�� 
dflt
�� 
disp
�� 
givu�� 
�� 
�� .sysodlogaskr        TEXT�� 0 command  
�� .sysoexecTEXT���     TEXT
�� 
rslt�� r��,�,E�O�E�O� @ *�k/�,EE�O��,�,E�W )X  �E�O��a kva ka ka a a  OhUOa �%�%E�O��%a %E` O_ j E` ascr  ��ޭ