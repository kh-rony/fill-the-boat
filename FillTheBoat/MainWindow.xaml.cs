using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

namespace FillTheBoat
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly int capacity;
        private int currentLoad;
        
        public MainWindow()
        {
            InitializeComponent();

            capacity = 200;
            currentLoad = 0;

            textBlock.Text = "Capacity=" + capacity + ", CurrentLoad=" + currentLoad;
        }
        
        private void refreshBoat()
        {
            
            currentLoad = 0;

            progressBar.Value = 0;
            progressBar.Visibility = Visibility.Hidden;

            textBlock.Text = "Capacity=" + capacity + ", CurrentLoad=" + currentLoad;
            
            sliderMotorCycle.Value = 0;
            textForMotorCycleSlider.Text = "0";
            
            sliderTruck.Value = 0;
            textForTruckSlider.Text = "0";
            
            sliderCar.Value = 0;
            textForCarSlider.Text = "0";
            
            sliderTrainCar.Value = 0;
            textForTrainCarSlider.Text = "0";
        }
        
        private void CalculateCurrentLoadAndUpdateProgressBarAndTextBlock()
        {
            currentLoad = 0;
            currentLoad += 3 * (int)sliderMotorCycle.Value;
            currentLoad += 11 * (int)sliderTruck.Value;
            currentLoad += 5 * (int)sliderCar.Value;
            currentLoad += 17 * (int)sliderTrainCar.Value;
            
            textBlock.Text = "Capacity=" + capacity + ", CurrentLoad=" + currentLoad;

            if( currentLoad <= 0 )
            {
                progressBar.Value = 0;
                progressBar.Visibility = Visibility.Hidden;
                return;
            }
            if( currentLoad == capacity )
            {
                progressBar.Visibility = Visibility.Visible;
                progressBar.Value = 100;
                progressBar.Foreground = Brushes.Green;
                return;
            }
            if( currentLoad > capacity  )
            {
                progressBar.Visibility = Visibility.Visible;
                progressBar.Value = 100;
                progressBar.Foreground = Brushes.Red;
                return;
            }
            
            progressBar.Visibility = Visibility.Visible;
            progressBar.Foreground = Brushes.Orange;
            progressBar.Value = 100.0 * ((double)currentLoad / capacity);
        }

        private void SliderMotorCycleValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            textForMotorCycleSlider.Text = sliderMotorCycle.Value.ToString();
            CalculateCurrentLoadAndUpdateProgressBarAndTextBlock();
        }

        private void SliderTruckValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            textForTruckSlider.Text = sliderTruck.Value.ToString();
            CalculateCurrentLoadAndUpdateProgressBarAndTextBlock();
        }
        
        private void SliderCarValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            textForCarSlider.Text = sliderCar.Value.ToString();
            CalculateCurrentLoadAndUpdateProgressBarAndTextBlock();
        }
        
        private void SliderTrainCarValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            textForTrainCarSlider.Text = sliderTrainCar.Value.ToString();
            CalculateCurrentLoadAndUpdateProgressBarAndTextBlock();
        }
        
        private void buttonNewBoatClicked(object sender, RoutedEventArgs e)
        {
            textForTrainCarSlider.Text = sliderTrainCar.Value.ToString();
            refreshBoat();
        }
    }
}
