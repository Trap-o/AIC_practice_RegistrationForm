   M S B A M L   `   `   `  ����K  GRegistrationForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RegistrationFormRegistrationForm  5   	   %    RegistrationForm.UserPageWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:RegistrationForm     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$4  .Додаток для користувачів��5	   	   $	��600��6*   $	��800��67    � WindowStartupLocation$ CenterScreen=�6C    � WindowStyle$ ThreeDBorderWindow=�6h    � Icon$ /1210709.png��6�   .��5
      � ���#f6f7eb.+�5   
   �� $	��400��6   $	��550��6    $��15q�6/   
�������$��Center=�6N    �� Padding$ 30q�6i    �� CornerRadius$ 10��6v    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ #e94f37��63   	   ShadowDepth$	 0Q�6C   
   RenderingBias$
 Quality=�6S   ._�5      �� .+�5      �� $+��%Кабінет користувача��6   $��30(�67   $��0,0,0,20q�6E   $
��Bold"�6W   $��Center=�6i   �� 5      -   5        $��UserList��5      $��10q�6+   $��14(�67   ��5      �� 5      .R�5      � $
��Auto=�6(   .+�5   "   �� $
��Bold"�6@   ��6,   �� *Id+6@   �� 5   "   $	�� | ��6,   �� 5   "   $
��Bold"�6C   ��6,   �� *Login+6C   �� 5   "   $	�� | ��6,   �� 5   "   ��6,   �� *Email+5      5      5      �� 5      -   5         ��Name$ 
exitButton��5      $$��Вийти з аккаунту��6-   $
��0 20q�6H   $��16(�6V   ���#393e41���#393e41$��Verdana)�6�   $
��Bold"�6�   $��Center=�6�   5      5       5!      5"      