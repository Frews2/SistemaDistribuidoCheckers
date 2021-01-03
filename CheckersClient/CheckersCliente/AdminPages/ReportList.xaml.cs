﻿/*
 Date: 03/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;

namespace CheckersCliente.AdminPages
{
    /// <summary>
    /// Interaction logic for ReportList.xaml
    /// </summary>
    public partial class ReportList : Page
    {
        private List<Reporte> reportList;

        public ReportList(List<Reporte> reports)
        {
            InitializeComponent();
            reportList = reports;
            tableOfReports.ItemsSource = reportList;
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
