FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / ) V-Ray Standalone Render With File Dialog     � 	 	 R   V - R a y   S t a n d a l o n e   R e n d e r   W i t h   F i l e   D i a l o g   
  
 l     ��  ��    U O Open a file dialog and then render a selected VRSCENE file from your hard disk     �   �   O p e n   a   f i l e   d i a l o g   a n d   t h e n   r e n d e r   a   s e l e c t e d   V R S C E N E   f i l e   f r o m   y o u r   h a r d   d i s k      l     ��  ��      2016-12-18 4.12 AM     �   &   2 0 1 6 - 1 2 - 1 8   4 . 1 2   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l    2���� 2 r     3 4 3 n     5 6 5 1   	 ��
�� 
psxp 6 m    	 7 7 � 8 8 F / t m p / c o m . c h a o s g r o u p . v r a y . o u t p u t . t x t 4 o      ���� 0 vrayerrorpath vrayErrorPath��  ��   1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 6 0 Make sure the log file exists to avoid an error    > � ? ? `   M a k e   s u r e   t h e   l o g   f i l e   e x i s t s   t o   a v o i d   a n   e r r o r <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H  t o u c h   F n     I J I 1    ��
�� 
strq J n     K L K 1    ��
�� 
psxp L o    ���� 0 vrayerrorpath vrayErrorPath D o      ���� 0 command  ��  ��   A  M N M l     ��������  ��  ��   N  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S 0 * Get the current text editor document name    T � U U T   G e t   t h e   c u r r e n t   t e x t   e d i t o r   d o c u m e n t   n a m e R  V W V l   U X���� X O    U Y Z Y k    T [ [  \ ] \ l   �� ^ _��   ^ &   tell application "TextWrangler"    _ � ` ` @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " ]  a�� a Q    T b c d b r    * e f e n    ( g h g 1   & (��
�� 
strq h l   & i���� i n    & j k j 1   $ &��
�� 
psxp k l   $ l���� l l   $ m���� m I   $������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��  ��  ��   f o      ���� 0 vrayfile vrayFile c R      ������
�� .ascrerr ****      � ****��  ��   d k   2 T n n  o p o r   2 5 q r q m   2 3 s s � t t x Y o u   n e e d   t o   s e l e c t   a   V - R a y   . v r s c e n e   f i l e   i n   t h e   f i l e   d i a l o g ! r o      ���� 0 errormessage errorMessage p  u v u I  6 Q�� w x
�� .sysodlogaskr        TEXT w l  6 7 y���� y o   6 7���� 0 errormessage errorMessage��  ��   x �� z {
�� 
btns z J   8 = | |  }�� } m   8 ; ~ ~ �    O K��   { �� � �
�� 
dflt � m   @ A����  � �� � �
�� 
disp � m   D E����  � �� ���
�� 
givu � m   H K���� 
��   v  ��� � L   R T����  ��  ��   Z m     � ��                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   W  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Override Vray parameters with custom values    � � � � X   O v e r r i d e   V r a y   p a r a m e t e r s   w i t h   c u s t o m   v a l u e s �  � � � l  V ] ����� � r   V ] � � � m   V Y � � � � �   � o      ���� $0 vrayextraoptions vrayExtraOptions��  ��   �  � � � l     �� � ���   �y set vrayExtraOptions to " -parameterOverride=\"SettingsRegionsGenerator::xc=48\" -parameterOverride=\"SettingsRegionsGenerator::yc=48\" -parameterOverride=\"SettingsRegionsGenerator::xymeans=0\" -parameterOverride=\"SettingsRegionsGenerator::seqtype=3\" -parameterOverride=\"SettingsRegionsGenerator::reverse=0\" -parameterOverride=\"SettingsRegionsGenerator::dynbuckets=1\" "    � � � ��   s e t   v r a y E x t r a O p t i o n s   t o   "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : y c = 4 8 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : x y m e a n s = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : s e q t y p e = 3 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : r e v e r s e = 0 \ "   - p a r a m e t e r O v e r r i d e = \ " S e t t i n g s R e g i o n s G e n e r a t o r : : d y n b u c k e t s = 1 \ "   " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  ^ k ����� � r   ^ k � � � b   ^ g � � � b   ^ c � � � m   ^ a � � � � �    - s c e n e F i l e = � o   a b���� 0 vrayfile vrayFile � o   c f���� $0 vrayextraoptions vrayExtraOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l     �� � ���   � D > set command to vrayPath & vrayOptions & " > /dev/null 2>&1 &"    � � � � |   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   / d e v / n u l l   2 > & 1   & " �  � � � l     �� � ���   � k e set command to vrayPath & vrayOptions & " > " & quoted form of POSIX path of vrayErrorPath & " 2>&1"    � � � � �   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s   &   "   >   "   &   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   v r a y E r r o r P a t h   &   "   2 > & 1 " �  � � � l  l � ����� � r   l � � � � b   l  � � � b   l { � � � b   l u � � � b   l q � � � o   l m���� 0 vraypath vrayPath � o   m p���� 0 vrayoptions vrayOptions � m   q t � � � � �    >   � n   u z � � � 1   x z��
�� 
strq � n   u x � � � 1   v x��
�� 
psxp � o   u v���� 0 vrayerrorpath vrayErrorPath � m   { ~ � � � � �    2 > & 1   & � o      ���� 0 command  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   display alert command    � � � � ,   d i s p l a y   a l e r t   c o m m a n d �  � � � l  � � ����� � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 command  ��   � 1      ��
�� 
rslt��  ��   �  � � � l     �� � ���   �   display alert result    � � � � *   d i s p l a y   a l e r t   r e s u l t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Display the console standard output result    � � � � V   D i s p l a y   t h e   c o n s o l e   s t a n d a r d   o u t p u t   r e s u l t �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � l  � ��� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  � � � I  � ���~�}
� .miscactvnull��� ��� obj �~  �}   �  ��| � Q   � � � � � � k   � � � �  � � � I  � ��{ �z
�{ .aevtodocnull  �    alis  J   � � �y 4   � ��x
�x 
psxf o   � ��w�w 0 vrayerrorpath vrayErrorPath�y  �z   �  l  � ��v�v   : 4 open {POSIX file vrayErrorPath} with LF translation    � h   o p e n   { P O S I X   f i l e   v r a y E r r o r P a t h }   w i t h   L F   t r a n s l a t i o n 	�u	 l  � ��t
�t  
 7 1 normalize line endings text 1 of text document 1    � b   n o r m a l i z e   l i n e   e n d i n g s   t e x t   1   o f   t e x t   d o c u m e n t   1�u   � R      �s�r�q
�s .ascrerr ****      � ****�r  �q   � k   � �  r   � � m   � � � � T h e   V - R a y   o u t p u t   i s   m i s s i n g .   P l e a s e   e d i t   t h i s   A p p l e   S c r i p t   t o   c u s t o m i z e   y o u r   c u r r e n t   V - R a y   p r o g r a m   p a t h . o      �p�p 0 errormessage errorMessage �o I  � ��n
�n .sysodlogaskr        TEXT l  � ��m�l o   � ��k�k 0 errormessage errorMessage�m  �l   �j
�j 
btns J   � � �i m   � � �  O K�i   �h
�h 
dflt m   � ��g�g  �f !
�f 
disp  m   � ��e�e ! �d"�c
�d 
givu" m   � ��b�b 
�c  �o  �|   � m   � �##�                                                                                  R*ch  alis    <  PineHD                     �JWWH+   ��
BBEdit.app                                                      MR��m��        ����  	                Applications    �J��      �n-�     ��  PineHD:Applications: BBEdit.app    
 B B E d i t . a p p    P i n e H D  Applications/BBEdit.app   / ��  ��  ��   � $�a$ l     �`�_�^�`  �_  �^  �a       �]%&�]  % �\
�\ .aevtoappnull  �   � ****& �['�Z�Y()�X
�[ .aevtoappnull  �   � ****' k     �**  ++  0,,  @--  V..  �//  �00  �11  �22  ��W�W  �Z  �Y  (  ) $ $�V�U�T 7�S G�R ��Q�P�O�N s�M�L ~�K�J�I�H�G�F ��E ��D � ��C�B�A�@�?
�V 
psxp
�U 
strq�T 0 vraypath vrayPath�S 0 vrayerrorpath vrayErrorPath�R 0 command  
�Q .sysostdfalis    ��� null�P 0 vrayfile vrayFile�O  �N  �M 0 errormessage errorMessage
�L 
btns
�K 
dflt
�J 
disp
�I 
givu�H 
�G 
�F .sysodlogaskr        TEXT�E $0 vrayextraoptions vrayExtraOptions�D 0 vrayoptions vrayOptions
�C .sysoexecTEXT���     TEXT
�B 
rslt
�A .miscactvnull��� ��� obj 
�@ 
psxf
�? .aevtodocnull  �    alis�X ���,�,E�O��,E�O���,�,%E�O� : *j 	�,�,E�W )X  �E�O��a kva ka ka a a  OhUOa E` Oa �%_ %E` O�_ %a %��,�,%a %E�O�j E` O� B*j O *a  �/kvj !OPW (X  a "E�O��a #kva ka ka a a  U ascr  ��ޭ