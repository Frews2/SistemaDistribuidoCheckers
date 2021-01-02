﻿using LogicaCliente;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using CheckersCliente.MainService;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Lógica de interacción para GameTest.xaml
    /// </summary>
    public partial class GameTest : Page
    {
        private List<Button> buttonList;
        private Button previousButton;
        private Checker[,] boardMatrix;
        private bool player1Turn;
        private bool checkPlayerSecondClick;
        private int rowNumber;
        private int columnNumber;
        private int previousRow;
        private int previousColumn;
        private int player1CheckerCount;
        private int player2CheckerCount;
        private Brush player1Color;
        private Brush player2Color;

        public GameTest()
        {
            InitializeComponent();

            this.player1Color = new SolidColorBrush(Color.FromRgb(129, 129, 129));
            this.player2Color = new SolidColorBrush(Color.FromRgb(180, 0, 0));

            player1Checker.Foreground = player1Color;
            player2Checker.Foreground = player2Color;

            GenerateGame();
        }

        private void Movement(object sender, RoutedEventArgs e)
        {
            if (FinishGame())
            {
                if (player1CheckerCount > 0)
                {
                    MessageBoxResult result = MessageBox.Show("PLAYER ONE WINS!", "GAME OVER");

                }
                else
                {
                    MessageBoxResult result = MessageBox.Show("PLAYER TWO WINS!", "GAME OVER");
                }

                Jugador playe132r = new Jugador();
                Menu menu = new Menu(playe132r);
                menu.Show(); 
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                logIn.Close();
            }

            var button = (Button)sender;

            columnNumber = Grid.GetColumn(button);
            rowNumber = Grid.GetRow(button);

            if (player1Turn)
            {
                if (checkPlayerSecondClick)
                {
                    previousRow = Grid.GetRow(previousButton);
                    previousColumn = Grid.GetColumn(previousButton);

                    if (boardMatrix[previousRow, previousColumn] == Checker.player1Checker)
                    {
                        if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == -1) && 
                           (columnNumber - previousColumn == -1 || columnNumber - previousColumn == 1))
                        {
                            if (!IsKingChecker())
                            {
                                boardMatrix[rowNumber, columnNumber] = Checker.player1Checker;
                                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;
                                button.Content = "•";
                                button.Foreground = player1Color;
                                button.FontSize = 60;
                                DismissButtonClick(previousButton);
                                previousButton.Content = "";
                            }

                            EndTurn();
                            DismissButtonClick(previousButton);
                        }
                        else
                        {
                            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == -2) && (columnNumber - previousColumn == -2))
                            {
                                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2King)
                                {
                                    player2CheckerCount--;
                                    boardMatrix[rowNumber + 1, columnNumber + 1] = Checker.freeSpace;

                                    if (IsKingChecker())
                                    {
                                        EndTurn();
                                        DismissButtonClick(previousButton);
                                    }
                                    else
                                    {
                                        boardMatrix[rowNumber, columnNumber] = Checker.player1Checker;
                                        boardMatrix[previousRow, previousColumn] = Checker.freeSpace;
                                        DismissButtonClick(previousButton);
                                        UpdateCheckersGuiPosition();

                                        if (Player1MoreJumpCheck())
                                        {
                                            previousButton = button;
                                            RemarkClickedButton(button);
                                        }
                                        else
                                        {
                                            EndTurn();
                                            DismissButtonClick(previousButton);
                                        }
                                    }

                                }
                            }
                            else
                            {
                                if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == -2) && (columnNumber - previousColumn == 2))
                                {
                                    if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King)
                                    {
                                        player2CheckerCount--; 
                                        boardMatrix[rowNumber + 1, columnNumber - 1] = Checker.freeSpace;

                                        if (IsKingChecker())
                                        {
                                            EndTurn();
                                            DismissButtonClick(previousButton);
                                        }
                                        else
                                        {
                                            boardMatrix[rowNumber, columnNumber] = Checker.player1Checker;
                                            boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                            DismissButtonClick(previousButton);
                                            UpdateCheckersGuiPosition();

                                            if (Player1MoreJumpCheck())
                                            {
                                                previousButton = button;
                                                RemarkClickedButton(button);
                                            }
                                            else
                                            {
                                                EndTurn();
                                                DismissButtonClick(previousButton);
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    InvalidClick();
                                }
                            }
                        }
                    }
                    else
                    {
                        if (KingMove())
                        {
                            button.Content = "♛";
                            button.FontSize = 60;
                            button.Foreground = player1Color;
                            previousButton.Content = "";

                            DismissButtonClick(previousButton);
                            EndTurn();
                        }
                        else
                        {
                            if (ValidateKingJump())
                            {
                                player2CheckerCount--; 

                                int jumpedRow = (int)(rowNumber + ((rowNumber - previousRow) * -.5));
                                int jumpedColumn = (int)(columnNumber + ((columnNumber - previousColumn) * -.5));

                                boardMatrix[rowNumber, columnNumber] = Checker.player1King;
                                boardMatrix[jumpedRow, jumpedColumn] = Checker.freeSpace;
                                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                DismissButtonClick(previousButton);
                                UpdateCheckersGuiPosition();

                                if (KingMoreJumpAvaliable())
                                {
                                    previousButton = button;
                                    RemarkClickedButton(button);
                                }
                                else
                                {
                                    EndTurn();
                                    DismissButtonClick(previousButton);
                                }
                            }
                            else
                            {
                                InvalidClick();
                            }
                        }
                    }
                }
                else
                {
                    if (boardMatrix[rowNumber, columnNumber] == Checker.player1Checker || boardMatrix[rowNumber, columnNumber] == Checker.player1King)
                    {
                        previousButton = button;
                        RemarkClickedButton(button);
                        checkPlayerSecondClick = true;
                    }
                }
            }
            else
            {
                if (checkPlayerSecondClick)
                {
                    previousRow = Grid.GetRow(previousButton);
                    previousColumn = Grid.GetColumn(previousButton);

                    if (boardMatrix[previousRow, previousColumn] == Checker.player2Checker)
                    {
                        if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 1) && (columnNumber - previousColumn == -1 || columnNumber - previousColumn == 1))
                        {
                            if (!IsKingChecker())
                            {
                                boardMatrix[rowNumber, columnNumber] = Checker.player2Checker;
                                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                button.Content = "•";
                                button.Foreground = player2Color;
                                button.FontSize = 60;
                                previousButton.Content = "";

                                DismissButtonClick(previousButton);
                            }
                            EndTurn();
                            DismissButtonClick(previousButton);
                        }
                        else
                        {
                            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 2) && columnNumber - previousColumn == -2)
                            {
                                if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King)
                                {
                                    player1CheckerCount--;

                                    boardMatrix[rowNumber - 1, columnNumber + 1] = Checker.freeSpace;

                                    if (IsKingChecker())
                                    {
                                        EndTurn();
                                        DismissButtonClick(previousButton);
                                    }
                                    else
                                    {
                                        boardMatrix[rowNumber, columnNumber] = Checker.player2Checker;
                                        boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                        DismissButtonClick(previousButton);
                                        UpdateCheckersGuiPosition();

                                        if (Player2MoreJumpCheck())
                                        {
                                            RemarkClickedButton(button);
                                            previousButton = button;
                                        }
                                        else
                                        {
                                            EndTurn();
                                            DismissButtonClick(previousButton);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 2) && columnNumber - previousColumn == 2)
                                {
                                    player1CheckerCount--;

                                    boardMatrix[rowNumber - 1, columnNumber - 1] = Checker.freeSpace;

                                    if (IsKingChecker())
                                    {
                                        EndTurn();
                                        DismissButtonClick(previousButton);
                                    }
                                    else
                                    {
                                        boardMatrix[rowNumber, columnNumber] = Checker.player2Checker;
                                        boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                        DismissButtonClick(previousButton);
                                        UpdateCheckersGuiPosition();

                                        if (Player2MoreJumpCheck())
                                        {
                                            RemarkClickedButton(button);
                                            previousButton = button;
                                        }
                                        else
                                        {
                                            EndTurn();
                                            DismissButtonClick(previousButton);
                                        }
                                    }
                                }
                                else
                                {
                                    InvalidClick();
                                }
                            }
                        } 
                    }
                    else
                    {
                        if (KingMove())
                        {
                            button.Content = "♚";
                            button.FontSize = 60;
                            button.Foreground = player2Color;
                            previousButton.Content = "";

                            DismissButtonClick(previousButton);
                            EndTurn();
                        }
                        else
                        {
                            if (ValidateKingJump())
                            {
                                player1CheckerCount--; 

                                int jumpedRow = (int)(rowNumber + ((rowNumber - previousRow) * -.5));
                                int jumpedCol = (int)(columnNumber + ((columnNumber - previousColumn) * -.5));

                                boardMatrix[rowNumber, columnNumber] = Checker.player2King;
                                boardMatrix[jumpedRow, jumpedCol] = Checker.freeSpace;
                                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                DismissButtonClick(previousButton);
                                UpdateCheckersGuiPosition();

                                if (KingMoreJumpAvaliable())
                                {
                                    previousButton = button;
                                    RemarkClickedButton(button);
                                }
                                else
                                {
                                    EndTurn();
                                    DismissButtonClick(previousButton);
                                }
                            }
                            else
                            {
                                InvalidClick();
                            }
                        } 
                    }
                }
                else
                {
                    current_player.Text = "Player 2 Turn";

                    if (boardMatrix[rowNumber, columnNumber] == Checker.player2Checker || boardMatrix[rowNumber, columnNumber] == Checker.player2King)
                    {
                        previousButton = button;
                        checkPlayerSecondClick = true;
                        RemarkClickedButton(button);
                    }
                }
            }
        }

        private void GenerateGame()
        {
            buttonList = Board.Children.Cast<Button>().ToList();
            boardMatrix = new Checker[8,8];
            
            int travelRow;

            for (travelRow = 0; travelRow < 8; travelRow++)
            {
                if (travelRow == 0 || travelRow == 2 || travelRow == 6)
                {
                    int travelColumns;

                    for (travelColumns = 0; travelColumns < 7; travelColumns += 2)
                    {
                        if (travelRow == 0 || travelRow == 2)
                        {
                            boardMatrix[travelRow, travelColumns] = Checker.player2Checker;
                        }
                        else
                        {
                            boardMatrix[travelRow, travelColumns] = Checker.player1Checker;
                        }
                    }
                }

                if (travelRow == 1 || travelRow == 5 || travelRow == 7)
                {
                    int travelColumns;

                    for (travelColumns = 1; travelColumns < 8; travelColumns += 2)
                    { 
                        if (travelRow == 5 || travelRow == 7)
                        {
                            boardMatrix[travelRow, travelColumns] = Checker.player1Checker;
                        } 
                        else
                        {
                            boardMatrix[travelRow, travelColumns] = Checker.player2Checker;
                        }
                    }
                }
            }
            player1Turn = true;
            checkPlayerSecondClick = false;
            rowNumber = -1;
            columnNumber = 0;
            previousRow = 0;
            previousColumn = 0;
            player1CheckerCount = 12;
            player2CheckerCount = 12;

            int counter = 0;

            buttonList.ForEach(button =>
            {
                if (counter < 12)
                {
                    button.Content = "•";
                    button.FontSize = 60;
                    button.Foreground = player2Color;
                    counter++;
                }
                else
                {
                    if (counter >= 20 && counter < 32)
                    {
                        button.Content = "•";
                        button.FontSize = 60;
                        button.Foreground = player1Color;
                        counter++;
                    }
                    else
                    {
                        button.Content = string.Empty;
                        counter++;
                    }                 
                } 
            });
        }

        private void RemarkClickedButton(Button buttonSelected)
        {
            buttonSelected.BorderThickness = new Thickness(3, 3, 3, 3);
            buttonSelected.BorderBrush = Brushes.Snow;
        }

        private void DismissButtonClick(Button buttonSelected)
        {
            buttonSelected.BorderThickness = new Thickness(1, 1, 1, 1);
            buttonSelected.BorderBrush = Brushes.SlateGray;
        }

        private void UpdateCheckersGuiPosition()
        {
            buttonList.ForEach(button => {

                int row = Grid.GetRow(button);
                int col = Grid.GetColumn(button);

                if (boardMatrix[row, col] == Checker.player1Checker)
                {
                    button.Content = "•";
                    button.FontSize = 60;
                    button.Foreground = player1Color;
                }
                else
                {
                    if (boardMatrix[row, col] == Checker.player1King)
                    {
                        button.Content = "♛";
                        button.FontSize = 60;
                        button.Foreground = player1Color;
                    }
                    else
                    {
                        if (boardMatrix[row, col] == Checker.player2Checker)
                        {
                            button.Content = "•";
                            button.FontSize = 60;
                            button.Foreground = player2Color;
                        }
                        else
                        {
                            if (boardMatrix[row, col] == Checker.player2King)
                            {
                                button.Content = "♚";
                                button.FontSize = 60;
                                button.Foreground = player2Color;
                            }
                            else
                            {
                                button.Content = "";
                            }
                        }
                    } 
                } 
            });
        }

        private bool Player1MoreJumpCheck()
        {
            if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace && 
                (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King))
            {
                return true;
            }
            else
            {
                if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker|| boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            } 
        }

        private bool Player2MoreJumpCheck()
        {

            if (rowNumber + 2 <= 7 && columnNumber + 2 <= 7 && boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace && 
                (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker|| boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King))
            {
                return true;
            }
            else
            {
                if (rowNumber + 2 <= 7 && columnNumber - 2 >= 0 && boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace &&
                (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            } 
        }

        private bool KingMoreJumpAvaliable()
        {
            if (player1Turn)
            {
                if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace && 
                    (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King))
                {
                    return true;
                }
                else
                {
                    if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace && 
                        (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King))
                    {
                        return true;
                    }
                    else
                    {
                        if (rowNumber + 2 <= 7 && columnNumber - 2 >= 0 && boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace && 
                            (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King))
                        {
                            return true;
                        }
                        else
                        {
                            if (rowNumber + 2 <= 7 && columnNumber + 2 <= 7 && boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace && 
                                (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2King))
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
            }
            else
            {
                if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace && 
                    (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1Checker || boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1King))
                {
                    return true;

                }
                else
                {
                    if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace &&
                        (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King))
                    {
                        return true;
                    }
                    else
                    {
                        if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace && 
                            (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King))
                        {
                            return true;

                        }
                        else
                        {
                            if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace && 
                                (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King))
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                } 
            }

        }

        private bool IsKingChecker()
        {
            if (rowNumber == 0 && boardMatrix[previousRow, previousColumn] == Checker.player1Checker)
            {
                boardMatrix[rowNumber, columnNumber] = Checker.player1King;
                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                UpdateCheckersGuiPosition();

                return true;
            }
            else
            {
                if (rowNumber == 7 && boardMatrix[previousRow, previousColumn] == Checker.player2Checker)
                {
                    boardMatrix[rowNumber, columnNumber] = Checker.player2King;
                    boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                    UpdateCheckersGuiPosition();

                    return true;
                }
                else
                {
                    return false;
                }
            } 
        }

        private bool KingMove()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 1 || rowNumber - previousRow == -1)
                && (columnNumber - previousColumn == 1 || columnNumber - previousColumn == -1))
            {
                boardMatrix[rowNumber, columnNumber] = boardMatrix[previousRow, previousColumn];
                boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                return true;
            }
            else
            {
                return false;
            }
        }

        private bool ValidateKingJump()
        {
            if (player1Turn)
            {
                if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == 2 && columnNumber - previousColumn == 2)
                {
                    if (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == 2 && columnNumber - previousColumn == -2)
                    {
                        if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }

                    }
                    else
                    {
                        if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == -2 && columnNumber - previousColumn == 2)
                        {
                            if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }

                        }
                        else
                        {
                            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == -2 && columnNumber - previousColumn == -2)
                            {
                                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker)
                                {
                                    return true;
                                }
                                else
                                {
                                    return false;
                                }
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                } 
            }
            else
            {
                if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == 2 && columnNumber - previousColumn == 2)
                {
                    if (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1Checker || boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1King)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == 2 && columnNumber - previousColumn == -2)
                    {
                        if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }

                    }
                    else
                    {
                        if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == -2 && columnNumber - previousColumn == 2)
                        {
                            if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }

                        }
                        else
                        {
                            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && rowNumber - previousRow == -2 && columnNumber - previousColumn == -2)
                            {
                                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King)
                                {
                                    return true;
                                }
                                else
                                {
                                    return false;
                                }
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                } 
            }

        }

        private void EndTurn()
        {
            IsKingChecker();

            checkPlayerSecondClick = !checkPlayerSecondClick;
            player1Turn = !player1Turn;

            if (player1Turn)
            {
                current_player.Text = "Player 1 Turn";
            }
            else
            {
                current_player.Text = "Player 2 Turn";
            }
        }

        private void InvalidClick()
        {
            checkPlayerSecondClick = false;
            DismissButtonClick(previousButton);
        }

        private bool FinishGame()
        {
            if (player1CheckerCount == 0 || player2CheckerCount == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
