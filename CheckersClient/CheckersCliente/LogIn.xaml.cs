﻿/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
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
using CheckersCliente.MainService;

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para LogIn.xaml
    /// </summary>
    public partial class LogIn : NavigationWindow
    {
        public Jugador currentPlayer;

        public LogIn()
        {
            InitializeComponent();
        }
    }
}
