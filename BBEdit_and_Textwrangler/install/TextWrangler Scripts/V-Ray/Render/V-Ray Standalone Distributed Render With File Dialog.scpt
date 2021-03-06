FasdUAS 1.101.10   ��   ��    k             l     ��  ��    > 8 V-Ray Standalone Distributed Rendering With File Dialog     � 	 	 p   V - R a y   S t a n d a l o n e   D i s t r i b u t e d   R e n d e r i n g   W i t h   F i l e   D i a l o g   
  
 l     ��  ��    U O Open a file dialog and then render a selected VRSCENE file from your hard disk     �   �   O p e n   a   f i l e   d i a l o g   a n d   t h e n   r e n d e r   a   s e l e c t e d   V R S C E N E   f i l e   f r o m   y o u r   h a r d   d i s k      l     ��  ��      2016-12-18 4.10 AM     �   &   2 0 1 6 - 1 2 - 1 8   4 . 1 0   A M      l     ��������  ��  ��        l     ��  ��    = 7 VFB Framebuffer Settings = Frame stamp: %rendertime |      �   n   V F B   F r a m e b u f f e r   S e t t i n g s   =   F r a m e   s t a m p :   % r e n d e r t i m e   |        l     ��������  ��  ��        l     ��   ��    < 6 Choose where the Vray Standalone program is installed      � ! ! l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d   " # " l     $���� $ r      % & % n      ' ( ' 1    ��
�� 
strq ( n      ) * ) 1    ��
�� 
psxp * m      + + � , , Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y & o      ���� 0 vraypath vrayPath��  ��   #  - . - l     �� / 0��   / e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    0 � 1 1 �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " .  2 3 2 l     �� 4 5��   4 c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    5 � 6 6 �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " 3  7 8 7 l    9���� 9 r     : ; : n     < = < 1   	 ��
�� 
psxp = m    	 > > � ? ? F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t ; o      ���� 0 vrayerrorpath vrayErrorPath��  ��   8  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D 6 0 Make sure the log file exists to avoid an error    E � F F `   M a k e   s u r e   t h e   l o g   f i l e   e x i s t s   t o   a v o i d   a n   e r r o r C  G H G l    I���� I r     J K J b     L M L m     N N � O O  t o u c h   M n     P Q P 1    ��
�� 
strq Q n     R S R 1    ��
�� 
psxp S o    ���� 0 vrayerrorpath vrayErrorPath K o      ���� 0 command  ��  ��   H  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X > 8 Define the Vray Distributed Rendering hosts and ports.     Y � Z Z p   D e f i n e   t h e   V r a y   D i s t r i b u t e d   R e n d e r i n g   h o s t s   a n d   p o r t s .   W  [ \ [ l     �� ] ^��   ] � � Each Vray Standalone host system is separated with a semicolorn The hosts are defined like either "Host1;Host2", or with the host name and a custom port using "Hosts1:20221;Host2:20222"    ^ � _ _t   E a c h   V r a y   S t a n d a l o n e   h o s t   s y s t e m   i s   s e p a r a t e d   w i t h   a   s e m i c o l o r n   T h e   h o s t s   a r e   d e f i n e d   l i k e   e i t h e r   " H o s t 1 ; H o s t 2 " ,   o r   w i t h   t h e   h o s t   n a m e   a n d   a   c u s t o m   p o r t   u s i n g   " H o s t s 1 : 2 0 2 2 1 ; H o s t 2 : 2 0 2 2 2 " \  ` a ` l     �� b c��   b    set vrayRenderHosts to ""    c � d d 4   s e t   v r a y R e n d e r H o s t s   t o   " " a  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i � � This example is for an AMD Opteron 4 Socket 64 Core NUMA based system named "Tamarack" running with 8 Vray Standalone instances on ports 20221-20228    j � k k*   T h i s   e x a m p l e   i s   f o r   a n   A M D   O p t e r o n   4   S o c k e t   6 4   C o r e   N U M A   b a s e d   s y s t e m   n a m e d   " T a m a r a c k "   r u n n i n g   w i t h   8   V r a y   S t a n d a l o n e   i n s t a n c e s   o n   p o r t s   2 0 2 2 1 - 2 0 2 2 8 h  l m l l     �� n o��   n � � set vrayRenderHosts to "Tamarack:20221;Tamarack:20222;Tamarack:20223;Tamarack:20224;Tamarack:20225;Tamarack:20226;Tamarack:20227;Tamarack:20228;"    o � p p$   s e t   v r a y R e n d e r H o s t s   t o   " T a m a r a c k : 2 0 2 2 1 ; T a m a r a c k : 2 0 2 2 2 ; T a m a r a c k : 2 0 2 2 3 ; T a m a r a c k : 2 0 2 2 4 ; T a m a r a c k : 2 0 2 2 5 ; T a m a r a c k : 2 0 2 2 6 ; T a m a r a c k : 2 0 2 2 7 ; T a m a r a c k : 2 0 2 2 8 ; " m  q r q l    s���� s r     t u t m     v v � w w  T a m a r a c k : 2 0 2 2 1 u o      ���� "0 vrayrenderhosts vrayRenderHosts��  ��   r  x y x l     ��������  ��  ��   y  z { z l     �� | }��   | 8 2 Define the Vray Standalone command line arguments    } � ~ ~ d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s {   �  l   % ����� � r    % � � � b    # � � � b    ! � � � b     � � � m     � � � � �    - d i s t r i b u t e d = 2 � m     � � � � �    - r e n d e r h o s t = " � o     ���� "0 vrayrenderhosts vrayRenderHosts � m   ! " � � � � � � "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1 � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Override Vray parameters with custom values    � � � � X   O v e r r i d e   V r a y   p a r a m e t e r s   w i t h   c u s t o m   v a l u e s �  � � � l     �� � ���   � !  set vrayExtraOptions to ""    � � � � 6   s e t   v r a y E x t r a O p t i o n s   t o   " " �  � � � l  & ) ����� � r   & ) � � � m   & ' � � � � ��   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 "   � o      ���� $0 vrayextraoptions vrayExtraOptions��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 0 * Get the current text editor document name    � � � � T   G e t   t h e   c u r r e n t   t e x t   e d i t o r   d o c u m e n t   n a m e �  � � � l     �� � ���   �    tell application "BBEdit"    � � � � 4   t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l  * s ����� � O   * s � � � Q   0 r � � � � r   3 @ � � � n   3 < � � � 1   : <��
�� 
strq � l  3 : ����� � n   3 : � � � 1   8 :��
�� 
psxp � l  3 8 ����� � l  3 8 ����� � I  3 8������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��  ��  ��   � o      ���� 0 vrayfile vrayFile � R      ������
�� .ascrerr ****      � ****��  ��   � k   H r � �  � � � r   H O � � � m   H K � � � � � x Y o u   n e e d   t o   s e l e c t   a   V - R a y   . v r s c e n e   f i l e   i n   t h e   f i l e   d i a l o g ! � o      ���� 0 errormessage errorMessage �  � � � I  P o�� � �
�� .sysodlogaskr        TEXT � l  P S ����� � o   P S���� 0 errormessage errorMessage��  ��   � �� � �
�� 
btns � J   V [ � �  ��� � m   V Y � � � � �  O K��   � �� � �
�� 
dflt � m   ^ _����  � �� � �
�� 
disp � m   b c����  � �� ���
�� 
givu � m   f i���� 
��   �  ��� � L   p r����  ��   � m   * - � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  t � ����� � r   t � � � � b   t  � � � b   t } � � � b   t { � � � m   t w � � � � �    - s c e n e F i l e = � o   w z���� 0 vrayfile vrayFile � o   { |���� 0 vrayoptions vrayOptions � o   } ~���� $0 vrayextraoptions vrayExtraOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     �� � ���   � D > set command to vrayPath & vrayOptions & " > /dev/null 2>&1 &"    � � � � |   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   / d e v / n u l l   2 > & 1   & " �  � � � l     �� � ���   � k e set command to vrayPath & vrayOptions & " > " & quoted form of POSIX path of vrayErrorPath & " 2>&1"    � � � � �   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   v r a y E r r o r P a t h   &   "   2 > & 1 " �  � � � l  � � ����� � r   � � � � � b   � �   b   � � b   � � b   � � o   � ����� 0 vraypath vrayPath o   � ����� 0 vrayoptions vrayOptions m   � � �		    >   n   � �

 1   � ���
�� 
strq n   � � 1   � ���
�� 
psxp o   � ����� 0 vrayerrorpath vrayErrorPath m   � � �    2 > & 1   & � o      ���� 0 command  ��  ��   �  l     ����~��  �  �~    l     �}�}     display alert command    � ,   d i s p l a y   a l e r t   c o m m a n d  l  � ��|�{ r   � � I  � ��z�y
�z .sysoexecTEXT���     TEXT o   � ��x�x 0 command  �y   1      �w
�w 
rslt�|  �{    l     �v �v     display alert result     �!! *   d i s p l a y   a l e r t   r e s u l t "#" l     �u�t�s�u  �t  �s  # $%$ l     �r�q�p�r  �q  �p  % &'& l     �o()�o  ( 1 + Display the console standard output result   ) �** V   D i s p l a y   t h e   c o n s o l e   s t a n d a r d   o u t p u t   r e s u l t' +,+ l     �n-.�n  -    tell application "BBEdit"   . �// 4   t e l l   a p p l i c a t i o n   " B B E d i t ", 010 l  � �2�m�l2 O   � �343 k   � �55 676 I  � ��k�j�i
�k .miscactvnull��� ��� obj �j  �i  7 8�h8 Q   � �9:;9 k   � �<< =>= I  � ��g?@
�g .aevtodocnull  �    alis? J   � �AA B�fB 4   � ��eC
�e 
psxfC o   � ��d�d 0 vrayerrorpath vrayErrorPath�f  @ �cD�b
�c 
LFtxD m   � ��a
�a boovtrue�b  > E�`E I  � ��_F�^
�_ .R*chNLE TEXT        obj F n   � �GHG 4   � ��]I
�] 
ctxtI m   � ��\�\ H 4   � ��[J
�[ 
TxtDJ m   � ��Z�Z �^  �`  : R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  ; k   � �KK LML r   � �NON m   � �PP �QQ � T h e   V - R a y   o u t p u t   i s   m i s s i n g .   P l e a s e   e d i t   t h i s   A p p l e   S c r i p t   t o   c u s t o m i z e   y o u r   c u r r e n t   V - R a y   p r o g r a m   p a t h .O o      �V�V 0 errormessage errorMessageM R�UR I  � ��TST
�T .sysodlogaskr        TEXTS l  � �U�S�RU o   � ��Q�Q 0 errormessage errorMessage�S  �R  T �PVW
�P 
btnsV J   � �XX Y�OY m   � �ZZ �[[  O K�O  W �N\]
�N 
dflt\ m   � ��M�M ] �L^_
�L 
disp^ m   � ��K�K _ �J`�I
�J 
givu` m   � ��H�H 
�I  �U  �h  4 m   � �aa�                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  �m  �l  1 bcb l     �G�F�E�G  �F  �E  c d�Dd l     �C�B�A�C  �B  �A  �D       
�@efghi vj �k�@  e �?�>�=�<�;�:�9�8
�? .aevtoappnull  �   � ****�> 0 vraypath vrayPath�= 0 vrayerrorpath vrayErrorPath�< 0 command  �; "0 vrayrenderhosts vrayRenderHosts�: 0 vrayoptions vrayOptions�9 $0 vrayextraoptions vrayExtraOptions�8 0 vrayfile vrayFilef �7l�6�5mn�4
�7 .aevtoappnull  �   � ****l k     �oo  "pp  7qq  Grr  qss  tt  �uu  �vv  �ww  �xx yy 0�3�3  �6  �5  m  n - +�2�1�0 >�/ N�. v�- � � ��, ��+ ��*�)�(�' ��&�% ��$�#�"�!� � ����������PZ
�2 
psxp
�1 
strq�0 0 vraypath vrayPath�/ 0 vrayerrorpath vrayErrorPath�. 0 command  �- "0 vrayrenderhosts vrayRenderHosts�, 0 vrayoptions vrayOptions�+ $0 vrayextraoptions vrayExtraOptions
�* .sysostdfalis    ��� null�) 0 vrayfile vrayFile�(  �'  �& 0 errormessage errorMessage
�% 
btns
�$ 
dflt
�# 
disp
�" 
givu�! 
�  
� .sysodlogaskr        TEXT
� .sysoexecTEXT���     TEXT
� 
rslt
� .miscactvnull��� ��� obj 
� 
psxf
� 
LFtx
� .aevtodocnull  �    alis
� 
TxtD
� 
ctxt
� .R*chNLE TEXT        obj �4 ��,�,E�O��,E�O���,�,%E�O�E�O��%�%�%E�O�E�Oa  D *j �,�,E` W 1X  a E` O_ a a kva ka ka a a  OhUOa _ %�%�%E�O��%a  %��,�,%a !%E�O�j "E` #Oa  Z*j $O %*a %�/kva &el 'O*a (k/a )k/j *W .X  a +E` O_ a a ,kva ka ka a a  Ug �zz ^ ' / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y 'h �{{ F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x ti �||  ' / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y '   - s c e n e F i l e = ' / V o l u m e s / M e d i a / M a y a / V r a y / 3   N e s t e d   D i e l e c t r i c   G l a s s   C u p s . v r s c e n e '   - d i s t r i b u t e d = 2   - r e n d e r h o s t = " T a m a r a c k : 2 0 2 2 1 "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 "     >   ' / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t '   2 > & 1   &j �}}d   - s c e n e F i l e = ' / V o l u m e s / M e d i a / M a y a / V r a y / 3   N e s t e d   D i e l e c t r i c   G l a s s   C u p s . v r s c e n e '   - d i s t r i b u t e d = 2   - r e n d e r h o s t = " T a m a r a c k : 2 0 2 2 1 "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 "   - p a r a m e t e r O v e r r i d e = " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 "  k �~~ � ' / V o l u m e s / M e d i a / M a y a / V r a y / 3   N e s t e d   D i e l e c t r i c   G l a s s   C u p s . v r s c e n e 'ascr  ��ޭ