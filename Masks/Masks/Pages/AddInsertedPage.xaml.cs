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

namespace Masks.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddInsertedPage.xaml
    /// </summary>
    public partial class AddInsertedPage : Page
    {
        products_s_import _products = new products_s_import();
        public AddInsertedPage(products_s_import products)
        {
            InitializeComponent();
            if (products != null)
                _products = products;
            DataContext = _products;
            cmbTypeProd.ItemsSource = user16Entities.GetContext().id_type_products.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (txtArt.Text == "" && txtColPerBuild.Text == "" && txtCountCex.Text == "" && txtDescrip.Text == "" && txtMinPrice.Text == "" && txtName.Text == "" && cmbTypeProd.Text == "" && txtImg.Text == "")
            {
                MessageBox.Show("Не все поля заполнены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (_products.Id == 0)
                    user16Entities.GetContext().products_s_import.Add(_products);
                user16Entities.GetContext().SaveChanges();
                MessageBox.Show("Информация успешно сохранена", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                Classes.Manager.MainFrame.Navigate(new Products());
            }

        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show($"Вы уверены, что хотите удалить следующий элемент?{_products.Id_products}", "Внимение", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    user16Entities.GetContext().products_s_import.Remove(_products);
                    user16Entities.GetContext().SaveChanges();
                    MessageBox.Show("Информация успешно сохранена", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                    Classes.Manager.MainFrame.Navigate(new Products());
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }


            }
        }
    }
}
