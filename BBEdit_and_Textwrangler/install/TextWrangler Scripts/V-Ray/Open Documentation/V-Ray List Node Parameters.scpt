FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Vray List Node Parameters     � 	 	 4   V r a y   L i s t   N o d e   P a r a m e t e r s   
  
 l     ��  ��      2016-12-17 10.17 AM     �   (   2 0 1 6 - 1 2 - 1 7   1 0 . 1 7   A M      l     ��������  ��  ��        l     ��  ��    1 + Choose where the Vray program is installed     �   V   C h o o s e   w h e r e   t h e   V r a y   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     d / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / p l g p a r a m s  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     �� # $��   # j d set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/plgparams"    $ � % % �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / p l g p a r a m s " "  & ' & l     �� ( )��   ( h b set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/plgparams"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / p l g p a r a m s " '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / 7 1 Read the current node name selection from BBEdit    0 � 1 1 b   R e a d   t h e   c u r r e n t   n o d e   n a m e   s e l e c t i o n   f r o m   B B E d i t .  2 3 2 l     �� 4 5��   4    tell application "BBEdit"    5 � 6 6 4   t e l l   a p p l i c a t i o n   " B B E d i t " 3  7 8 7 l   ; 9���� 9 O    ; : ; : Q    : < = > < r     ? @ ? c     A B A 1    ��
�� 
pusl B m    ��
�� 
ctxt @ o      ���� 0 vraynode vrayNode = R      ������
�� .ascrerr ****      � ****��  ��   > k    : C C  D E D r    ! F G F m     H H � I I � Y o u   n e e d   t o   h a v e   a   V - R a y   s h a d e r   n a m e   s e l e c t e d   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! G o      ���� 0 errormessage errorMessage E  J K J I  " 7�� L M
�� .sysodlogaskr        TEXT L l  " # N���� N o   " #���� 0 errormessage errorMessage��  ��   M �� O P
�� 
btns O J   $ ' Q Q  R�� R m   $ % S S � T T  O K��   P �� U V
�� 
dflt U m   ( )����  V �� W X
�� 
disp W m   * +����  X �� Y��
�� 
givu Y m   . 1���� 
��   K  Z�� Z L   8 :����  ��   ; m    	 [ [�                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   8  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` - ' Define the Vray command line arguments    a � b b N   D e f i n e   t h e   V r a y   c o m m a n d   l i n e   a r g u m e n t s _  c d c l  < E e���� e r   < E f g f b   < A h i h m   < ? j j � k k    - i n f o   i o   ? @���� 0 vraynode vrayNode g o      ���� 0 vrayoptions vrayOptions��  ��   d  l m l l     ��������  ��  ��   m  n o n l     �� p q��   p , & set command to vrayPath & vrayOptions    q � r r L   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s o  s t s l  F O u���� u r   F O v w v b   F K x y x o   F G���� 0 vraypath vrayPath y o   G J���� 0 vrayoptions vrayOptions w o      ���� 0 command  ��  ��   t  z { z l  P [ |���� | r   P [ } ~ } I  P W�� ��
�� .sysoexecTEXT���     TEXT  o   P S���� 0 command  ��   ~ o      ���� 
0 output  ��  ��   {  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target a Worksheet    � � � � &   T a r g e t   a   W o r k s h e e t �  � � � l     �� � ���   �  tell application "BBEdit"    � � � � 2 t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l     �� � ���   � ' !	set uws to Unix worksheet window    � � � � B 	 s e t   u w s   t o   U n i x   w o r k s h e e t   w i n d o w �  � � � l     �� � ���   �  		tell uws    � � � �  	 t e l l   u w s �  � � � l     �� � ���   � 3 -		select insertion point after last character    � � � � Z 	 	 s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r �  � � � l     �� � ���   � 0 *		set selection to command & "\n" & output    � � � � T 	 	 s e t   s e l e c t i o n   t o   c o m m a n d   &   " \ n "   &   o u t p u t �  � � � l     �� � ���   �  		end tell    � � � �  	 e n d   t e l l �  � � � l     �� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target an new document    � � � � .   T a r g e t   a n   n e w   d o c u m e n t �  � � � l     �� � ���   �    tell application "BBEdit"    � � � � 4   t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l  \ � ����� � O   \ � � � � k   ` � � �  � � � I  ` e������
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
TxtD � m   � ����� ��  ��   � m   \ ] � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  7 � �  c � �  s � �  z � �  �����  ��  ��   �   �  ������ [���������� H���� S��������~�} j�|�{�z�y�x�w�v�u ��t
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
�� 
givu� 
�~ 
�} .sysodlogaskr        TEXT�| 0 vrayoptions vrayOptions�{ 0 command  
�z .sysoexecTEXT���     TEXT�y 
0 output  
�x .miscactvnull��� ��� obj 
�w 
kocl
�v 
TxtD
�u .corecrel****      � null
�t .R*chNLE TEXT        obj �� ���,�,E�O� 0 *�,�&E�W #X  	�E�O���kv�k�ka a a  OhUOa �%E` O�_ %E` O_ j E` O� 1*j O*a a l O_ a %_ %*�,FO*a k/�k/j U ascr  ��ޭ