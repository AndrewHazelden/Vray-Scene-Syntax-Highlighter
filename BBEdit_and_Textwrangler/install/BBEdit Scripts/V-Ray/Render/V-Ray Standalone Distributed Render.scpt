FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' V-Ray Standalone Distributed Rendering     � 	 	 N   V - R a y   S t a n d a l o n e   D i s t r i b u t e d   R e n d e r i n g   
  
 l     ��  ��    N H Take the currently open VRSCENE file and render it in V-Ray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V - R a y   S t a n d a l o n e        l     ��  ��      2016-12-18 2.49 AM     �   &   2 0 1 6 - 1 2 - 1 8   2 . 4 9   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l    2���� 2 r     3 4 3 n     5 6 5 1   	 ��
�� 
psxp 6 m    	 7 7 � 8 8 F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t 4 o      ���� 0 vrayerrorpath vrayErrorPath��  ��   1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 6 0 Make sure the log file exists to avoid an error    > � ? ? `   M a k e   s u r e   t h e   l o g   f i l e   e x i s t s   t o   a v o i d   a n   e r r o r <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H  t o u c h   F n     I J I 1    ��
�� 
strq J n     K L K 1    ��
�� 
psxp L o    ���� 0 vrayerrorpath vrayErrorPath D o      ���� 0 command  ��  ��   A  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q > 8 Define the Vray Distributed Rendering hosts and ports.     R � S S p   D e f i n e   t h e   V r a y   D i s t r i b u t e d   R e n d e r i n g   h o s t s   a n d   p o r t s .   P  T U T l     �� V W��   V � � Each Vray Standalone host system is separated with a semicolorn The hosts are defined like either "Host1;Host2", or with the host name and a custom port using "Hosts1:20221;Host2:20222"    W � X Xt   E a c h   V r a y   S t a n d a l o n e   h o s t   s y s t e m   i s   s e p a r a t e d   w i t h   a   s e m i c o l o r n   T h e   h o s t s   a r e   d e f i n e d   l i k e   e i t h e r   " H o s t 1 ; H o s t 2 " ,   o r   w i t h   t h e   h o s t   n a m e   a n d   a   c u s t o m   p o r t   u s i n g   " H o s t s 1 : 2 0 2 2 1 ; H o s t 2 : 2 0 2 2 2 " U  Y Z Y l     �� [ \��   [    set vrayRenderHosts to ""    \ � ] ] 4   s e t   v r a y R e n d e r H o s t s   t o   " " Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b � � This example is for an AMD Opteron 4 Socket 64 Core NUMA based system named "Tamarack" running with 8 Vray Standalone instances on ports 20221-20228    c � d d*   T h i s   e x a m p l e   i s   f o r   a n   A M D   O p t e r o n   4   S o c k e t   6 4   C o r e   N U M A   b a s e d   s y s t e m   n a m e d   " T a m a r a c k "   r u n n i n g   w i t h   8   V r a y   S t a n d a l o n e   i n s t a n c e s   o n   p o r t s   2 0 2 2 1 - 2 0 2 2 8 a  e f e l     �� g h��   g � � set vrayRenderHosts to "Tamarack:20221;Tamarack:20222;Tamarack:20223;Tamarack:20224;Tamarack:20225;Tamarack:20226;Tamarack:20227;Tamarack:20228;"    h � i i$   s e t   v r a y R e n d e r H o s t s   t o   " T a m a r a c k : 2 0 2 2 1 ; T a m a r a c k : 2 0 2 2 2 ; T a m a r a c k : 2 0 2 2 3 ; T a m a r a c k : 2 0 2 2 4 ; T a m a r a c k : 2 0 2 2 5 ; T a m a r a c k : 2 0 2 2 6 ; T a m a r a c k : 2 0 2 2 7 ; T a m a r a c k : 2 0 2 2 8 ; " f  j k j l    l���� l r     m n m m     o o � p p  T a m a r a c k : 2 0 2 2 1 n o      ���� "0 vrayrenderhosts vrayRenderHosts��  ��   k  q r q l     ��������  ��  ��   r  s t s l     �� u v��   u 8 2 Define the Vray Standalone command line arguments    v � w w d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s t  x y x l   % z���� z r    % { | { b    # } ~ } b    !  �  b     � � � m     � � � � �    - d i s t r i b u t e d = 2 � m     � � � � �    - r e n d e r h o s t = " � o     ���� "0 vrayrenderhosts vrayRenderHosts ~ m   ! " � � � � � � "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1 | o      ���� 0 vrayoptions vrayOptions��  ��   y  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Override Vray parameters with custom values    � � � � X   O v e r r i d e   V r a y   p a r a m e t e r s   w i t h   c u s t o m   v a l u e s �  � � � l  & ) ����� � r   & ) � � � m   & ' � � � � �   � o      ���� $0 vrayextraoptions vrayExtraOptions��  ��   �  � � � l     �� � ���   �y set vrayExtraOptions to " -parameterOverride=\"SettingsRegionsGenerator::xc=48\" -parameterOverride=\"SettingsRegionsGenerator::yc=48\" -parameterOverride=\"SettingsRegionsGenerator::xymeans=0\" -parameterOverride=\"SettingsRegionsGenerator::seqtype=3\" -parameterOverride=\"SettingsRegionsGenerator::reverse=0\" -parameterOverride=\"SettingsRegionsGenerator::dynbuckets=1\" "    � � � ��   s e t   v r a y E x t r a O p t i o n s   t o   "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 \ "   " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Get the current BBEdit file name    � � � � B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e �  � � � l  * � ����� � O   * � � � � k   0 � � �  � � � l  0 0�� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  ��� � Q   0 � � � � � k   3 N � �  � � � r   3 B � � � e   3 > � � n   3 > � � � m   9 =��
�� 
file � 4  3 9�� �
�� 
docu � m   7 8����  � o      ���� 0 vrayeditfile vrayEditFile �  ��� � r   C N � � � n   C J � � � 1   H J��
�� 
strq � l  C H ����� � n   C H � � � 1   F H��
�� 
psxp � l  C F ����� � o   C F���� 0 vrayeditfile vrayEditFile��  ��  ��  ��   � o      ���� 0 vrayfile vrayFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   V � � �  � � � r   V ] � � � m   V Y � � � � � � Y o u   n e e d   t o   h a v e   a   . v r s c e n e   s c e n e   f i l e   o p e n   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! � o      ���� 0 errormessage errorMessage �  � � � I  ^ }�� � �
�� .sysodlogaskr        TEXT � l  ^ a ����� � o   ^ a���� 0 errormessage errorMessage��  ��   � �� � �
�� 
btns � J   d i � �  ��� � m   d g � � � � �  O K��   � �� � �
�� 
dflt � m   l m����  � �� � �
�� 
disp � m   p q����  � �� ���
�� 
givu � m   t w���� 
��   �  ��� � L   ~ �����  ��  ��   � m   * - � ��                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  � � ����� � r   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �    - s c e n e F i l e = � o   � ����� 0 vrayfile vrayFile � o   � ����� 0 vrayoptions vrayOptions � o   � ����� $0 vrayextraoptions vrayExtraOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     �� � ���   � D > set command to vrayPath & vrayOptions & " > /dev/null 2>&1 &"    � � � � |   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   / d e v / n u l l   2 > & 1   & " �  � � � l     �� � ���   � k e set command to vrayPath & vrayOptions & " > " & quoted form of POSIX path of vrayErrorPath & " 2>&1"    � � � � �   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   v r a y E r r o r P a t h   &   "   2 > & 1 " �  � � � l  � � ����� � r   � � � � � b   � �   b   � � b   � � b   � � o   � ����� 0 vraypath vrayPath o   � ����� 0 vrayoptions vrayOptions m   � � �		    >   n   � �

 1   � ���
�� 
strq n   � � 1   � ���
�� 
psxp o   � ����� 0 vrayerrorpath vrayErrorPath m   � � �    2 > & 1   & � o      ���� 0 command  ��  ��   �  l     ��������  ��  ��    l     ����     display alert command    � ,   d i s p l a y   a l e r t   c o m m a n d  l  � ����� r   � � I  � �����
�� .sysoexecTEXT���     TEXT o   � ����� 0 command  ��   1      �
� 
rslt��  ��    l     �~ �~     display alert result     �!! *   d i s p l a y   a l e r t   r e s u l t "#" l     �}�|�{�}  �|  �{  # $%$ l     �z&'�z  & 1 + Display the console standard output result   ' �(( V   D i s p l a y   t h e   c o n s o l e   s t a n d a r d   o u t p u t   r e s u l t% )*) l  �+�y�x+ O   �,-, k   �.. /0/ l  � ��w12�w  1 &   tell application "TextWrangler"   2 �33 @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r "0 454 I  � ��v�u�t
�v .miscactvnull��� ��� obj �u  �t  5 6�s6 Q   �7897 k   � �:: ;<; I  � ��r=>
�r .aevtodocnull  �    alis= J   � �?? @�q@ 4   � ��pA
�p 
psxfA o   � ��o�o 0 vrayerrorpath vrayErrorPath�q  > �nB�m
�n 
LFtxB m   � ��l
�l boovtrue�m  < C�kC I  � ��jD�i
�j .R*chNLE TEXT        obj D n   � �EFE 4   � ��hG
�h 
ctxtG m   � ��g�g F 4   � ��fH
�f 
TxtDH m   � ��e�e �i  �k  8 R      �d�c�b
�d .ascrerr ****      � ****�c  �b  9 k   �II JKJ r   � �LML m   � �NN �OO � T h e   V - R a y   o u t p u t   i s   m i s s i n g .   P l e a s e   e d i t   t h i s   A p p l e   S c r i p t   t o   c u s t o m i z e   y o u r   c u r r e n t   V - R a y   p r o g r a m   p a t h .M o      �a�a 0 errormessage errorMessageK P�`P I  ��_QR
�_ .sysodlogaskr        TEXTQ l  � �S�^�]S o   � ��\�\ 0 errormessage errorMessage�^  �]  R �[TU
�[ 
btnsT J   � �VV W�ZW m   � �XX �YY  O K�Z  U �YZ[
�Y 
dfltZ m   � ��X�X [ �W\]
�W 
disp\ m   � �V�V ] �U^�T
�U 
givu^ m  �S�S 
�T  �`  �s  - m   � �__�                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  �y  �x  * `a` l     �R�Q�P�R  �Q  �P  a b�Ob l     �N�M�L�N  �M  �L  �O       �Kcd�K  c �J
�J .aevtoappnull  �   � ****d �Ie�H�Gfg�F
�I .aevtoappnull  �   � ****e k    hh  ii  0jj  @kk  jll  xmm  �nn  �oo  �pp  �qq rr )�E�E  �H  �G  f  g / $�D�C�B 7�A G�@ o�? � � ��> ��= ��<�;�:�9�8�7 ��6�5 ��4�3�2�1�0�/ ��.�-�,�+�*�)�(�'�&NX
�D 
psxp
�C 
strq�B 0 vraypath vrayPath�A 0 vrayerrorpath vrayErrorPath�@ 0 command  �? "0 vrayrenderhosts vrayRenderHosts�> 0 vrayoptions vrayOptions�= $0 vrayextraoptions vrayExtraOptions
�< 
docu
�; 
file�: 0 vrayeditfile vrayEditFile�9 0 vrayfile vrayFile�8  �7  �6 0 errormessage errorMessage
�5 
btns
�4 
dflt
�3 
disp
�2 
givu�1 
�0 
�/ .sysodlogaskr        TEXT
�. .sysoexecTEXT���     TEXT
�- 
rslt
�, .miscactvnull��� ��� obj 
�+ 
psxf
�* 
LFtx
�) .aevtodocnull  �    alis
�( 
TxtD
�' 
ctxt
�& .R*chNLE TEXT        obj �F��,�,E�O��,E�O���,�,%E�O�E�O��%�%�%E�O�E�Oa  R  *a k/a ,EE` O_ �,�,E` W 1X  a E` O_ a a kva ka ka a a   OhUOa !_ %�%�%E�O��%a "%��,�,%a #%E�O�j $E` %Oa  Z*j &O %*a '�/kva (el )O*a *k/a +k/j ,W .X  a -E` O_ a a .kva ka ka a a   Uascr  ��ޭ