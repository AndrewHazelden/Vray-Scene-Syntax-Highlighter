FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / ) V-Ray Standalone Render With File Dialog     � 	 	 R   V - R a y   S t a n d a l o n e   R e n d e r   W i t h   F i l e   D i a l o g   
  
 l     ��  ��    U O Open a file dialog and then render a selected VRSCENE file from your hard disk     �   �   O p e n   a   f i l e   d i a l o g   a n d   t h e n   r e n d e r   a   s e l e c t e d   V R S C E N E   f i l e   f r o m   y o u r   h a r d   d i s k      l     ��  ��      2016-12-17 9.59 AM     �   &   2 0 1 6 - 1 2 - 1 7   9 . 5 9   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l    2���� 2 r     3 4 3 n     5 6 5 1   	 ��
�� 
psxp 6 m    	 7 7 � 8 8 F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t 4 o      ���� 0 vrayerrorpath vrayErrorPath��  ��   1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 6 0 Make sure the log file exists to avoid an error    > � ? ? `   M a k e   s u r e   t h e   l o g   f i l e   e x i s t s   t o   a v o i d   a n   e r r o r <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H  t o u c h   F n     I J I 1    ��
�� 
strq J n     K L K 1    ��
�� 
psxp L o    ���� 0 vrayerrorpath vrayErrorPath D o      ���� 0 command  ��  ��   A  M N M l     ��������  ��  ��   N  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S 0 * Get the current text editor document name    T � U U T   G e t   t h e   c u r r e n t   t e x t   e d i t o r   d o c u m e n t   n a m e R  V W V l     �� X Y��   X    tell application "BBEdit"    Y � Z Z 4   t e l l   a p p l i c a t i o n   " B B E d i t " W  [ \ [ l   U ]���� ] O    U ^ _ ^ Q    T ` a b ` r    * c d c n    ( e f e 1   & (��
�� 
strq f l   & g���� g n    & h i h 1   $ &��
�� 
psxp i l   $ j���� j l   $ k���� k I   $������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��  ��  ��   d o      ���� 0 vrayfile vrayFile a R      ������
�� .ascrerr ****      � ****��  ��   b k   2 T l l  m n m r   2 5 o p o m   2 3 q q � r r x Y o u   n e e d   t o   s e l e c t   a   V - R a y   . v r s c e n e   f i l e   i n   t h e   f i l e   d i a l o g ! p o      ���� 0 errormessage errorMessage n  s t s I  6 Q�� u v
�� .sysodlogaskr        TEXT u l  6 7 w���� w o   6 7���� 0 errormessage errorMessage��  ��   v �� x y
�� 
btns x J   8 = z z  {�� { m   8 ; | | � } }  O K��   y �� ~ 
�� 
dflt ~ m   @ A����   �� � �
�� 
disp � m   D E����  � �� ���
�� 
givu � m   H K���� 
��   t  ��� � L   R T����  ��   _ m     � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   \  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Override Vray parameters with custom values    � � � � X   O v e r r i d e   V r a y   p a r a m e t e r s   w i t h   c u s t o m   v a l u e s �  � � � l  V ] ����� � r   V ] � � � m   V Y � � � � �   � o      ���� $0 vrayextraoptions vrayExtraOptions��  ��   �  � � � l     �� � ���   �y set vrayExtraOptions to " -parameterOverride=\"SettingsRegionsGenerator::xc=48\" -parameterOverride=\"SettingsRegionsGenerator::yc=48\" -parameterOverride=\"SettingsRegionsGenerator::xymeans=0\" -parameterOverride=\"SettingsRegionsGenerator::seqtype=3\" -parameterOverride=\"SettingsRegionsGenerator::reverse=0\" -parameterOverride=\"SettingsRegionsGenerator::dynbuckets=1\" "    � � � ��   s e t   v r a y E x t r a O p t i o n s   t o   "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 \ "   " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  ^ k ����� � r   ^ k � � � b   ^ g � � � b   ^ c � � � m   ^ a � � � � �    - s c e n e F i l e = � o   a b���� 0 vrayfile vrayFile � o   c f���� $0 vrayextraoptions vrayExtraOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     �� � ���   � D > set command to vrayPath & vrayOptions & " > /dev/null 2>&1 &"    � � � � |   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   / d e v / n u l l   2 > & 1   & " �  � � � l     �� � ���   � k e set command to vrayPath & vrayOptions & " > " & quoted form of POSIX path of vrayErrorPath & " 2>&1"    � � � � �   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   v r a y E r r o r P a t h   &   "   2 > & 1 " �  � � � l  l � ����� � r   l � � � � b   l  � � � b   l { � � � b   l u � � � b   l q � � � o   l m���� 0 vraypath vrayPath � o   m p���� 0 vrayoptions vrayOptions � m   q t � � � � �    >   � n   u z � � � 1   x z��
�� 
strq � n   u x � � � 1   v x��
�� 
psxp � o   u v���� 0 vrayerrorpath vrayErrorPath � m   { ~ � � � � �    2 > & 1   & � o      ���� 0 command  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   display alert command    � � � � ,   d i s p l a y   a l e r t   c o m m a n d �  � � � l  � � ����� � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 command  ��   � 1      ��
�� 
rslt��  ��   �  � � � l     �� � ���   �   display alert result    � � � � *   d i s p l a y   a l e r t   r e s u l t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Display the console standard output result    � � � � V   D i s p l a y   t h e   c o n s o l e   s t a n d a r d   o u t p u t   r e s u l t �  � � � l     �� � ���   �    tell application "BBEdit"    � � � � 4   t e l l   a p p l i c a t i o n   " B B E d i t " �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � I  � �����~
�� .miscactvnull��� ��� obj �  �~   �  ��} � Q   � � � � � � k   � � � �  � � � I  � ��| � �
�| .aevtodocnull  �    alis � J   � �   �{ 4   � ��z
�z 
psxf o   � ��y�y 0 vrayerrorpath vrayErrorPath�{   � �x�w
�x 
LFtx m   � ��v
�v boovtrue�w   � �u I  � ��t�s
�t .R*chNLE TEXT        obj  n   � � 4   � ��r
�r 
ctxt m   � ��q�q  4   � ��p	
�p 
TxtD	 m   � ��o�o �s  �u   � R      �n�m�l
�n .ascrerr ****      � ****�m  �l   � k   � �

  r   � � m   � � � � T h e   V - R a y   o u t p u t   i s   m i s s i n g .   P l e a s e   e d i t   t h i s   A p p l e   S c r i p t   t o   c u s t o m i z e   y o u r   c u r r e n t   V - R a y   p r o g r a m   p a t h . o      �k�k 0 errormessage errorMessage �j I  � ��i
�i .sysodlogaskr        TEXT l  � ��h�g o   � ��f�f 0 errormessage errorMessage�h  �g   �e
�e 
btns J   � � �d m   � � �  O K�d   �c
�c 
dflt m   � ��b�b  �a
�a 
disp m   � ��`�`  �_�^
�_ 
givu m   � ��]�] 
�^  �j  �}   � m   � �  �                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   � !�\! l     �[�Z�Y�[  �Z  �Y  �\       �X"#�X  " �W
�W .aevtoappnull  �   � ****# �V$�U�T%&�S
�V .aevtoappnull  �   � ****$ k     �''  ((  0))  @**  [++  �,,  �--  �..  �//  ��R�R  �U  �T  %  & ( $�Q�P�O 7�N G�M ��L�K�J�I q�H�G |�F�E�D�C�B�A ��@ ��? � ��>�=�<�;�:�9�8�7�6
�Q 
psxp
�P 
strq�O 0 vraypath vrayPath�N 0 vrayerrorpath vrayErrorPath�M 0 command  
�L .sysostdfalis    ��� null�K 0 vrayfile vrayFile�J  �I  �H 0 errormessage errorMessage
�G 
btns
�F 
dflt
�E 
disp
�D 
givu�C 
�B 
�A .sysodlogaskr        TEXT�@ $0 vrayextraoptions vrayExtraOptions�? 0 vrayoptions vrayOptions
�> .sysoexecTEXT���     TEXT
�= 
rslt
�< .miscactvnull��� ��� obj 
�; 
psxf
�: 
LFtx
�9 .aevtodocnull  �    alis
�8 
TxtD
�7 
ctxt
�6 .R*chNLE TEXT        obj �S ���,�,E�O��,E�O���,�,%E�O� : *j 	�,�,E�W )X  �E�O��a kva ka ka a a  OhUOa E` Oa �%_ %E` O�_ %a %��,�,%a %E�O�j E` O� T*j O %*a  �/kva !el "O*a #k/a $k/j %W (X  a &E�O��a 'kva ka ka a a  U ascr  ��ޭ