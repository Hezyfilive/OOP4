   M S B A M L   `   `   `  ���� A  =OOP4.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OOP4._1OOP4._1  clr-namespace:       OOP4._1.EditMemberWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   #localclr-namespace:OOP4._1   globalclr-namespace:   $	��450��$	��800��  � WindowStartupLocation$  CenterScreen=� � AllowsTransparency$
 True��
������  � WindowStyle$
 None=�$y�Visible=�.���� ���#eff2f7 �� CornerRadius$ 30��._��  � RowDefinitions �� $��40 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� -      EditCloseWindow#��[  $��25��$��25��.��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�  gridButtonIcon#��[ � $��1��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter a number:��$��
-400 0 0 0q�$��Center=�$��20���� -    ��Name$ Number��  TextBoxSearch#��[ ���� *AdditionalData.Number+� $��2��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter a name:��$��
-400 0 0 0q�$��Center=�$��20���� -   $
 Name��#��[ ���� *Name+� $��3��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter an experience:��$��
-440 0 0 0q�$��Center=�$��20���� -   $ 
Experience��#��[ ���� *
Experience+� $��4��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter a position:��$��
-400 0 0 0q�$��Center=�$��20���� -   $ Position��#��[ ���� *AdditionalData.Position+� $��5��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter an email:��$��
-400 0 0 0q�$��Center=�$��20���� -   $ Email��#��[ ���� *AdditionalData.Email+� $��6��$	��300��$��Center=�$�� 0 0 0 0q�.+��� $��Enter a phone:��$��
-400 0 0 0q�$��Center=�$��20���� -   $ Phone��#��[ ���� *AdditionalData.Phone+� $��7��$��50��$��Center=�$��Center=�$�� 0 0 0 0q�.+��� -     EditConfirmButton#��[ .��  $ Check=�$��Center=�$��Center=�