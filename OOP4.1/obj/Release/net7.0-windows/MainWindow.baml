   M S B A M L   `   `   `  ���� A  =OOP4.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OOP4._1OOP4._1      OOP4._1.MainWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   #localclr-namespace:OOP4._1   $	��720��$
��1080��  � WindowStartupLocation$  CenterScreen=� � AllowsTransparency$
 True��
������  � WindowStyle$
 None=� � 	Resources    	BoolToVis��%   &	        �� .���� -   ���#eff2f7 �� CornerRadius$ 30��._��  � ColumnDefinitions �� $	��200 ��� $��* �.+��  � RowDefinitions �� $
��Auto ��� $��* �.+��� $��
20 28 0 35q�  	TopButton#��[ .��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Menu=�$��15��$��15���� $��1�����#623ed0$ 	0 50 0 30��._�]� .+��� $��80��$��80�� �� Padding$ 3q�
�������$	 100��$	��Top=�$
��Left=�$��
20 -30 0 0q�._�A� �� $��Sports Club��
�������$��32(�$��SemiBold"�$	��Top=�	 �� TextAlignment$	 Center=�$��	5 25 0 10q��� $��25q�$	��Top=�$	��0.8�����#7e5fdc�� -     
MenuButton#��[ $��Bottom=�$��Bottom=�$��
15 0 15 20q�.���� 
 �� Orientation$
 
Horizontal=�.+�  $ Logout=�  MenuButtonIcon#��[ �� $��Logout��� $��1��$��30 30 20 20q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto �.+�� $	��300��$
��Left=�.+��� $
��10 0q�$	��250��$��Center=�$
��Left=����#b0b9c6 J� IsHitTestVisible$ False�� K� ZIndex$ 1��$��Search here ...��y���  �� ElementName$ 	TxtSearch�� �� Path$ Text.IsEmpty� �� 	Converter# [  �� -    ��Name$ 	TxtSearch��  TextBoxSearch#��[ �� -   $��20��$��20��$��Center=�$��0 0 15 0q�$��Right=�$y�Visible=� J� Opacity$ 0Q�  $ Magnify=�$��15��$��15��$��Center=�$��0 0 15 0q����#b0b9c6$��Right=��� $��Members��$��1��$��32(�$��SemiBold"�$��0 20 0 0q�$
��Left=����#121518�� -     	AddButton#��[ .���� $
 
Horizontal=�.+�  $
 Plus=�$��Center=�$��11��$��11��$��20 1 8 0q��� $��Add New Player���� $��1��$��3�����#dae2ea$��0 10 0 0q��� $��2��$
 
Horizontal=�$��0 10 0 0q�.+��� $��Players��  	TabButton#��[ ���#784ff2�� $��	Filter by��$��4��$��13(�$��SemiBold"�$��	0 0 215 0q����#121518$��Right=�$��Center=�� $	��200��$��Right=�$��4��.+��� $
��15 0q�$��Center=����#b0b9c6$ False��$ 1��$��Filter by ...��$	��140��$
��Left=�y��� $ 	TxtFilter��$ Text.IsEmpty�# [  �� -   $ 	TxtFilter��#��[ .���� -   $��20��$��20��$��Center=�$��0 0 15 0q�$��Right=�$y�Visible=�$ 0Q�  $ Magnify=�$��15��$��15��$��Center=�$��0 0 15 0q����#b0b9c6$��Right=�&   System.Windows.Controls.DataGrid  -     Name$ MembersDataGrid��$��5��  DataGridRowStyle1   RowStyle# �    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �   	 DataGridCellStyle1   	CellStyle# � 	  
 DataGridStyle1#��� 
    Columns 4  .System.Windows.Controls.DataGridCheckBoxColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ C��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto   CheckBoxStyle11  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# [    HeaderTemplate �� .R��� #��[ 0  *System.Windows.Controls.DataGridTextColumn  $ #��   
IsReadOnly$
 True��$ False��$
 auto    Binding �� *AdditionalData.Number+4  .System.Windows.Controls.DataGridTemplateColumn  $
 Name��$
 True��$ *    SortMemberPath$
 Name��   CellTemplate �� .R��� $
 
Horizontal=�.+��� $��25��$��25��$ 50��$��0 0 10 0q����� *AdditionalData.BgColor+._��� $��Center=�$��Center=�
�������$��0 0 0 1q����� *AdditionalData.Character+�� $��Center=����� *Name+  $ 
Experience��$
 True��$ *  �� *
Experience+  $ Position��$
 True��$ *  �� *AdditionalData.Position+  $ Email Address��$
 True��$ *  �� *AdditionalData.Email+  $ Phone Number��$
 True��$ *  �� *AdditionalData.Phone+  $ 
Operations��$
 True��$
 auto  �� .R��� $
 
Horizontal=�.+��� -	     GridEditButton#��[ 
  � Tag  �� .��  $ PencilOutline=�  gridButtonIcon#��[ �� -
   $��5 0 0 0q�  GridRemoveButton#��[ .��  $ DeleteOutline=�#��[ 