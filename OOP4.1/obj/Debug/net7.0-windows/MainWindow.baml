   M S B A M L   `   `   `  ����A  =OOP4.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OOP4._1OOP4._1  5   	       OOP4._1.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   #localclr-namespace:OOP4._1   5   	   $	��720��5   	   $
��1080��6     � WindowStartupLocation$  CenterScreen=�6#    � AllowsTransparency$
 True��6H   
������  � WindowStyle$
 None=�5   "    � 	Resources 5	         	BoolToVis��%   &	        �� 5
   
   6'   5      .��5      �� -   5        ���#eff2f7 �� CornerRadius$ 30��5   "   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $��* �6$   .+�5      �� $��
20 28 0 35q�6     	TopButton#��[ 6-   .��5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Menu=�6,   $��15��68   $��15��6C   6Q   5      �� 5      $��1��6   ���#623ed0$ 	0 50 0 30��6;   ._�5      ]� .+�5!      �� $��80��6!   $��80��6,    �� Padding$ 3q�68   
�������$	 100��6W   $	��Top=�5"   !   $
��Left=�66   $��
20 -30 0 0q�6Q   ._�5#      A� 5$      5%      �� 5'      $��Sports Club��6$   
�������$��32(�6J   $��SemiBold"�6X   $	��Top=�5(   $   	 �� TextAlignment$	 Center=�69   $��	5 25 0 10q�6P   6e   �� 5)      $��25q�6$   $	��Top=�60   $	��0.8��6E   ���#7e5fdc6i   �� 5+      -   5          
MenuButton#��[ 5+   !   $��Bottom=�6E   $��Bottom=�6`   $��
15 0 15 20q�5,   !   .��5-      �� 
 �� Orientation$
 
Horizontal=�6)   .+�5.   "     $ Logout=�68     MenuButtonIcon#��[ 6F   �� 5/   "   $��Logout��6,   6=   50      51      52      54      55      � 57      $��1��6   $��30 30 20 20q�6#    58      �� 59      $
��Auto �6$   �� 5:      $
��Auto �6$   �� 5;      $
��Auto �6$   �� 5<      $
��Auto �6$   �� 5=      $
��Auto �6$   �� 5>      $��* �6$   �� 5?      $
��Auto �6$   .+�5C      � $	��300��6   $
��Left=�6#   .+�5D      �� $
��10 0q�6    $	��250��6.   $��Center=�6:   $
��Left=�6U   ���#b0b9c6 J� IsHitTestVisible$ False��6�    K� ZIndex$ 1��5E       $��Search here ...��61   y�5F       ��  �� ElementName$ 	TxtSearch�� �� Path$ Text.IsEmpty� �� 	Converter# [  �� 5G      -   5         ��Name$ 	TxtSearch��5G        TextBoxSearch#��[ 61   6X   �� 5I      -   5        $��20��5I      $��20��6(   $��Center=�64   $��0 0 15 0q�6O   $��Right=�6a   $y�Visible=�6}    J� Opacity$ 0Q�6�   6�     5K      $ Magnify=�6,   $��15��6;   $��15��6F   $��Center=�6R   $��0 0 15 0q�5L   ,   ���#b0b9c6$��Right=�6S   5M      �� 5O      $��Members��6   $��1��6+   $��32(�68   $��SemiBold"�6F   $��0 20 0 0q�6\   $
��Left=�5P      ���#12151867   �� 5Q      -   5          	AddButton#��[ 5Q      .��5R      �� $
 
Horizontal=�6!   .+�5S        $
 Plus=�60   $��Center=�6<   $��11��6W   $��11��6b   $��20 1 8 0q�6n   �� 5T      $��Add New Player��6$   6<   5U      5V      �� 5X      $��1��6   $��3��6'   ���#dae2ea$��0 10 0 0q�6I   �� 5Z      $��2��6   $
 
Horizontal=�6*   $��0 10 0 0q�6C   .+�5[      �� $��Players��6     	TabButton#��[ 6/   ���#784ff26R   5\      �� 5^      $��	Filter by��6   $��4��6-   $��13(�6:   $��SemiBold"�6H   $��	0 0 215 0q�6^   ���#121518$��Right=�5_   1   $��Center=�6M   � 5a      $	��200��6   $��Right=�6#   $��4��6?   .+�5b      �� $
��15 0q�6    $��Center=�6.   ���#b0b9c6$ False��6^   $ 1��5c       $��Filter by ...��61   $	��140��5e       $
��Left=�6,   y�5d       �� $ 	TxtFilter��$ Text.IsEmpty�# [  5e   ,   �� 5f      -   5        $ 	TxtFilter��5f      #��[ 61   .��6t   5g      �� 5i      -   5        $��20��5i      $��20��6(   $��Center=�64   $��0 0 15 0q�6O   $��Right=�6a   $y�Visible=�6}   $ 0Q�6�   6�     5k      $ Magnify=�6,   $��15��6;   $��15��6F   $��Center=�6R   $��0 0 15 0q�5l   ,   ���#b0b9c6$��Right=�6S   5m      &   System.Windows.Controls.DataGrid  5p      -   5          Name$ MembersDataGrid��5r   L   $��5��5p        DataGridRowStyle1   RowStyle# �  5q        DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6J    	 DataGridCellStyle1   	CellStyle# � 	 5r       
 DataGridStyle1#��� 
 6e      Columns 5s      4  .System.Windows.Controls.DataGridCheckBoxColumn  5t      ,  &System.Windows.Controls.DataGridColumn   Header$ C��61      CanUserResize$ False��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6R     CheckBoxStyle11  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 6_      HeaderTemplate 5u      �� 5v   "   .R�5w   &   �� #��[ 6/   5x   #   5z      0  *System.Windows.Controls.DataGridTextColumn  5{      $ #��6-      
IsReadOnly$
 True��68   $ False��6J   $
 auto 6`      Binding 6m   �� *AdditionalData.Number+4  .System.Windows.Controls.DataGridTemplateColumn  5}      $
 Name��61   $
 True��6?   $ * 6Q      SortMemberPath$
 Name��6[      CellTemplate 5~      �� 5   "   .R�5�   &   �� $
 
Horizontal=�61   .+�5�   *   �� $��25��61   $��25��6<   $ 50��6H   $��0 0 10 0q�6Z   ��6l   �� *AdditionalData.BgColor+._�5�   .   �� $��Center=�6b   $��Center=�6}   
�������$��0 0 0 1q�6�   ��68   �� *AdditionalData.Character+6�   5�   +   �� 5�   *   $��Center=�6J   ��64   �� *Name+6J   5�   '   5�   #   5�        5�      $ 
Experience��6-   $
 True��6`   $ * 6r    6A   �� *
Experience+6r     5�      $ Position��6-   $
 True��6k   $ * 6}    6?   �� *AdditionalData.Position+6}     5�      $ Email Address��6-   $
 True��6m   $ * 6    6D   �� *AdditionalData.Email+6     5�      $ Phone Number��6-   $
 True��6l   $ * 6~    6C   �� *AdditionalData.Phone+6~     5�      $ 
Operations��61   $
 True��6E   $
 auto 6W    5�      �� 5�   "   .R�5�   &   �� $
 
Horizontal=�61   .+�5�   *   �� -	   5          GridEditButton#��[ 5�   1   
  � Tag  6r   �� .��5�   .     $ PencilOutline=�6D     gridButtonIcon#��[ 6Y   5�   +   �� 5�   *   -
   5        $��5 0 0 0q�5�   1     GridRemoveButton#��[ 6B   .��5�   .     $ DeleteOutline=�6D   #��[ 6Y   5�   +   5�   '   5�   #   5�      5�      5�      5�      5�      5�      