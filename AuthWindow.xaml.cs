using System;
using System.Linq;
using System.Windows;

namespace RegistrationForm
{
    public partial class AuthWindow : Window
    {
        public AuthWindow()
        {
            InitializeComponent();
            Closed += Window_Closed;
        }

        private void Button_Auth_Click(object sender, RoutedEventArgs e)
        {
            string login = textBoxLogin.Text.Trim();
            string password = passBox1.Password.Trim();

            User authUser = null;
            using (ApplicationContext db = new ApplicationContext())
            {
                authUser = db.Users.Where(b => b.Login == login && b.Password == password).FirstOrDefault();
            }
            if (authUser != null)
            {
                MessageBox.Show($"Вітаємо, {login}!");
                UserPageWindow userPageWindow = new UserPageWindow();
                userPageWindow.Show();
                Hide();
            }
            else
                MessageBox.Show("Введені дані неправильні.");
        }

        private void Button_Window_Reg_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Hide();
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            MainWindow mainWindow = Application.Current.MainWindow as MainWindow;
            if (mainWindow != null)
            {
                mainWindow.DecreaseOpenWindowsCount();
            }
        }
    }
}
