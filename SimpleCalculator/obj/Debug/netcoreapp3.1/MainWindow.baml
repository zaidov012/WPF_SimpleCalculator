   M S B A M L   `   `   `  ����K  GSimpleCalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SimpleCalculatorSimpleCalculator  5   	   !    SimpleCalculator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:SimpleCalculator     5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��400��6)   .��5      � $��10q�6   
������� � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��2* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $
��0.5* �6   .+�5   
   �� -   5         ��Name$ resultLabel��5       $��0��5      $��4��5!      $��Right=�5"      $��Bottom=�5#      $��60(�5$      �� 5&   
   -   5         ��Name$ acButton��5'         additionalButtonsStyle#��[  5(      $��AC��5)      $��1��5*      $��0��5+      $��1��5,      �� 5/   
   -   5        $ negativeButton��50      #��[  51      $	��+/-��52      $��1��53      $��1��54      $��1��55      �� 58   
   -   5        $ percentageButton��59      #��[  5:      $��%��5;      $��1��5<      $��2��5=      $��1��5>      �� 5A   
   -   5        $ divideButton��5B        operationsButtonsStyle#��[ 5D      $��/��5E      $��1��5F      $��3��5G      $��1��5H      �� 5K   
   -   5        $ sevenButton��5L        numberButtonsStyle#��[ 5N      $��7��5O      $��2��5P      $��0��5Q      $��1��5R      �� 5U   
   -   5        $ eightButton��5V      #��[ 5X      $��8��5Y      $��2��5Z      $��1��5[      $��1��5\      �� 5_   
   -   5        $ 
nineButton��5`      #��[ 5b      $��9��5c      $��2��5d      $��2��5e      $��1��5f      �� 5i   
   -	   5        $ multiplyButton��5j      #��[ 5l      $��*��5m      $��2��5n      $��3��5o      $��1��5p      �� 5s   
   -
   5        $ 
fourButton��5t      #��[ 5v      $��4��5w      $��3��5x      $��0��5y      $��1��5z      �� 5}   
   -   5        $ 
fiveButton��5~      #��[ 5�      $��5��5�      $��3��5�      $��1��5�      $��1��5�      �� 5�   
   -   5        $ 	sixButton��5�      #��[ 5�      $��6��5�      $��3��5�      $��2��5�      $��1��5�      �� 5�   
   -   5        $ minusButton��5�      #��[ 5�      $��-��5�      $��3��5�      $��3��5�      $��1��5�      �� 5�   
   -   5        $ 	oneButton��5�      #��[ 5�      $��1��5�      $��4��5�      $��0��5�      $��1��5�      �� 5�   
   -   5        $ 	twoButton��5�      #��[ 5�      $��2��5�      $��4��5�      $��1��5�      $��1��5�      �� 5�   
   -   5        $ threeButton��5�      #��[ 5�      $��3��5�      $��4��5�      $��2��5�      $��1��5�      �� 5�   
   -   5        $ 
plusButton��5�      #��[ 5�      $��+��5�      $��4��5�      $��3��5�      $��1��5�      �� 5�   
   -   5        $ 
zeroButton��5�      #��[ 5�      $��0��5�      $��5��5�      $��0��5�      $��2��5�      �� 5�   
   -   5        $ 	dotButton��5�      #��[ 5�      $��.��5�      $��5��5�      $��2��5�      $��1��5�      �� 5�   
   -   5        $ equalButton��5�      #��[ 5�      $��=��5�      $��5��5�      $��3��5�      $��1��5�      �� 5�   
   $��6��5�      $��15(�5�      $��Center=�5�      $��Bottom=�5�      $��4��5�      $��Calculator by Asif Zaidov��5�      5�      5�      