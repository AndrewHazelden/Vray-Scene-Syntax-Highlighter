FasdUAS 1.101.10   ��   ��    k             l     ��  ��      V-Ray Standalone Render     � 	 	 0   V - R a y   S t a n d a l o n e   R e n d e r   
  
 l     ��  ��    U O Open a file dialog and then render a selected VRSCENE file from your hard disk     �   �   O p e n   a   f i l e   d i a l o g   a n d   t h e n   r e n d e r   a   s e l e c t e d   V R S C E N E   f i l e   f r o m   y o u r   h a r d   d i s k      l     ��  ��      2016-12-17 9.59 AM     �   &   2 0 1 6 - 1 2 - 1 7   9 . 5 9   A M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % Z / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / v r a y  o      ���� 0 vraypath vrayPath��  ��     & ' & l     �� ( )��   ( e _ set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016.5/vray/bin/vray"    ) � * * �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 . 5 / v r a y / b i n / v r a y " '  + , + l     �� - .��   - c ] set vrayPath to quoted form of POSIX path of "/Applications/Autodesk/maya2016/vray/bin/vray"    . � / / �   s e t   v r a y P a t h   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / v r a y " ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4   Select a file on disk    5 � 6 6 ,   S e l e c t   a   f i l e   o n   d i s k 3  7 8 7 l    9���� 9 r     : ; : n     < = < 1    ��
�� 
strq = l    >���� > n     ? @ ? 1    ��
�� 
psxp @ l    A���� A l    B���� B I   ������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��  ��  ��   ; o      ���� 0 vrayfile vrayFile��  ��   8  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G 9 3 Define the AVray Standalone command line arguments    H � I I f   D e f i n e   t h e   A V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s F  J K J l    L���� L r     M N M b     O P O m     Q Q � R R    - s c e n e F i l e = P o    ���� 0 vrayfile vrayFile N o      ���� 0 vrayoptions vrayOptions��  ��   K  S T S l   ! U���� U r    ! V W V b     X Y X b     Z [ Z o    ���� 0 vraypath vrayPath [ o    ���� 0 vrayoptions vrayOptions Y m     \ \ � ] ] &   >   / d e v / n u l l   2 > & 1   & W o      ���� 0 command  ��  ��   T  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b   display alert command    c � d d ,   d i s p l a y   a l e r t   c o m m a n d a  e f e l  " ) g���� g r   " ) h i h I  " '�� j��
�� .sysoexecTEXT���     TEXT j o   " #���� 0 command  ��   i 1      ��
�� 
rslt��  ��   f  k l k l     �� m n��   m   display alert result    n � o o *   d i s p l a y   a l e r t   r e s u l t l  p q p l     ��������  ��  ��   q  r�� r l     ��������  ��  ��  ��       �� s t��   s ��
�� .aevtoappnull  �   � **** t �� u���� v w��
�� .aevtoappnull  �   � **** u k     ) x x   y y  7 z z  J { {  S | |  e����  ��  ��   v   w  $���������� Q�� \������
�� 
psxp
�� 
strq�� 0 vraypath vrayPath
�� .sysostdfalis    ��� null�� 0 vrayfile vrayFile�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT
�� 
rslt�� *��,�,E�O*j �,�,E�O��%E�O��%�%E�O�j 
E�ascr  ��ޭ