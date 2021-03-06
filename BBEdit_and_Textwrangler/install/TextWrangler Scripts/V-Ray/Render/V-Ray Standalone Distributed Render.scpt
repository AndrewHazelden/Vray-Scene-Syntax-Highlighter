FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' V-Ray Standalone Distributed Rendering     � 	 	 N   V - R a y   S t a n d a l o n e   D i s t r i b u t e d   R e n d e r i n g   
  
 l     ��  ��    N H Take the currently open VRSCENE file and render it in V-Ray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V - R a y   S t a n d a l o n e        l     ��  ��      2016-12-18 4.18 AM     �   &   2 0 1 6 - 1 2 - 1 8   4 . 1 8   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l    2���� 2 r     3 4 3 n     5 6 5 1   	 ��
�� 
psxp 6 m    	 7 7 � 8 8 F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t 4 o      ���� 0 vrayerrorpath vrayErrorPath��  ��   1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 6 0 Make sure the log file exists to avoid an error    > � ? ? `   M a k e   s u r e   t h e   l o g   f i l e   e x i s t s   t o   a v o i d   a n   e r r o r <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H  t o u c h   F n     I J I 1    ��
�� 
strq J n     K L K 1    ��
�� 
psxp L o    ���� 0 vrayerrorpath vrayErrorPath D o      ���� 0 command  ��  ��   A  M N M l     ��������  ��  ��   N  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S > 8 Define the Vray Distributed Rendering hosts and ports.     T � U U p   D e f i n e   t h e   V r a y   D i s t r i b u t e d   R e n d e r i n g   h o s t s   a n d   p o r t s .   R  V W V l     �� X Y��   X � � Each Vray Standalone host system is separated with a semicolorn The hosts are defined like either "Host1;Host2", or with the host name and a custom port using "Hosts1:20221;Host2:20222"    Y � Z Zt   E a c h   V r a y   S t a n d a l o n e   h o s t   s y s t e m   i s   s e p a r a t e d   w i t h   a   s e m i c o l o r n   T h e   h o s t s   a r e   d e f i n e d   l i k e   e i t h e r   " H o s t 1 ; H o s t 2 " ,   o r   w i t h   t h e   h o s t   n a m e   a n d   a   c u s t o m   p o r t   u s i n g   " H o s t s 1 : 2 0 2 2 1 ; H o s t 2 : 2 0 2 2 2 " W  [ \ [ l     �� ] ^��   ]    set vrayRenderHosts to ""    ^ � _ _ 4   s e t   v r a y R e n d e r H o s t s   t o   " " \  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d � � This example is for an AMD Opteron 4 Socket 64 Core NUMA based system named "Tamarack" running with 8 Vray Standalone instances on ports 20221-20228    e � f f*   T h i s   e x a m p l e   i s   f o r   a n   A M D   O p t e r o n   4   S o c k e t   6 4   C o r e   N U M A   b a s e d   s y s t e m   n a m e d   " T a m a r a c k "   r u n n i n g   w i t h   8   V r a y   S t a n d a l o n e   i n s t a n c e s   o n   p o r t s   2 0 2 2 1 - 2 0 2 2 8 c  g h g l     �� i j��   i � � set vrayRenderHosts to "Tamarack:20221;Tamarack:20222;Tamarack:20223;Tamarack:20224;Tamarack:20225;Tamarack:20226;Tamarack:20227;Tamarack:20228;"    j � k k$   s e t   v r a y R e n d e r H o s t s   t o   " T a m a r a c k : 2 0 2 2 1 ; T a m a r a c k : 2 0 2 2 2 ; T a m a r a c k : 2 0 2 2 3 ; T a m a r a c k : 2 0 2 2 4 ; T a m a r a c k : 2 0 2 2 5 ; T a m a r a c k : 2 0 2 2 6 ; T a m a r a c k : 2 0 2 2 7 ; T a m a r a c k : 2 0 2 2 8 ; " h  l m l l    n���� n r     o p o m     q q � r r  T a m a r a c k : 2 0 2 2 1 p o      ���� "0 vrayrenderhosts vrayRenderHosts��  ��   m  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w 8 2 Define the Vray Standalone command line arguments    x � y y d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s v  z { z l   % |���� | r    % } ~ } b    #  �  b    ! � � � b     � � � m     � � � � �    - d i s t r i b u t e d = 2 � m     � � � � �    - r e n d e r h o s t = " � o     ���� "0 vrayrenderhosts vrayRenderHosts � m   ! " � � � � � � "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1 ~ o      ���� 0 vrayoptions vrayOptions��  ��   {  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Override Vray parameters with custom values    � � � � X   O v e r r i d e   V r a y   p a r a m e t e r s   w i t h   c u s t o m   v a l u e s �  � � � l  & ) ����� � r   & ) � � � m   & ' � � � � �   � o      ���� $0 vrayextraoptions vrayExtraOptions��  ��   �  � � � l     �� � ���   �y set vrayExtraOptions to " -parameterOverride=\"SettingsRegionsGenerator::xc=48\" -parameterOverride=\"SettingsRegionsGenerator::yc=48\" -parameterOverride=\"SettingsRegionsGenerator::xymeans=0\" -parameterOverride=\"SettingsRegionsGenerator::seqtype=3\" -parameterOverride=\"SettingsRegionsGenerator::reverse=0\" -parameterOverride=\"SettingsRegionsGenerator::dynbuckets=1\" "    � � � ��   s e t   v r a y E x t r a O p t i o n s   t o   "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 \ "   " �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Get the current BBEdit file name    � � � � B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e �  � � � l     �� � ���   �    tell application "BBEdit"    � � � � 4   t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l  * � ����� � O   * � � � � Q   0 � � � � � k   3 N � �  � � � r   3 B � � � e   3 > � � n   3 > � � � m   9 =��
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
��   �  ��� � L   ~ �����  ��   � m   * - � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  � � ����� � r   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �    - s c e n e F i l e = � o   � ����� 0 vrayfile vrayFile � o   � ����� 0 vrayoptions vrayOptions � o   � ����� $0 vrayextraoptions vrayExtraOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     �� � ���   � D > set command to vrayPath & vrayOptions & " > /dev/null 2>&1 &"    � � � � |   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   / d e v / n u l l   2 > & 1   & " �  � � � l     �� � ���   � k e set command to vrayPath & vrayOptions & " > " & quoted form of POSIX path of vrayErrorPath & " 2>&1"    � � � � �   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   v r a y E r r o r P a t h   &   "   2 > & 1 " �  �  � l  � ����� r   � � b   � � b   � � b   � �	 b   � �

 o   � ����� 0 vraypath vrayPath o   � ����� 0 vrayoptions vrayOptions	 m   � � �    >   n   � � 1   � ���
�� 
strq n   � � 1   � ���
�� 
psxp o   � ����� 0 vrayerrorpath vrayErrorPath m   � � �    2 > & 1   & o      ���� 0 command  ��  ��     l     ����~��  �  �~    l     �}�}     display alert command    � ,   d i s p l a y   a l e r t   c o m m a n d  l  � ��|�{ r   � � I  � ��z �y
�z .sysoexecTEXT���     TEXT  o   � ��x�x 0 command  �y   1      �w
�w 
rslt�|  �{   !"! l     �v#$�v  #   display alert result   $ �%% *   d i s p l a y   a l e r t   r e s u l t" &'& l     �u�t�s�u  �t  �s  ' ()( l     �r�q�p�r  �q  �p  ) *+* l     �o,-�o  , 1 + Display the console standard output result   - �.. V   D i s p l a y   t h e   c o n s o l e   s t a n d a r d   o u t p u t   r e s u l t+ /0/ l     �n12�n  1    tell application "BBEdit"   2 �33 4   t e l l   a p p l i c a t i o n   " B B E d i t "0 454 l  �6�m�l6 O   �787 k   �99 :;: I  � ��k�j�i
�k .miscactvnull��� ��� obj �j  �i  ; <�h< Q   �=>?= k   � �@@ ABA I  � ��gCD
�g .aevtodocnull  �    alisC J   � �EE F�fF 4   � ��eG
�e 
psxfG o   � ��d�d 0 vrayerrorpath vrayErrorPath�f  D �cH�b
�c 
LFtxH m   � ��a
�a boovtrue�b  B I�`I I  � ��_J�^
�_ .R*chNLE TEXT        obj J n   � �KLK 4   � ��]M
�] 
ctxtM m   � ��\�\ L 4   � ��[N
�[ 
TxtDN m   � ��Z�Z �^  �`  > R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  ? k   �OO PQP r   � �RSR m   � �TT �UU � T h e   V - R a y   o u t p u t   i s   m i s s i n g .   P l e a s e   e d i t   t h i s   A p p l e   S c r i p t   t o   c u s t o m i z e   y o u r   c u r r e n t   V - R a y   p r o g r a m   p a t h .S o      �V�V 0 errormessage errorMessageQ V�UV I  ��TWX
�T .sysodlogaskr        TEXTW l  � �Y�S�RY o   � ��Q�Q 0 errormessage errorMessage�S  �R  X �PZ[
�P 
btnsZ J   � �\\ ]�O] m   � �^^ �__  O K�O  [ �N`a
�N 
dflt` m   � ��M�M a �Lbc
�L 
dispb m   � �K�K c �Jd�I
�J 
givud m  �H�H 
�I  �U  �h  8 m   � �ee�                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  �m  �l  5 f�Gf l     �F�E�D�F  �E  �D  �G       �Cgh�C  g �B
�B .aevtoappnull  �   � ****h �Ai�@�?jk�>
�A .aevtoappnull  �   � ****i k    ll  mm  0nn  @oo  lpp  zqq  �rr  �ss  �tt  �uu vv 4�=�=  �@  �?  j  k / $�<�;�: 7�9 G�8 q�7 � � ��6 ��5 ��4�3�2�1�0�/ ��.�- ��,�+�*�)�(�' ��&�%�$�#�"�!� ��T^
�< 
psxp
�; 
strq�: 0 vraypath vrayPath�9 0 vrayerrorpath vrayErrorPath�8 0 command  �7 "0 vrayrenderhosts vrayRenderHosts�6 0 vrayoptions vrayOptions�5 $0 vrayextraoptions vrayExtraOptions
�4 
docu
�3 
file�2 0 vrayeditfile vrayEditFile�1 0 vrayfile vrayFile�0  �/  �. 0 errormessage errorMessage
�- 
btns
�, 
dflt
�+ 
disp
�* 
givu�) 
�( 
�' .sysodlogaskr        TEXT
�& .sysoexecTEXT���     TEXT
�% 
rslt
�$ .miscactvnull��� ��� obj 
�# 
psxf
�" 
LFtx
�! .aevtodocnull  �    alis
�  
TxtD
� 
ctxt
� .R*chNLE TEXT        obj �>��,�,E�O��,E�O���,�,%E�O�E�O��%�%�%E�O�E�Oa  R  *a k/a ,EE` O_ �,�,E` W 1X  a E` O_ a a kva ka ka a a   OhUOa !_ %�%�%E�O��%a "%��,�,%a #%E�O�j $E` %Oa  Z*j &O %*a '�/kva (el )O*a *k/a +k/j ,W .X  a -E` O_ a a .kva ka ka a a   Uascr  ��ޭ