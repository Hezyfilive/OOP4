   M S B A M L   `   `   `  ���� A  =OOP4.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OOP4._1OOP4._1  b ^PresentationFramework.Aero2, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes     OOP4._1.App   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:OOP4._1     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:icon-http://metro.mahapps.com/winfx/xaml/iconpacks   YthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     �� 	Resources     	TopButton �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  
MenuButton  MenuButtonIcon.  (MahApps.Metro.IconPacks.PackIconMaterial  TextBoxSearch	 ��Name
 J� SnapsToDevicePixels ��Name �� Triggers �� 
TargetName  	AddButton  	TabButton  TextBoxFilter �� BasedOn  DataGridStyle1&   System.Windows.Controls.DataGrid5  /System.Windows.Controls.DataGridLengthConverter �� Padding � ColumnDefinitions � RowDefinitions   SelectAllCommand �� 
ResourceId �� TypeInTargetAssembly!   HeadersVisibilityConverter �� 	Converter7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name  �� ScrollableHeight! � Maximum" �� Orientation# �� ViewportHeight$ �� ViewportSize*% �� #ComputedVerticalScrollBarVisibility& � Value' �� Mode( �� ScrollableWidth) �� ViewportWidth,* �� %ComputedHorizontalScrollBarVisibility+ ]� 
Conditions, �� Property- �� Value  DataGridRowStyle1)  #System.Windows.Controls.DataGridRow?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?  9System.Windows.Controls.Primitives.DataGridCellsPresenter.   
ItemsPanelA	  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter/   DetailsVisibility$0   SelectiveScrollingOrientation#1   RowDetailsScrollingConverter;
  5System.Windows.Controls.SelectiveScrollingOrientation2 
  Vertical:  4System.Windows.Controls.Primitives.DataGridRowHeader
3   Row 	 DataGridCellStyle1*  $System.Windows.Controls.DataGridCell 
 ColumnHeaderGripperStyle  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder4   CanUserSort5   IsClickable6   	IsPressed7 J� IsMouseOver8   	IsHovered9   SeparatorBrush:   SeparatorBrush;   SortDirection<   SortDirection=   SeparatorVisibility>   SeparatorVisibility? n�Name  GridEditButton  EditCloseWindow  GridRemoveButton  EditConfirmButton  gridButtonIcon   OptionMark.Static.Background@ �� Color  OptionMark.Static.Border  OptionMark.Static.Glyph # OptionMark.MouseOver.Background  OptionMark.MouseOver.Border  OptionMark.MouseOver.Glyph ! OptionMark.Pressed.Background  OptionMark.Pressed.Border  OptionMark.Pressed.Glyph " OptionMark.Disabled.Background  OptionMark.Disabled.Border  OptionMark.Disabled.Glyph  CheckBoxStyle1A �NameB F�NameC J� OpacityD �� StretchE ��NameF ��Name��%e%  &	        &	 F    &	 �    &	 /    &	 ;    &	 �    &	 m    7  &	 �	    &	 �    &		 .    &	
 �    &	 �    7 
 7 
 &	 �    &	 P    &	 �    7  &	 O    7  &	 l    &	 �    &	 �    &	 �    &	 �    &	     &	 (    &	 =    &	 R    &	 g    &	 |    &	 �    &	 �    &	 �    7  7  7  7  7  7  7  7  7  7  7  7  7  �� " ��.���  � ��
 ���� ��  � �� �#d0c0ff��  �@�FocusVisualStyle Z� ��  � ��$ 35����  � ��$
 15 3q���  � ��$ 13(���  � �� �� " ��.R��� #��z��$ 50��._��� $
��Left=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#dcdcdc�� " ��.���  � ��
 ���� ��  � �� �#d0c0ff��  �@�FocusVisualStyle Z� ��  � ��$ 35����  � ��$
 15 3q���  � ��$ 13(���  � ��$
 Left=���  � �� �� " ��.R��� #��z��$ 7��._��� $
��Left=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#7b5cd6��  � �� �#ffffff�� "  .���  � ��$ 15����  � ��$ 15����  � ��$ Center=���  � ��$ 	20 2 20 0q��� " ��.���  � �� �#ffffff��  � �� �#b0b9c6��  � ��$ 0q���  � ��$ 12(���  � ��$ 15 10q���  � ��$ Center=���  � ��$
 0 10q���  � �� �� " ��.R��� $	 border��$ 20��#��z��$

 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=� P�  �@J�IsMouseOver$
 True��. ��� $ border�� � �� �#d9d9d9P�  �@J�IsKeyboardFocused$
 True��. ��� $ border�� � �� �#d9d9d9�� " ��.���  � �� �#6741d9��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$ 35����  � ��$	 150����  � ��$ Right=���  � ��$ 0 20 0 0q���  � ��$ 13(���  � ��$ 1����  � �� �� " ��.R��� #��z��$ 7��._��� $
��Left=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#7b5cd6��  � �� �#ffffff�� " ��.���  � ��
 ���� ��  � �� �#121518��  �@�FocusVisualStyle Z� ��  � ��$ 45����  � ��$ 70����  � ��
 ���� ��  � ��$ 14(���  � ��$ SemiBold"���  � �� �� " ��.R��� #��z��$��0 0 0 1q�#��z��._��� $
��Left=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#784ff2�� " ��8   .���  � ��$
 10 7q���  � �� �� " ��.R��� $	 border��$ 7��#��z��$

 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=� P�  �@J�IsMouseOver$
 True��. ��� $ border�� � �� �#d9d9d9P�  �@J�IsKeyboardFocused$
 True��. ��� $ border�� � �� �#d9d9d9�� "  .���  � ��
 ���� ��  � �� �#222528��  � ��$ 0q���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  � ��$
 true����  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled$ False����  �@ AutoGenerateColumns$ False����  �@ HeadersVisibility$ Column=���  � ��$ 0 10 0 0q���  � ��$ 5����  �@ SelectionMode$ Single=���  �@ SelectionUnit$ FullRow=���  �@ CanUserAddRows$ False����  �@ CanUserDeleteRows$ False����  �@ CanUserSortColumns$
 True����  �@ CanUserReorderColumns$ False����  �@ CanUserResizeRows$ False����  � ��$ 13(���  �@ GridLinesVisibility$
 None=���  �@ ColumnWidth$ * ��  � �� �� "  .R��� #��z��#��z��#��z��# z��$

 True��._��� $ DG_ScrollViewer��$|�false������ " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��Z $|�false����C� *�� $" DataGridSelectAllButtonStyle��"  +y��� *HeadersVisibility+# Z # Z  �� "  ���� *CellsPanelHorizontalOffset+ �� "    $! PART_ColumnHeadersPresenter��$��1��y��� *HeadersVisibility+# Z # Z  �� "  �� $! PART_ScrollContentPresenter��$��2��# z��$��1���� $ PART_VerticalScrollBar��$��2��#! z  $" Vertical=�$��1��#$ z# #y�z% & �� *VerticalOffset+$' OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $ PART_HorizontalScrollBar��$��1��#! z( $" 
Horizontal=�#$ z) #y�z* & �� *HorizontalOffset+$' OneWay=� �� *TemplatedParent+.���� #
 z
  ]� + �� , �@��
IsGrouping$
- true���� ", �@%�IsVirtualizingWhenGrouping$- false��./���  � ��$ false���� "  .���  � ��$ 0 4 0 0q���  � �� �#FFFFFF��  �@J�SnapsToDevicePixels$
 true����  �@=�ErrorTemplate Z� ��  �@ ValidationErrorTemplate �� .R��� 
���  ��$��2,0,0,0q�$��!��$��Center=���  � �� �� "  .R��� $	 
DGR_Border��$	 0 8q�$ 5��#��z��$��0q�$

 True��._�   �� $
��Auto ��� $��* � �� $��* ��� $
��Auto �.+�  $��1��#��z. #
 z
 	  $��1��$��1��#y�z/ 0 �� *AreRowDetailsFrozen+# Z1 # Z2  �� "    $��2��$0 Vertical=�y��� *HeadersVisibility+# Z # Z3  �� "   P�  �@J�IsMouseOver$
 True��. ���  � �� �#623ED0��  � �� �#ffffffP�  �@ 
IsSelected$
 True��. ���  � �� �#623ED0��  � �� �#ffffff]� + �� , �@ 
IsSelected$
- true���� , �@��IsSelectionActive$- false��./���  � �� �#dfdfdf�� "  .���  � ��
 ���� ��  � ��$ Center=���  �@�FocusVisualStyle Z� ��  � ��$
 15 0q���  � �� �� "  .R��� #��z��$��0q�$

 True��._��� #
 z
 �� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #��z��# z���� "  .���  � ��$ Center=���  � ��
 ���� ��  � �� �#69717D��  � ��$ 
15 0 15 10q���  � �� �� "  .R�� .+�  #��z��#��z��#��z��#5 z4 #6 z��#8 z7 # z��#: z9 #< z; #> z= ._��� #��z��$
��True��#
 z
 #��z��n� $? PART_LeftHeaderGripper��$
��Left=�8��  n� $? PART_RightHeaderGripper��$��Right=�8�� �� " ��.���  � �� �#512DA8��  � �� �#4A148C��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$ Center=���  � �� �� " ��.R��� #��z��#��z��$ 5q�$��1q�$ 5��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#673AB7�� " ��.���  � �� �#D32F2F��  � ��
 ���� ��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$ Center=���  � ��$ 	740 0 0 0q���  � �� �� " ��.R��� #��z��#��z��$ 5q�$��1q�$ 90��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#F44336�� " ��8   .���  � �� �#D32F2F��  � �� �#B71C1C P�  �@J�IsMouseOver$
 True��. ���  � �� �#F44336�� " ��8   .���  � �� �#A1FF2F��  � ��
 ���� ��  � ��$ 25����  � ��$ 25����  � �� �� " ��.R��� #��z��#��z��$��1q�$ 20��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � �� �#3BAE1D�� "  .���  � ��$ Center=���  � ��$ 12����  � ��$ 12���� $@ 	#FFFFFFFF���� $@ 	#FF707070���� $@ 	#FF212121���� $@ 	#FFF3F9FF���� $@ 	#FF5593FF���� $@ 	#FF212121���� $@ 	#FFD9ECFF���� $@ 	#FF3C77DD���� $@ 	#FF212121���� $@ 	#FFE6E6E6���� $@ 	#FFBCBCBC���� $@ 	#FF707070���� " ��.���  �@�FocusVisualStyle Z� ��  � ��8   ��  � �� �#DAE2EA��  � ��# � ����  � ��$ 1q���  � �� �� " ��.R�� $A templateRoot��
������ $

 True�� �� $
��Auto ��� $��* �.+��� $	 checkBoxBorder��$ 3��$ 1q�#��z��#��z��#��z��#��z��$��1q�#��z��._�� $A markGrid��.+�F� $B 
optionMark��Y�����4� �� Ѽ�G dԊ Ѩ�D dԊ �    ^>O ��z r�5 ��@ ��\ 
ܺ��� @�j�  �>��4� �� 8�� $��1q�$C 0Q�$
D None=��� $E indeterminateMark��8�� $��2q�$C 0Q��� $F contentPresenter��$��1��$|�False��#��z��#��z��$
��True��#
 z
 #��z�� P�  � ��$
 true��. ���  Z�  �@�FocusVisualStyle��  � ��$ 4,-1,0,0q�P�  �@J�IsMouseOver$
 true��. ��� $ checkBoxBorder��8   � ���� $ checkBoxBorder�� � �� �#9575CD�� $ 
optionMark��8   � ���� $ indeterminateMark��8   � ��P�  � {�$ false��. ��� $ checkBoxBorder��8   � ���� $ checkBoxBorder��8   � ���� $ 
optionMark��8   � ���� $ indeterminateMark��8 	  � ��P�  � ��$
 true��. ��� $ checkBoxBorder��8 
  � ���� $ checkBoxBorder�� � �� �#9575CD�� $ 
optionMark��8   � ���� $ indeterminateMark��8   � ��P�  �@d�	IsChecked$
 trueY�. ��� $ 
optionMark�� �@J�Opacity$ 1Q��� $ indeterminateMark�� �@J�Opacity$ 0Q�P�  Z�  �@d�	IsChecked. ��� $ 
optionMark�� �@J�Opacity$ 0Q��� $ indeterminateMark�� �@J�Opacity$ 1Q�