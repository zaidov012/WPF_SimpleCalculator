using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SimpleCalculator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        double lastNumber, result;
        SelectedOperator selectedOperator;
        public MainWindow()
        {
            InitializeComponent();

            acButton.Click += AcButton_Click;
            negativeButton.Click += NegativeButton_Click;
            percentageButton.Click += PercentageButton_Click;
            equalButton.Click += EqualButton_Click;
        }

        private void EqualButton_Click(object sender, RoutedEventArgs e)
        {
            double newNumber;
            if (double.TryParse(resultLabel.Content.ToString(), out newNumber))
            {
                switch(selectedOperator)
                {
                    case SelectedOperator.Addition:
                        result = SimpleMath.Add(lastNumber, newNumber);
                        break;
                    case SelectedOperator.Division:
                        result = SimpleMath.Divide(lastNumber, newNumber);
                        break;
                    case SelectedOperator.Multiply:
                        result = SimpleMath.Multiply(lastNumber, newNumber);
                        break;
                    case SelectedOperator.Subtraction:
                        result = SimpleMath.Subtract(lastNumber, newNumber);
                        break;
                }

                resultLabel.Content = result.ToString();
            }
        }

        private void PercentageButton_Click(object sender, RoutedEventArgs e)
        {
            if (double.TryParse(resultLabel.Content.ToString(), out lastNumber))
            {
                lastNumber /= 100;
                resultLabel.Content = lastNumber.ToString();
            }
        }

        private void NegativeButton_Click(object sender, RoutedEventArgs e)
        {
            if(double.TryParse(resultLabel.Content.ToString(), out lastNumber))
            {
                lastNumber *= -1;
                resultLabel.Content = lastNumber.ToString();
            }
        }

        private void AcButton_Click(object sender, RoutedEventArgs e)
        {
            resultLabel.Content = "0";
        }

        private void NumberButton_Click(object sender, RoutedEventArgs e)
        {
            int selectedNumber = 0;

            if (sender == zeroButton) selectedNumber = 0;
            else if (sender == oneButton) selectedNumber = 1;
            else if (sender == twoButton) selectedNumber = 2;
            else if (sender == threeButton) selectedNumber = 3;
            else if (sender == fourButton) selectedNumber = 4;
            else if (sender == fiveButton) selectedNumber = 5;
            else if (sender == sixButton) selectedNumber = 6;
            else if (sender == sevenButton) selectedNumber = 7;
            else if (sender == eightButton) selectedNumber = 8;
            else if (sender == nineButton) selectedNumber = 9;

            if(resultLabel.Content.ToString() == "0")
            {
                resultLabel.Content = $"{selectedNumber}";
            }
            else
            {
                resultLabel.Content = $"{resultLabel.Content}{selectedNumber}";
            }
        }

        private void dotButton_Click(object sender, RoutedEventArgs e)
        {
            if(!resultLabel.Content.ToString().Contains("."))
            {
                resultLabel.Content += ".";
            }
        }

        private void OperationButton_Click(object sender, RoutedEventArgs e)
        {
            if (double.TryParse(resultLabel.Content.ToString(), out lastNumber))
            {
                resultLabel.Content = "";
            }

            if (sender == plusButton) selectedOperator = SelectedOperator.Addition;
            else if (sender == minusButton) selectedOperator = SelectedOperator.Subtraction;
            else if (sender == multiplyButton) selectedOperator = SelectedOperator.Multiply;
            else if (sender == divideButton) selectedOperator = SelectedOperator.Division;
        }
    }

    public enum SelectedOperator
    {
        Addition,
        Subtraction,
        Multiply,
        Division
    }

    public class SimpleMath
    {
        public static double Add(double n1, double n2)
        {
            return n1 + n2;
        }

        public static double Subtract(double n1, double n2)
        {
            return n1 - n2;
        }

        public static double Multiply(double n1, double n2)
        {
            return n1 * n2;
        }

        public static double Divide(double n1, double n2)
        {
            return n1 / n2;
        }
    }
}
