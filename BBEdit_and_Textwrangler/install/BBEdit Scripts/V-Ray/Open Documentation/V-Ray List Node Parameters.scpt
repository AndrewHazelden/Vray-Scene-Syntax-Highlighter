FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Vray List Node Parameters     � 	 	 4   V r a y   L i s t   N o d e   P a r a m e t e r s   
  
 l     ��  ��      2016-12-17 10.17 AM     �   (   2 0 1 6 - 1 2 - 1 7   1 0 . 1 7   A M      l     ��������  ��  ��        l     ��  ��    1 + Choose where the Vray program is installed     �   V   C h o o s e   w h e r e   t h e   V r a y   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     d / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / p l g p a r a m s  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     �� # $��   # j d set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/plgparams"    $ � % % �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / p l g p a r a m s " "  & ' & l     �� ( )��   ( h b set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/plgparams"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / p l g p a r a m s " '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / 7 1 Read the current node name selection from BBEdit    0 � 1 1 b   R e a d   t h e   c u r r e n t   n o d e   n a m e   s e l e c t i o n   f r o m   B B E d i t .  2 3 2 l   ; 4���� 4 O    ; 5 6 5 k    : 7 7  8 9 8 l   �� : ;��   : &   tell application "TextWrangler"    ; � < < @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " 9  =�� = Q    : > ? @ > r     A B A c     C D C 1    ��
�� 
pusl D m    ��
�� 
ctxt B o      ���� 0 vraynode vrayNode ? R      ������
�� .ascrerr ****      � ****��  ��   @ k    : E E  F G F r    ! H I H m     J J � K K � Y o u   n e e d   t o   h a v e   a   V - R a y   s h a d e r   n a m e   s e l e c t e d   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! I o      ���� 0 errormessage errorMessage G  L M L I  " 7�� N O
�� .sysodlogaskr        TEXT N l  " # P���� P o   " #���� 0 errormessage errorMessage��  ��   O �� Q R
�� 
btns Q J   $ ' S S  T�� T m   $ % U U � V V  O K��   R �� W X
�� 
dflt W m   ( )����  X �� Y Z
�� 
disp Y m   * +����  Z �� [��
�� 
givu [ m   . 1���� 
��   M  \�� \ L   8 :����  ��  ��   6 m    	 ] ]�                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   3  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b - ' Define the Vray command line arguments    c � d d N   D e f i n e   t h e   V r a y   c o m m a n d   l i n e   a r g u m e n t s a  e f e l  < E g���� g r   < E h i h b   < A j k j m   < ? l l � m m    - i n f o   k o   ? @���� 0 vraynode vrayNode i o      ���� 0 vrayoptions vrayOptions��  ��   f  n o n l     ��������  ��  ��   o  p q p l     �� r s��   r , & set command to vrayPath & vrayOptions    s � t t L   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s q  u v u l  F O w���� w r   F O x y x b   F K z { z o   F G���� 0 vraypath vrayPath { o   G J���� 0 vrayoptions vrayOptions y o      ���� 0 command  ��  ��   v  | } | l  P [ ~���� ~ r   P [  �  I  P W�� ���
�� .sysoexecTEXT���     TEXT � o   P S���� 0 command  ��   � o      ���� 
0 output  ��  ��   }  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target a Worksheet    � � � � &   T a r g e t   a   W o r k s h e e t �  � � � l     �� � ���   �  tell application "BBEdit"    � � � � 2 t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l     �� � ���   � ' !	set uws to Unix worksheet window    � � � � B 	 s e t   u w s   t o   U n i x   w o r k s h e e t   w i n d o w �  � � � l     �� � ���   �  		tell uws    � � � �  	 t e l l   u w s �  � � � l     �� � ���   � 3 -		select insertion point after last character    � � � � Z 	 	 s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r �  � � � l     �� � ���   � 0 *		set selection to command & "\n" & output    � � � � T 	 	 s e t   s e l e c t i o n   t o   c o m m a n d   &   " \ n "   &   o u t p u t �  � � � l     �� � ���   �  		end tell    � � � �  	 e n d   t e l l �  � � � l     �� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target an new document    � � � � .   T a r g e t   a n   n e w   d o c u m e n t �  � � � l  \ � ����� � O   \ � � � � k   ` � � �  � � � l  ` `�� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  � � � I  ` e������
�� .miscactvnull��� ��� obj ��  ��   �  � � � I  f q���� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � m   j m��
�� 
TxtD��   �  � � � l  r r�� � ���   � 1 + make new text document at project window 1    � � � � V   m a k e   n e w   t e x t   d o c u m e n t   a t   p r o j e c t   w i n d o w   1 �  � � � l  r r�� � ���   � 2 , select insertion point after last character    � � � � X   s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r �  � � � r   r � � � � b   r } � � � b   r y � � � o   r u���� 0 command   � m   u x � � � � �   � o   y |���� 
0 output   � 1   } ���
�� 
pusl �  ��� � I  � ��� ���
�� .R*chNLE TEXT        obj  � n   � � � � � 4   � ��� �
�� 
ctxt � m   � �����  � 4   � ��� �
�� 
TxtD � m   � ����� ��  ��   � m   \ ] � ��                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  2 � �  e � �  u � �  | � �  �����  ��  ��   �   �  ������ ]���������� J���� U������~�}�| l�{�z�y�x�w�v�u�t ��s
�� 
psxp
�� 
strq�� 0 vraypath vrayPath
�� 
pusl
�� 
ctxt�� 0 vraynode vrayNode��  ��  �� 0 errormessage errorMessage
�� 
btns
�� 
dflt
�� 
disp
� 
givu�~ 
�} 
�| .sysodlogaskr        TEXT�{ 0 vrayoptions vrayOptions�z 0 command  
�y .sysoexecTEXT���     TEXT�x 
0 output  
�w .miscactvnull��� ��� obj 
�v 
kocl
�u 
TxtD
�t .corecrel****      � null
�s .R*chNLE TEXT        obj �� ���,�,E�O� 0 *�,�&E�W #X  	�E�O���kv�k�ka a a  OhUOa �%E` O�_ %E` O_ j E` O� 1*j O*a a l O_ a %_ %*�,FO*a k/�k/j U ascr  ��ޭ