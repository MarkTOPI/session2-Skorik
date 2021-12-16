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
    /// Логика взаимодействия для Products.xaml
    /// </summary>
    public partial class Products : Page
    {
        public Products()
        {
            InitializeComponent();
            dtBox.ItemsSource = user16Entities.GetContext().products_s_import.ToList();

            //добавление пункта "все типы" в фильтрацию
            var allTypes = user16Entities.GetContext().id_type_products.ToList();
            allTypes.Insert(0, new id_type_products
            {
                name = "Все типы"
            });
            CmbFilters.ItemsSource = allTypes;

            var allFilters = user16Entities.GetContext().id_type_materials.ToList();
            allFilters.Insert(0, new id_type_materials
            {
                name = "Все типы"
            });
            CmbSortirovka.ItemsSource = allFilters;

        }

        //поиск по наименованию продукта
        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtSearch.Text == "")
                dtBox.ItemsSource = user16Entities.GetContext().products_s_import.ToList();
            else
                dtBox.ItemsSource = user16Entities.GetContext().products_s_import.Where(item => (item.Наименование_продукции + "").ToLower().Contains(txtSearch.Text.ToLower())).ToList();
        }

        //переход на окно добавления
        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddInsertedPage(null));
        }

        //переход на окно изменения
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            products_s_import products = dtBox.SelectedItem as products_s_import;
            products_s_import view = user16Entities.GetContext().products_s_import.ToList().Where(items => items.Id == products.Id).First();
            Classes.Manager.MainFrame.Navigate(new AddInsertedPage(view));
        }

        //фильтрация списка по типу продукта
        private void Filters_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CmbFilters.SelectedItem != null)
            {
                if (((id_type_products)CmbFilters.SelectedItem).name == "Все типы")
                {
                    dtBox.ItemsSource = user16Entities.GetContext().id_type_products.ToList();
                }
                else
                {
                    dtBox.ItemsSource = user16Entities.GetContext().products_s_import.Where(items => items.id_type_products == (((id_type_products)CmbFilters.SelectedItem).id)).ToList();
                }
            }
        }

        private void Sort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CmbSortirovka.SelectedItem != null)
            {
                if (((id_type_materials)CmbSortirovka.SelectedItem).name == "Все типы")
                {
                    dtBox.ItemsSource = user16Entities.GetContext().id_type_materials.ToList();
                }
                else
                {
                    dtBox.ItemsSource = user16Entities.GetContext().products_s_import.Where(items => items.Id_materials == (((id_type_materials)CmbSortirovka.SelectedItem).id)).ToList();
                }
            }

        }
    }
}
