   M S B A M L   `   `   `  ���� K  GRegistrationForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RegistrationFormRegistrationForm  !    RegistrationForm.AuthWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:RegistrationForm     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$4  .Додаток для користувачів��$	��600��$	��800�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$ ThreeDBorderWindow=� � Icon$ /1210709.png�� � Triggers :�  :� RoutedEvent$ Loaded��.[��� .����  �� TargetProperty$ Width� �� 
TargetName$ 
authButton��.��W�  W� From$ 0X�		 W� To$		 450X�
 g� Duration$
 0:0:1D��� .���� $ Height�$ 
authButton��.��W� $ 0X�$	 32X�$
 0:0:0.7D�.��� ���#f6f7eb.+��� $	��400��$	��500��$��15q�
�������$��Center=� �� Padding$ 30q� �� CornerRadius$ 10�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 30Q�   ShadowDepth$ 0Q�   Color$ #e94f37��   RenderingBias$ Quality=�._��� .+��� $��Авторизація��$��30(�$��0,0,0,20q�$
��Bold"�$��Center=�� $��0,0,0,20q�.+��� -   $
��Left=�$��Реєстрація��$��16(�   MaterialDesignFlatButton#��[  ���#393e41���#393e41$��Verdana)��� $��Right=�$��Увійти��$��16(����#393e41$��Verdana)��� -    ��Name$ textBoxLogin��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введіть логін�� % !MaterialDesignFloatingHintTextBox#��[ $��16(�$
��Left=�$��Center=�G� -    G�Name$ passBox1��$! Введіть пароль�� ) %MaterialDesignFloatingHintPasswordBox#��[ $��16(�$��Center=�$
��Left=��� -    ��Name$ 
authButton��$��Увійти��$
��0 20q�$��16(����#393e41���#393e41$��Verdana)�$
��Bold"�$��Center=�