FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Vray setvrlservice Help     � 	 	 0   V r a y   s e t v r l s e r v i c e   H e l p   
  
 l     ��  ��      2016-12-17 10.41 AM     �   (   2 0 1 6 - 1 2 - 1 7   1 0 . 4 1   A M      l     ��������  ��  ��        l     ��  ��    1 + Choose where the Vray program is installed     �   V   C h o o s e   w h e r e   t h e   V r a y   p r o g r a m   i s   i n s t a l l e d      l     ����  r         m        �   p " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 7 / v r a y / b i n / s e t v r l s e r v i c e "  o      ���� 0 vraypath vrayPath��  ��        l     ��   ��    T N set vrayPath to "\"/Applications/Autodesk/maya206.5/vray/bin/setvrlservice\""      � ! ! �   s e t   v r a y P a t h   t o   " \ " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 6 . 5 / v r a y / b i n / s e t v r l s e r v i c e \ " "   " # " l     �� $ %��   $ S M set vrayPath to "\"/Applications/Autodesk/maya2016/vray/bin/setvrlservice\""    % � & & �   s e t   v r a y P a t h   t o   " \ " / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / s e t v r l s e r v i c e \ " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + - ' Define the Vray command line arguments    , � - - N   D e f i n e   t h e   V r a y   c o m m a n d   l i n e   a r g u m e n t s *  . / . l     �� 0 1��   0 l f Note: /usr/local/bin/edit is used for opening a document in TextWrangler via the command line utility    1 � 2 2 �   N o t e :   / u s r / l o c a l / b i n / e d i t   i s   u s e d   f o r   o p e n i n g   a   d o c u m e n t   i n   T e x t W r a n g l e r   v i a   t h e   c o m m a n d   l i n e   u t i l i t y /  3 4 3 l     �� 5 6��   5 ; 5 set vrayOptions to " --help | /usr/local/bin/bbedit"    6 � 7 7 j   s e t   v r a y O p t i o n s   t o   "   - - h e l p   |   / u s r / l o c a l / b i n / b b e d i t " 4  8 9 8 l    :���� : r     ; < ; m     = = � > > :   - - h e l p   |   / u s r / l o c a l / b i n / e d i t < o      ���� 0 vrayoptions vrayOptions��  ��   9  ? @ ? l    A���� A r     B C B b     D E D o    	���� 0 vraypath vrayPath E o   	 
���� 0 vrayoptions vrayOptions C o      ���� 0 command  ��  ��   @  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J   display alert command    K � L L ,   d i s p l a y   a l e r t   c o m m a n d I  M N M l    O���� O I   �� P��
�� .sysoexecTEXT���     TEXT P o    ���� 0 command  ��  ��  ��   N  Q R Q l     �� S T��   S   display alert result    T � U U *   d i s p l a y   a l e r t   r e s u l t R  V�� V l     ��������  ��  ��  ��       �� W X��   W ��
�� .aevtoappnull  �   � **** X �� Y���� Z [��
�� .aevtoappnull  �   � **** Y k      \ \   ] ]  8 ^ ^  ? _ _  M����  ��  ��   Z   [  �� =�������� 0 vraypath vrayPath�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT�� �E�O�E�O��%E�O�j ascr  ��ޭ