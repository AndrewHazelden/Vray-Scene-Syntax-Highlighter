FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Vray Standalone Help     � 	 	 *   V r a y   S t a n d a l o n e   H e l p   
  
 l     ��  ��      2016-11-19 7.54 AM      �   (   2 0 1 6 - 1 1 - 1 9   7 . 5 4   A M        l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     �� # $��   # e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    $ � % % �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " "  & ' & l     �� ( )��   ( c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2015/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 5 / v r a y / b i n / v r a y " '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / 8 2 Define the Vray Standalone command line arguments    0 � 1 1 d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s .  2 3 2 l    4���� 4 r     5 6 5 m    	 7 7 � 8 8    - h e l p 6 o      ���� 0 vrayoptions vrayOptions��  ��   3  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = , & set command to vrayPath & vrayOptions    > � ? ? L   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s <  @ A @ l    B���� B r     C D C b     E F E o    ���� 0 vraypath vrayPath F o    ���� 0 vrayoptions vrayOptions D o      ���� 0 command  ��  ��   A  G H G l    I���� I r     J K J I   �� L��
�� .sysoexecTEXT���     TEXT L o    ���� 0 command  ��   K o      ���� 
0 output  ��  ��   H  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q   Target a Worksheet    R � S S &   T a r g e t   a   W o r k s h e e t P  T U T l     �� V W��   V  tell application "BBEdit"    W � X X 2 t e l l   a p p l i c a t i o n   " B B E d i t " U  Y Z Y l     �� [ \��   [ ' !	set uws to Unix worksheet window    \ � ] ] B 	 s e t   u w s   t o   U n i x   w o r k s h e e t   w i n d o w Z  ^ _ ^ l     �� ` a��   `  		tell uws    a � b b  	 t e l l   u w s _  c d c l     �� e f��   e 3 -		select insertion point after last character    f � g g Z 	 	 s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r d  h i h l     �� j k��   j 0 *		set selection to command & "\n" & output    k � l l T 	 	 s e t   s e l e c t i o n   t o   c o m m a n d   &   " \ n "   &   o u t p u t i  m n m l     �� o p��   o  		end tell    p � q q  	 e n d   t e l l n  r s r l     �� t u��   t  end tell    u � v v  e n d   t e l l s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   Target an new document    | � } } .   T a r g e t   a n   n e w   d o c u m e n t z  ~  ~ l   6 ����� � O    6 � � � k    5 � �  � � � l   �� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  � � � I   #������
�� .miscactvnull��� ��� obj ��  ��   �  � � � I  $ +���� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   & '��
�� 
TxtD��   �  � � � l  , ,�� � ���   � 1 + make new text document at project window 1    � � � � V   m a k e   n e w   t e x t   d o c u m e n t   a t   p r o j e c t   w i n d o w   1 �  � � � l  , ,�� � ���   � 1 +select insertion point after last character    � � � � V s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r �  ��� � r   , 5 � � � b   , 1 � � � b   , / � � � o   , -���� 0 command   � m   - . � � � � �   � o   / 0���� 
0 output   � 1   1 4��
�� 
pusl��   � m     � ��                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      �+� :�        ����  	                Applications    �J��      � d�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��     ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     6 � �   � �  2 � �  @ � �  G � �  ~����  ��  ��   �   �  ������ 7�������� ��������� ���
�� 
psxp
�� 
strq�� 0 vraypath vrayPath�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT�� 
0 output  
�� .miscactvnull��� ��� obj 
�� 
kocl
�� 
TxtD
�� .corecrel****      � null
�� 
pusl�� 7��,�,E�O�E�O��%E�O�j E�O� *j 
O*��l O��%�%*�,FU ascr  ��ޭ