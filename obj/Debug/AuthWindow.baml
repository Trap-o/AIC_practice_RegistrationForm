   M S B A M L   `   `   `  ����K  GRegistrationForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RegistrationFormRegistrationForm  5   	   !    RegistrationForm.AuthWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:RegistrationForm     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$4  .Додаток для користувачів��5	   	   $	��600��6*   $	��800��67    � WindowStartupLocation$ CenterScreen=�6C    � WindowStyle$ ThreeDBorderWindow=�6h    � Icon$ /1210709.png��6�    � Triggers 5
      :� 5   
    :� RoutedEvent$ Loaded��6   .[�5      �� .��5      ��  �� TargetProperty$ Width�6    �� 
TargetName$ 
authButton��65   .��5      W�  W� From$ 0X�6&   		 W� To$		 450X�6/   
 g� Duration$
 0:0:1D�68   5      5      �� 5      .��5      �� $ Height�6   $ 
authButton��66   .��5      W� $ 0X�6&   $	 32X�6/   $
 0:0:0.7D�67   5      5      5      .��5      � ���#f6f7eb.+�5   
   �� $	��400��6   $	��500��6    $��15q�6/   
�������$��Center=�6N    �� Padding$ 30q�6i    �� CornerRadius$ 10��6v    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      ShadowDepth$ 0Q�63      Color$ #e94f37��6C      RenderingBias$ Quality=�6S   ._�5      �� .+�5      �� $��Авторизація��6   $��30(�6/   $��0,0,0,20q�6=   $
��Bold"�6O   $��Center=�6a   � 5      $��0,0,0,20q�6   .+�5       �� -   5        $
��Left=�5       $��Реєстрація��68   $��16(�6M      MaterialDesignFlatButton#��[  6[   ���#393e41���#393e41$��Verdana)�6�   6�   �� 5!      $��Right=�6   $��Увійти��69   $��16(�6J   ���#393e41$��Verdana)�6m   5"      �� 5#      -   5         ��Name$ textBoxLogin��5#      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введіть логін��60    % !MaterialDesignFloatingHintTextBox#��[ 5$      $��16(�6U   $
��Left=�6c   $��Center=�6�   G� 5%      -   5         G�Name$ passBox1��5%      $! Введіть пароль��60    ) %MaterialDesignFloatingHintPasswordBox#��[ 5&      $��16(�6]   $��Center=�6k   $
��Left=�6�   �� 5'      -   5         ��Name$ 
authButton��5'      $��Увійти��6-   $
��0 20q�6>   $��16(�6L   ���#393e41���#393e41$��Verdana)�6�   $
��Bold"�6�   $��Center=�6�   5(      5)      5*      5+      