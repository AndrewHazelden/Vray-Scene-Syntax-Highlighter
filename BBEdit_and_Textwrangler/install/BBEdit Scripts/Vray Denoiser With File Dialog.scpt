FasdUAS 1.101.10   ��   ��    k             l     ��  ��    %  Vray Denoiser With File Dialog     � 	 	 >   V r a y   D e n o i s e r   W i t h   F i l e   D i a l o g   
  
 l     ��  ��    U O Open a file dialog and then render a selected VRSCENE file from your hard disk     �   �   O p e n   a   f i l e   d i a l o g   a n d   t h e n   r e n d e r   a   s e l e c t e d   V R S C E N E   f i l e   f r o m   y o u r   h a r d   d i s k      l     ��  ��      2016-11-19 7.54 AM      �   (   2 0 1 6 - 1 1 - 1 9   7 . 5 4   A M        l     ��������  ��  ��        l     ��  ��    : 4 Choose where the Vray Denoiser program is installed     �   h   C h o o s e   w h e r e   t h e   V r a y   D e n o i s e r   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n        !   1    ��
�� 
strq ! n      " # " 1    ��
�� 
psxp # m      $ $ � % % h / A p p l i c a t i o n s / C h a o s G r o u p / V - R a y / M a y a 2 0 1 7 / b i n / v d e n o i s e  o      ���� 0 vraypath vrayPath��  ��     & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   *   Select a file on disk    + � , , ,   S e l e c t   a   f i l e   o n   d i s k )  - . - l    /���� / r     0 1 0 n     2 3 2 1    ��
�� 
strq 3 l    4���� 4 n     5 6 5 1    ��
�� 
psxp 6 l    7���� 7 l    8���� 8 I   ������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��  ��  ��   1 o      ���� 0 vrayfile vrayFile��  ��   .  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 6 0 Define the Vray Denoiser command line arguments    > � ? ? `   D e f i n e   t h e   V r a y   D e n o i s e r   c o m m a n d   l i n e   a r g u m e n t s <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H    - i n p u t F i l e = F o    ���� 0 vrayfile vrayFile D o      ���� 0 vrayoptions vrayOptions��  ��   A  I J I l     ��������  ��  ��   J  K L K l   ! M���� M r    ! N O N b     P Q P b     R S R o    ���� 0 vraypath vrayPath S o    ���� 0 vrayoptions vrayOptions Q m     T T � U U &   >   / d e v / n u l l   2 > & 1   & O o      ���� 0 command  ��  ��   L  V W V l  " ) X���� X r   " ) Y Z Y I  " '�� [��
�� .sysoexecTEXT���     TEXT [ o   " #���� 0 command  ��   Z 1      ��
�� 
rslt��  ��   W  \ ] \ l     �� ^ _��   ^  display alert result    _ � ` ` ( d i s p l a y   a l e r t   r e s u l t ]  a b a l     ��������  ��  ��   b  c�� c l     ��������  ��  ��  ��       �� d e��   d ��
�� .aevtoappnull  �   � **** e �� f���� g h��
�� .aevtoappnull  �   � **** f k     ) i i   j j  - k k  @ l l  K m m  V����  ��  ��   g   h  $���������� G�� T������
�� 
psxp
�� 
strq�� 0 vraypath vrayPath
�� .sysostdfalis    ��� null�� 0 vrayfile vrayFile�� 0 vrayoptions vrayOptions�� 0 command  
�� .sysoexecTEXT���     TEXT
�� 
rslt�� *��,�,E�O*j �,�,E�O��%E�O��%�%E�O�j 
E�ascr  ��ޭ