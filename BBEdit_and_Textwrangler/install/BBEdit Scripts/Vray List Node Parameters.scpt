FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Vray List Node Parameters     � 	 	 4   V r a y   L i s t   N o d e   P a r a m e t e r s   
  
 l     ��  ��      2016-03-05 14.53 PM     �   (   2 0 1 6 - 0 3 - 0 5   1 4 . 5 3   P M      l     ��������  ��  ��        l     ��  ��    < 6 Choose where the Vray Standalone program is installed     �   l   C h o o s e   w h e r e   t h e   V r a y   S t a n d a l o n e   p r o g r a m   i s   i n s t a l l e d      l     ����  r         n         1    ��
�� 
strq  n         1    ��
�� 
psxp  m        �     d / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / p l g p a r a m s  o      ���� 0 vraypath vrayPath��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % 7 1 Read the current node name selection from BBEdit    & � ' ' b   R e a d   t h e   c u r r e n t   n o d e   n a m e   s e l e c t i o n   f r o m   B B E d i t $  ( ) ( l    *���� * O     + , + k     - -  . / . l   �� 0 1��   0 &   tell application "TextWrangler"    1 � 2 2 @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " /  3�� 3 r     4 5 4 c     6 7 6 1    ��
�� 
pusl 7 m    ��
�� 
ctxt 5 o      ���� 0 vraynode vrayNode��   , m    	 8 8�                                                                                  R*ch  alis    6  Pine                       Ҋ��H+     j
BBEdit.app                                                      :1�����        ����  	                Applications    ҋ      ��5�       j  Pine:Applications: BBEdit.app    
 B B E d i t . a p p  
  P i n e  Applications/BBEdit.app   / ��  ��  ��   )  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = 8 2 Define the Vray Standalone command line arguments    > � ? ? d   D e f i n e   t h e   V r a y   S t a n d a l o n e   c o m m a n d   l i n e   a r g u m e n t s <  @ A @ l    B���� B r     C D C b     E F E m     G G � H H    - i n f o   F o    ���� 0 vraynode vrayNode D o      ���� 0 vrayoptions vrayOptions��  ��   A  I J I l     ��������  ��  ��   J  K L K l     �� M N��   M , & set command to vrayPath & vrayOptions    N � O O L   s e t   c o m m a n d   t o   v r a y P a t h   &   v r a y O p t i o n s L  P Q P l     R���� R r      S T S b     U V U o    ���� 0 vraypath vrayPath V o    ���� 0 vrayoptions vrayOptions T o      ���� 0 command  ��  ��   Q  W X W l  ! ( Y���� Y r   ! ( Z [ Z I  ! &�� \��
�� .sysoexecTEXT���     TEXT \ o   ! "���� 0 command  ��   [ o      ���� 
0 output  ��  ��   X  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a   Target a Worksheet    b � c c &   T a r g e t   a   W o r k s h e e t `  d e d l     �� f g��   f  tell application "BBEdit"    g � h h 2 t e l l   a p p l i c a t i o n   " B B E d i t " e  i j i l     �� k l��   k ' !	set uws to Unix worksheet window    l � m m B 	 s e t   u w s   t o   U n i x   w o r k s h e e t   w i n d o w j  n o n l     �� p q��   p  		tell uws    q � r r  	 t e l l   u w s o  s t s l     �� u v��   u 3 -		select insertion point after last character    v � w w Z 	 	 s e l e c t   i n s e r t i o n   p o i n t   a f t e r   l a s t   c h a r a c t e r t  x y x l     �� z {��   z 0 *		set selection to command & "\n" & output    { � | | T 	 	 s e t   s e l e c t i o n   t o   c o m m a n d   &   " \ n "   &   o u t p u t y  } ~ } l     ��  ���     		end tell    � � � �  	 e n d   t e l l ~  � � � l     �� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Target an new document    � � � � .   T a r g e t   a n   n e w   d o c u m e n t �  � � � l  ) R ����� � O   ) R � � � k   - Q � �  � � � l  - -�� � ���   � &   tell application "TextWrangler"    � � � � @   t e l l   a p p l i c a t i o n   " T e x t W r a n g l e r " �  � � � I  - 2������
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
pusl��   � m   ) * � ��                                                                                  R*ch  alis    6  Pine                       Ҋ��H+     j
BBEdit.app                                                      :1�����        ����  	                Applications    ҋ      ��5�       j  Pine:Applications: BBEdit.app    
 B B E d i t . a p p  
  P i n e  Applications/BBEdit.app   / ��  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 vraypath vrayPath�� 0 vraynode vrayNode�� 0 vrayoptions vrayOptions�� 0 command  �� 
0 output  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     R � �   � �  ( � �  @ � �  P � �  W � �  �����  ��  ��   �   �  ������ 8������ G���������������������� �
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
�� .corecrel****      � null�� S��,�,E�O� 	*�,�&E�UO��%E�O��%E�O�j E�O� &*j O*��a *a k/a  O�a %�%*�,FU � � � � h ' / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / p l g p a r a m s ' � � � �  S e t t i n g s O u t p u t � � � � *   - i n f o   S e t t i n g s O u t p u t � � � � � ' / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / b i n / p l g p a r a m s '   - i n f o   S e t t i n g s O u t p u t � � � �� P h o e n i x   F D   p l u g i n   r e s o l v e d   t o   ' / A p p l i c a t i o n s / A u t o d e s k / m a y a 2 0 1 6 / v r a y / v r a y p l u g i n s / l i b v r a y _ p h x s h a d e r . s o '  P a r a m e t e r s   f o r   p l u g i n   ' S e t t i n g s O u t p u t '      i m g _ w i d t h :   i n t e g e r   =   6 4 0 ,   O u t p u t   i m a g e   w i d t h      i m g _ h e i g h t :   i n t e g e r   =   4 8 0 ,   O u t p u t   i m a g e   h e i g h t      i m g _ p i x e l A s p e c t :   f l o a t   =   1 ,   O u t p u t   i m a g e   p i x e l   a s p e c t      i m g _ f i l e :   s t r i n g   =   " " ,   O u t p u t   i m a g e   f i l e      i m g _ d i r :   s t r i n g   =   " " ,   O u t p u t   i m a g e   d i r      i m g _ f i l e _ n e e d F r a m e N u m b e r :   b o o l   =   f a l s e ,   I f   t r u e ,   t h e   f r a m e   n u m b e r   i s   a d d e d   t o   t h e   i m a g e   f i l e   n a m e      i m g _ s e p a r a t e A l p h a :   b o o l   =   f a l s e ,   I f   t r u e ,   t h e   a l p h a   c h a n n e l   w i l l   b e   w r i t t e n   t o   a   s e p a r a t e   f i l e      i m g _ n o A l p h a :   b o o l   =   f a l s e ,   I f   t r u e ,   t h e   a l p h a   c h a n n e l   w i l l   n o t   b e   w r i t t e n   t h e   f i n a l   i m a g e      i m g _ d o n t S a v e R g b C h a n n e l :   b o o l   =   f a l s e ,   I f   t r u e ,   t h e   R G B   c h a n n e l   w i l l   n o t   b e   s a v e d   t o   d i s k      i m g _ s a v e V e l o c i t y Z e r o B a s e :   b o o l   =   f a l s e ,   I f   t r u e ,   V e l o c i t y   c h a n n e l   w i l l   b e   s a v e d   z e r o   b a s e   i n s t e a d   o f   t h e   d e f a u l t   0 . 5   b a s e d .      i m g _ d e e p F i l e :   b o o l   =   f a l s e ,   I f   t r u e ,   V - R a y   w i l l   w i l l   g e n e r a t e   d e e p   i m a g e   f i l e   ( v a l i d   f o r   v r s t   a n d   e x r )      i m g _ r a w F i l e :   b o o l   =   f a l s e ,   I f   t r u e ,   V - R a y   w i l l   r e n d e r   t o   a   t i l e d   f i l e   f o r m a t   ( . v r i m g   o r   . e x r ) .   T h i s   i s   a u t o m a t i c a l l y   t u r n e d   o n   f o r   f i l e   f o r m a t s   t h a t   o n l y   s u p p o r t   t i l e d   w r i t i n g   ( l i k e   . v r i m g )      i m g _ r a w F i l e V F B :   i n t e g e r   =   1 ,   I f   w r i t i n g   t o   a   t i l e d   f i l e   f o r m a t ,   s p e c i f i e s   w h e t h e r   a   m e m o r y   V F B   w i n d o w   s h o u l d   b e   d i s p l a y e d   ( 0   -   n o   m e m o r y   V F B ,   1   -   f u l l   m e m o r y   V F B ,   2   -   p r e v i e w )      a n i m _ s t a r t :   d o u b l e   =   0 ,   S t a r t   o f   a n i m a t i o n   r a n g e   i n   t i m e   u n i t s      a n i m _ e n d :   d o u b l e   =   1 ,   E n d   o f   a n i m a t i o n   r a n g e   i n   t i m e   u n i t s      a n i m _ f r a m e _ p a d d i n g :   i n t e g e r   =   4 ,   A n i m a t i o n   F r a m e   N a m e   P a d d i n g      a n i m _ r e n u m b e r _ o n :   b o o l   =   f a l s e ,   I f   t r u e ,   f r a m e   r e n u m b e r i n g   i s   u s e d      a n i m _ r e n u m b e r _ s t a r t :   f l o a t   =   0 ,   S t a r t   n u m b e r   f o r   r e n u m b e r   f r a m e s      a n i m _ r e n u m b e r _ s t e p :   f l o a t   =   1 ,   R e n u m b e r   f r a m e s   s t e p      a n i m _ r e n _ f r a m e _ s t a r t :   f l o a t   =   0 ,   F i r s t   f r a m e   o f   a n i m a t i o n   r a n g e      f r a m e _ s t a r t :   i n t e g e r   =   0 ,   T h e   f r a m e   n u m b e r   a t   t h e   s t a r t   o f   t h e   a n i m a t i o n   r a n g e      f r a m e s _ p e r _ s e c o n d :   f l o a t   =   1 ,   N u m b e r   o f   f r a m e s   p e r   u n i t   t i m e      f r a m e s :   l i s t ,   u n l i m i t e d   l i s t ,   L i s t   o f   f r a m e s   t o   b e   r e n d e r e d .   M a y   c o n t a i n   i n t e r v a l s   i n   t h e   f o r m   o f   l i s t s   w i t h   s t a r t   a n d   e n d   f r a m e      r g n _ l e f t :   f l o a t   =   0 ,   I m a g e   o u t p u t   r e g i o n   l e f t   c o o r d      r g n _ w i d t h :   f l o a t   =   6 4 0 ,   I m a g e   o u t p u t   r e g i o n   w i d t h      r g n _ t o p :   f l o a t   =   0 ,   I m a g e   o u t p u t   r e g i o n   t o p   c o o r d      r g n _ h e i g h t :   f l o a t   =   4 8 0 ,   I m a g e   o u t p u t   r e g i o n   h e i g h t      b m p _ w i d t h :   i n t e g e r   =   6 4 0 ,   O u t p u t   b i t m a p   w i d t h      b m p _ h e i g h t :   i n t e g e r   =   4 8 0 ,   O u t p u t   b i t m a p   h e i g h t      r _ l e f t :   i n t e g e r   =   0 ,   B i t m a p   o u t p u t   r e g i o n   l e f t   c o o r d      r _ w i d t h :   i n t e g e r   =   6 4 0 ,   B i t m a p   o u t p u t   r e g i o n   w i d t h      r _ t o p :   i n t e g e r   =   0 ,   B i t m a p   o u t p u t   r e g i o n   t o p   c o o r d      r _ h e i g h t :   i n t e g e r   =   4 8 0 ,   B i t m a p   o u t p u t   r e g i o n   h e i g h t      f r a m e _ s t a m p _ e n a b l e d :   b o o l   =   f a l s e ,   t r u e   t o   e n a b l e   t h e   V F B   f r a m e   s t a m p      f r a m e _ s t a m p _ t e x t :   s t r i n g   =   " " ,   F r a m e   s t a m p   t e x t      r e l e m e n t s _ s e p a r a t e F o l d e r s :   b o o l   =   f a l s e ,   t r u e   t o   s a v e   r e n d e r   e l e m e n t s   i n   s e p a r a t e   f o l d e r s      r e l e m e n t s _ s e p a r a t e _ r g b a :   b o o l   =   f a l s e ,   t r u e   t o   s a v e   t h e   m a i n   R G B A   e l m e n t   i n   a   s e p a r a t e   f o l d e r   t o o ,   i f   r e l e m e n t s _ s e p a r a t e F o l d e r s   i s   s p e c i f i e d      r e l e m e n t s _ d i v i d e r :   s t r i n g   =   " . " ,   R e n d e r   e l e m e n t s   n a m e   s e p a r a t o r      f i l m _ o f f s e t _ x :   f l o a t   =   0 ,   H o r i z o n t a l   f i l m   o f f s e t      f i l m _ o f f s e t _ y :   f l o a t   =   0 ,   V e r t i c a l   f i l m   o f f s e t  S u p p o r t e d   i n t e r f a c e s :��  ��   ascr  ��ޭ