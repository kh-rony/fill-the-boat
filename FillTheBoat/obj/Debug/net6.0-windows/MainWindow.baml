   M S B A M L   `   `   `  ����F  BFillTheBoat, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:FillTheBoatFillTheBoat  5   	       FillTheBoat.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:FillTheBoat     5   	     � Title$  
MainWindow��5   	   $	��570��6   $	��400��6)   .��5	      � .+�5
   
   �� $��/img/cargoship.png��6   $
��Left=�6,   $	��190��6G   $��0,0,0,0q�6T   $	��Top=�6e   $	��390��6}   �� 5   
   -   5         ��Name$ sliderMotorCycle��5      $
��Left=�6+   $��
34,199,0,0q�6F   $	��Top=�6Z   $	��250��6r    � Maximum$ 50Q�6~    � Minimum$ 0Q�6�    �� TickPlacement$ BottomRight=�6�    �� TickFrequency$ 1Q�6�    �� IsSnapToTickEnabled$
 True��6�   6�   �� 5   
   -   5        $ sliderTruck��5      $
��Left=�6&   $��
34,267,0,0q�6A   $	��Top=�6U   $	��250��6m   $ 50Q�6y   $ 0Q�6�   $ BottomRight=�6�   $ 1Q�6�   $
 True��6�   6�   �� 5   
   -   5         ��Name$ textForMotorCycleSlider��5      $
��Left=�65   $��27��6P   $��305,190,0,0q�6\   $	��Top=�6q   $��55��6�   $��0��6�   �� 5   
   -   5        $ textForTruckSlider��5      $
��Left=�60   $��28��6K   $��305,262,0,0q�6W   $	��Top=�6l   $��55��6�   $��0��6�   �� 5   
   $��Motor Cycle (3 Units)��6   $
��Left=�60   $��
92,217,0,0q�6K   $	��Top=�6_   $	��141��6w   $��26��6�   �� 5   
   $��Truck (11 Units)��6   $
��Left=�6+   $��
92,285,0,0q�6F   $	��Top=�6Z   $	��100��6r   � 5   
   -   5         �Name$ progressBar��5      $
��Left=�6+   $��72��6F   $��	76,34,0,0q�6R   $	��Top=�6e   $	��302��6}   
��� ���$y�Hidden=�6�   �� 5   
   -   5        $ 	textBlock��5      $
��Left=�6'   $��27��6B   $��
76,111,0,0q�6N   $	��Top=�6b   $	��231��6z   $�� ��6�   
�������6�   �� 5   
   -   5        $ 	sliderCar��5      $
��Left=�6$   $��
34,342,0,0q�6?   $	��Top=�6S   $	��250��6k   $ 50Q�6w   $ 0Q�6�   $ BottomRight=�6�   $ 1Q�6�   $
 True��6�   6�   �� 5   
   $��Car (5 Units)��6   $
��Left=�6(   $��
92,366,0,0q�6C   $	��Top=�6W   $	��100��6o   �� 5   
   -   5        $ textForCarSlider��5      $
��Left=�6.   $��28��6I   $��305,342,0,0q�6U   $	��Top=�6j   $��55��6�   $��0��6�   �� 5   
   -	   5        $ sliderTrainCar��5      $
��Left=�6)   $��
34,411,0,0q�6D   $	��Top=�6X   $	��250��6p   $ 50Q�6|   $ 0Q�6�   $ BottomRight=�6�   $ 1Q�6�   $
 True��6�   6�   �� 5   
   $��Train Car (17 Units)��6   $
��Left=�6/   $��
95,435,0,0q�6J   $	��Top=�6^   $	��132��6v   �� 5   
   -
   5        $ textForTrainCarSlider��5      $
��Left=�63   $��28��6N   $��305,398,0,0q�6Z   $	��Top=�6o   $��55��6�   $��0��6�   �� 5   
   -   5        	 ��Name$	 buttonNewBoat��5      $��New Boat��6(   $
��Left=�6;   $��
34,476,0,0q�6V   $	��Top=�6j   $	��108��6�   $��32��6�   6�   5      5      