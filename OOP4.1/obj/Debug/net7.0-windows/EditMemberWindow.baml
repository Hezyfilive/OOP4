   M S B A M L   `   `   `  ����A  =OOP4.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OOP4._1OOP4._1  5   	   clr-namespace:   5   	       OOP4._1.EditMemberWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   #localclr-namespace:OOP4._1   5   	   globalclr-namespace:   5   	   $	��450��5
   	   $	��800��6     � WindowStartupLocation$  CenterScreen=�6"    � AllowsTransparency$
 True��6G   
������  � WindowStyle$
 None=�5   "   $y�Visible=�65   .��5      �� ���#eff2f7 �� CornerRadius$ 30��6"   ._�5   
   �  � RowDefinitions 5      �� 5      $��40 �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� -   5           EditCloseWindow#��[  5      $��25��5      $��25��6    .��5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6(     gridButtonIcon#��[ 65   5      � 5!      $��1��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�5"      �� $��Enter a number:��6   $��
-400 0 0 0q�63   $��Center=�6G   $��20��6d   �� 5#      -   5         ��Name$ Number��5#        TextBoxSearch#��[ 6*   ��6Q   �� *AdditionalData.Number+5$      � 5%      $��2��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�5&      �� $��Enter a name:��6   $��
-400 0 0 0q�61   $��Center=�6E   $��20��6b   �� 5'      -   5        $
 Name��5'      #��[ 6(   ��6O   �� *Name+5(      � 5*      $��3��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�5+      �� $��Enter an experience:��6   $��
-440 0 0 0q�68   $��Center=�6L   $��20��6i   �� 5,      -   5        $ 
Experience��5,      #��[ 6.   ��6U   �� *
Experience+5-      � 5.      $��4��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�5/      �� $��Enter a position:��6   $��
-400 0 0 0q�65   $��Center=�6I   $��20��6f   �� 50      -   5        $ Position��50      #��[ 6,   ��6S   �� *AdditionalData.Position+51      � 52      $��5��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�53      �� $��Enter an email:��6   $��
-400 0 0 0q�63   $��Center=�6G   $��20��6d   �� 54      -   5        $ Email��54      #��[ 6)   ��6P   �� *AdditionalData.Email+55      � 56      $��6��6   $	��300��6    $��Center=�6,   $�� 0 0 0 0q�6I   .+�57      �� $��Enter a phone:��6   $��
-400 0 0 0q�62   $��Center=�6F   $��20��6c   �� 58      -   5        $ Phone��58      #��[ 6)   ��6P   �� *AdditionalData.Phone+59      � 5:      $��7��6   $��50��6    $��Center=�6+   $��Center=�6F   $�� 0 0 0 0q�6c   .+�5;      �� -   5          EditConfirmButton#��[ 5;   2   .��5<        $ Check=�6,   $��Center=�69   $��Center=�6T   5=      5>      5A      5B      5C      