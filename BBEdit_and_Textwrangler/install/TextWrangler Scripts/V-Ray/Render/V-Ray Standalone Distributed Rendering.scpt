FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' V-Ray Standalone Distributed Rendering     � 	 	 N   V - R a y   S t a n d a l o n e   D i s t r i b u t e d   R e n d e r i n g   
  
 l     ��  ��    [ U Take the currently open TextWrangler VRSCENE file and render it in V-Ray Standalone      �   �   T a k e   t h e   c u r r e n t l y   o p e n   T e x t W r a n g l e r   V R S C E N E   f i l e   a n d   r e n d e r   i t   i n   V - R a y   S t a n d a l o n e        l     ��  ��      2016-12-17 9.57 AM     �   &   2 0 1 6 - 1 2 - 1 7   9 . 5 7   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 > 8 Define the Vray Distributed Rendering hosts and ports.     5 � 6 6 p   D e f i n e   t h e   V r a y   D i s t r i b u t e d   R e n d e r i n g   h o s t s   a n d   p o r t s .   3  7 8 7 l     �� 9 :��   9 � � Each Vray Standalone host system is separated with a semicolorn The hosts are defined like either "Host1;Host2", or with the host name and a custom port using "Hosts1:20221;Host2:20222"    : � ; ;t   E a c h   V r a y   S t a n d a l o n e   h o s t   s y s t e m   i s   s e p a r a t e d   w i t h   a   s e m i c o l o r n   T h e   h o s t s   a r e   d e f i n e d   l i k e   e i t h e r   " H o s t 1 ; H o s t 2 " ,   o r   w i t h   t h e   h o s t   n a m e   a n d   a   c u s t o m   p o r t   u s i n g   " H o s t s 1 : 2 0 2 2 1 ; H o s t 2 : 2 0 2 2 2 " 8  < = < l     �� > ?��   >    set vrayRenderHosts to ""    ? � @ @ 4   s e t   v r a y R e n d e r H o s t s   t o   " " =  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E � � This example is for an AMD Opteron 4 Socket 64 Core NUMA based system named "Tamarack" running with 8 Vray Standalone instances on ports 20221-20228    F � G G*   T h i s   e x a m p l e   i s   f o r   a n   A M D   O p t e r o n   4   S o c k e t   6 4   C o r e   N U M A   b a s e d   s y s t e m   n a m e d   " T a m a r a c k "   r u n n i n g   w i t h   8   V r a y   S t a n d a l o n e   i n s t a n c e s   o n   p o r t s   2 0 2 2 1 - 2 0 2 2 8 D  H I H l    J���� J r     K L K m    	 M M � N N � T a m a r a c k : 2 0 2 2 1 ; T a m a r a c k : 2 0 2 2 2 ; T a m a r a c k : 2 0 2 2 3 ; T a m a r a c k : 2 0 2 2 4 ; T a m a r a c k : 2 0 2 2 5 ; T a m a r a c k : 2 0 2 2 6 ; T a m a r a c k : 2 0 2 2 7 ; T a m a r a c k : 2 0 2 2 8 ; L o      ���� "0 vrayrenderhosts vrayRenderHosts��  ��   I  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S 8 2 Define the Vray Standalone command line arguments    T � U U d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s R  V W V l    X���� X r     Y Z Y b     [ \ [ b     ] ^ ] b     _ ` _ m     a a � b b    - d i s t r i b u t e d = 2 ` m     c c � d d    - r e n d e r h o s t = " ^ o    ���� "0 vrayrenderhosts vrayRenderHosts \ m     e e � f f � "     - t r a n s f e r A s s e t s = 2   - c a c h e d A s s e t s L i m i t T y p e = 1   - c a c h e d A s s e t s L i m i t V a l u e = 1 . 0   - o v e r w r i t e L o c a l C a c h e S e t t i n g s = 1 Z o      ���� 0 vrayoptions vrayOptions��  ��   W  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k ' ! Get the current BBEdit file name    l � m m B   G e t   t h e   c u r r e n t   B B E d i t   f i l e   n a m e j  n o n l     �� p q��   p    tell application "BBEdit"    q � r r 4   t e l l   a p p l i c a t i o n   " B B E d i t " o  s t s l   a u���� u O    a v w v Q    ` x y z x k    . { {  | } | r    & ~  ~ e    $ � � n    $ � � � m   ! #��
�� 
file � 4   !�� �
�� 
docu � m     ����   o      ���� 0 vrayeditfile vrayEditFile }  ��� � r   ' . � � � n   ' , � � � 1   * ,��
�� 
strq � l  ' * ����� � n   ' * � � � 1   ( *��
�� 
psxp � l  ' ( ����� � o   ' (���� 0 vrayeditfile vrayEditFile��  ��  ��  ��   � o      ���� 0 vrayfile vrayFile��   y R      ������
�� .ascrerr ****      � ****��  ��   z k   6 ` � �  � � � r   6 = � � � m   6 9 � � � � � � Y o u   n e e d   t o   h a v e   a   . v r s c e n e   s c e n e   f i l e   o p e n   i n   y o u r   t e x t   e d i t o r   b e f o r e   r u n n i n g   t h i s   s c r i p t ! � o      ���� 0 errormessage errorMessage �  � � � I  > ]�� � �
�� .sysodlogaskr        TEXT � l  > A ����� � o   > A���� 0 errormessage errorMessage��  ��   � �� � �
�� 
btns � J   D I � �  ��� � m   D G � � � � �  O K��   � �� � �
�� 
dflt � m   L M����  � �� � �
�� 
disp � m   P Q����  � �� ���
�� 
givu � m   T W���� 
��   �  ��� � L   ^ `����  ��   w m     � ��                                                                                  !Rch  alis    T  PineHD                     �JWWH+   ��TextWrangler.app                                                x���"        ����  	                Applications    �J��      ��R     ��  %PineHD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    P i n e H D  Applications/TextWrangler.app   / ��  ��  ��   t  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 Define the Vray Standalone command line arguments    � � � � d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s �  � � � l  b k ����� � r   b k � � � b   b i � � � b   b g � � � m   b e � � � � �    - s c e n e F i l e = � o   e f���� 0 vrayfile vrayFile � o   g h���� 0 vrayoptions vrayOptions � o      ���� 0 vrayoptions vrayOptions��  ��   �  � � � l  l w ����� � r   l w � � � b   l s � � � b   l o � � � o   l m���� 0 vraypath vrayPath � o   m n���� 0 vrayoptions vrayOptions � m   o r � � � � � &   >   / d e v / n u l l   2 > & 1   & � o      ���� 0 command  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   display alert command    � � � � ,   d i s p l a y   a l e r t   c o m m a n d �  � � � l  x � ����� � r   x � � � � I  x �� ���
�� .sysoexecTEXT���     TEXT � o   x {���� 0 command  ��   � 1      ��
�� 
rslt��  ��   �  � � � l     �� � ���   �   display alert result    � � � � *   d i s p l a y   a l e r t   r e s u l t �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  H � �  V � �  s � �  � � �  � � �  �����  ��  ��   �   �   $������ M�� a c e�� ������������� ����� �����~�}�|�{ � ��z�y�x
�� 
psxp
�� 
strq�� 0 vraypath vrayPath�� "0 vrayrenderhosts vrayRenderHosts�� 0 vrayoptions vrayOptions
�� 
docu
�� 
file�� 0 vrayeditfile vrayEditFile�� 0 vrayfile vrayFile��  ��  �� 0 errormessage errorMessage
�� 
btns
�� 
dflt
� 
disp
�~ 
givu�} 
�| 
�{ .sysodlogaskr        TEXT�z 0 command  
�y .sysoexecTEXT���     TEXT
�x 
rslt�� ���,�,E�O�E�O��%�%�%E�O� H *�k/�,EE�O��,�,E�W 1X  a E` O_ a a kva ka ka a a  OhUOa �%�%E�O��%a %E` O_ j E`  ascr  ��ޭ