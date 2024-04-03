using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace RegistrationForm
{
    public partial class UserPageWindow : Window
    {
        public UserPageWindow()
        {
            InitializeComponent();
            Closed += Window_Closed;

            ApplicationContext db = new ApplicationContext();
            List<User> users = db.Users.ToList();

            UserList.ItemsSource = users;
        }

        private void Button_Exit_Click(object sender, RoutedEventArgs e)
        {
            AuthWindow authWindow = new AuthWindow();
            authWindow.Show();
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
