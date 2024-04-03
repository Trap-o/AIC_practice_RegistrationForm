using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace RegistrationForm
{
    public partial class MainWindow : Window
    {
        ApplicationContext db;
        protected int openWindowsCount = 0;

        public MainWindow()
        {
            InitializeComponent();
            db = new ApplicationContext();

            Closed += Window_Closed;

            DoubleAnimation doubleAnimation = new DoubleAnimation();
            doubleAnimation.From = 0;
            doubleAnimation.To = 450;
            doubleAnimation.Duration = TimeSpan.FromSeconds(1);
            regButton.BeginAnimation(Button.WidthProperty, doubleAnimation);
            doubleAnimation.From = 0;
            doubleAnimation.To = 32;
            doubleAnimation.Duration = TimeSpan.FromSeconds(0.9);
            regButton.BeginAnimation(Button.HeightProperty, doubleAnimation);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string login = textBoxLogin.Text.Trim();
            string password = passBox1.Password.Trim();
            string passwordRepeat = passBox2.Password.Trim();
            string email = textBoxEmail.Text.Trim().ToLower();
            bool correctInput = true;

            if (login.Length < 5 || login.Length > 20)
            {
                textBoxLogin.ToolTip = "Логін повинен мати не менше 5 і не більше 20 символів!";
                textBoxLogin.Background = Brushes.PeachPuff;
                correctInput = false;
            }
            else
            {
                textBoxLogin.ToolTip = "";
                textBoxLogin.Background = Brushes.Transparent;
            }

            if (password.Length < 8 || password.Length > 20)
            {
                passBox1.ToolTip = "Мінімальна довжина паролю – 8 символів!";
                passBox1.Background = Brushes.PeachPuff;
                correctInput = false;
            }
            else
            {
                passBox1.ToolTip = "";
                passBox1.Background = Brushes.Transparent;
            }

            if (password != passwordRepeat)
            {
                passBox2.ToolTip = "Введені паролі не співпадають!";
                passBox2.Background = Brushes.PeachPuff;
                correctInput = false;
            }
            else
            {
                passBox2.ToolTip = "";
                passBox2.Background = Brushes.Transparent;
            }

            if (email.Contains("@") == false || email.Length < 5 || email.Contains(".") == false)
            {
                textBoxEmail.ToolTip = "Неправильний Email!";
                textBoxEmail.Background = Brushes.PeachPuff;
                correctInput = false;
            }
            else
            {
                textBoxEmail.ToolTip = "";
                textBoxEmail.Background = Brushes.Transparent;
            }

            if (correctInput == true)
            {
                MessageBox.Show("Реєстрація успішна!");
                User user = new User(login, email, password);

                db.Users.Add(user);
                db.SaveChanges();

                AuthWindow authWindow = new AuthWindow();
                authWindow.Show();
                Hide();
                openWindowsCount++;
            }
        }

        private void Button_Window_Auth_Click(object sender, RoutedEventArgs e)
        {
            AuthWindow authWindow = new AuthWindow();
            authWindow.Show();
            Hide();
            openWindowsCount++;
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            MainWindow mainWindow = Application.Current.MainWindow as MainWindow;
            if (mainWindow != null)
            {
                mainWindow.DecreaseOpenWindowsCount();
            }
        }

        public void DecreaseOpenWindowsCount()
        {
            openWindowsCount--;
            if (openWindowsCount == 0)
            {
                Application.Current.Shutdown();
            }
        }
    }
}
