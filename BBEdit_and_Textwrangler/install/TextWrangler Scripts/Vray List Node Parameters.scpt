FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Vray List Node Parameters     � 	 	 4   V r a y   L i s t   N o d e   P a r a m e t e r s   
  
 l     ��  ��      2016-11-19 7.54 AM      �   (   2 0 1 6 - 1 1 - 1 9   7 . 5 4   A M        l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     d / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / p l g p a r a m s  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % 7 1 Read the current node name selection from BBEdit    & � ' ' b   R e a d   t h e   c u r r e n t   n o d e   n a m e   s e l e c t i o n   f r o m   B B E d i t $  ( ) ( l     �� * +��   *    tell application "BBEdit"    + � , , 4   t e l l   a p p l i c a t i o n   " B B E d i t " )  - . - l    /���� / O     0 1 0 r     2 3 2 c     4 5 4 1    ��
�� 
pusl 5 m    ��
�� 
ctxt 3 o      ���� 0 vraynode vrayNode 1 m    	 6 6�                                                                                  !Rch  alis    T  PineHD                     �JWWH+     TTextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R       T  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   .  7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; 8 2 Define the Vray Standalone command line arguments    < � = = d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s :  > ? > l    @���� @ r     A B A b     C D C m     E E � F F    - i n f o   D o    ���� 0 vraynode vrayNode B o      ���� 0 vrayoptions vrayOptions��  ��   ?  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K , & set command to vrayPath & vrayOptions    L � M M L   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s J  N O N l     P���� P r      Q R Q b     S T S o    ���� 0 vraypath vrayPath T o    ���� 0 vrayoptions vrayOptions R o      ���� 0 command  ��  ��   O  U V U l  ! ( W���� W r   ! ( X Y X I  ! &�� Z��
�� .sysoexecTEXT���     TEXT Z o   ! "���� 0 command  ��   Y o      ���� 
0 output  ��  ��   V  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _   Target a Worksheet    ` � a a &   T a r g e t   a   W o r k s h e e t ^  b c b l     �� d e��   d  tell application "BBEdit"    e � f f 2 t e l l   a p p l i c a t i o n   " B B E d i t " c  g h g l     �� i j��   i ' !	set uws to Unix worksheet window    j � k k B 	 s e t   u w s   t o   U n i x   w o r k s h e e t   w i n d o w h  l m l l     �� n o��   n  		tell uws    o � p p  	 t e l l   u w s m  q r q l     �� s t��   s 3 -		select insertion point after last character    t � u u Z 	 	 s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r r  v w v l     �� x y��   x 0 *		set selection to command & "\n" & output    y � z z T 	 	 s e t   s e l e c t i o n   t o   c o m m a n d   &   " \ n "   &   o u t p u t w  { | { l     �� } ~��   }  		end tell    ~ �    	 e n d   t e l l |  � � � l     �� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target an new document    � � � � .   T a r g e t   a n   n e w   d o c u m e n t �  � � � l     �� � ���   �    tell application "BBEdit"    � � � � 4   t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l  ) R ����� � O   ) R � � � k   - Q � �  � � � I  - 2������
�� .miscactvnull��� ��� obj ��  ��   �  � � � I  3 E���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   5 6��
�� 
TxtD � �� ���
�� 
insh � 4   9 ?�� �
�� 
GrpW � m   = >���� ��   �  � � � l  F F�� � ���   � 1 +select insertion point after last character    � � � � V s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r �  ��� � r   F Q � � � b   F M � � � b   F K � � � o   F G���� 0 command   � m   G J � � � � �   � o   K L���� 
0 output   � 1   M P��
�� 
pusl��   � m   ) * � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+     TTextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R       T  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     R � �   � �  - � �  > � �  N � �  U � �  �����  ��  ��   �   �  ������ 6������ E���������������������� �
�� 
psxp
�� 
strq�� 0 vraypath vrayPath
�� 
pusl
�� 
ctxt�� 0 vraynode vrayNode�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT�� 
0 output  
�� .miscactvnull��� ��� obj 
�� 
kocl
�� 
TxtD
�� 
insh
�� 
GrpW�� 
�� .corecrel****      � null�� S��,�,E�O� 	*�,�&E�UO��%E�O��%E�O�j E�O� &*j O*��a *a k/a  O�a %�%*�,FU ascr  ��ޭ