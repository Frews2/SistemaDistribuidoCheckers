/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using CheckersCliente.MenuPages;
using LogicaCliente;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;

namespace CheckersCliente
{
    /// <summary>
    /// Interaction logic for Game.xaml
    /// </summary>
    public partial class Game : Window
    {
        private Jugador localPlayer;

        private List<Button> buttonList;
        private Button previousButton;
        private Checker[,] boardMatrix;
        private bool player1Turn = true;
        private bool checkPlayerSecondClick;
        private int localPlayerNumber;
        private int rowNumber;
        private int columnNumber;
        private int previousRow;
        private int previousColumn;
        private int player1CheckerCount;
        private int player2CheckerCount;
        private Brush player1Color;
        private Brush player2Color;
        private Match actualMatch;

        public Game(Match match, int playerNumber)
        {
            InitializeComponent();

            this.actualMatch = match;
            this.player1Color = new SolidColorBrush(Color.FromRgb(129, 129, 129));
            this.player2Color = new SolidColorBrush(Color.FromRgb(180, 0, 0));

            localPlayerNumber = playerNumber;
            player1Checker.Foreground = player1Color;
            player2Checker.Foreground = player2Color;
            current_player.Text = "Player 1 Turn";

            GenerateGame();
            if(playerNumber == 2)
            {
                foreach (Button blackSquare in buttonList)
                {
                    IsEnabled = false;
                }
                localPlayer = match.playerTwoData;
            }
            else
            {
                localPlayer = match.playerOneData;
            }

        }

        public void RefreshMessageList()
        {
            chatFrame.Navigate(new GameChat());
        }

        private void RegresarAMenu(object sender, RoutedEventArgs e)
        {
            GameManager.LeaveMatchmaking(actualMatch, localPlayer);
        }

        private void EndTurnNoMovement(object sender, RoutedEventArgs e)
        {
            this.EndTurn();
        }


        private void Movement(object sender, RoutedEventArgs e)
        {

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
                                button.FontSize = 20;
                                DismissButtonClick(previousButton);
                                previousButton.Content = "";
                            }

                            DismissButtonClick(previousButton);
                            EndTurn();
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
                                        DismissButtonClick(previousButton);
                                        EndTurn();

                                    }
                                    else
                                    {
                                        boardMatrix[rowNumber, columnNumber] = Checker.player1Checker;
                                        boardMatrix[previousRow, previousColumn] = Checker.freeSpace;
                                        DismissButtonClick(previousButton);
                                        UpdateCheckersGuiPosition(boardMatrix);

                                        if (Player1MoreJumpCheck())
                                        {
                                            previousButton = button;
                                            RemarkClickedButton(button);
                                        }
                                        else
                                        {
                                            DismissButtonClick(previousButton);
                                            EndTurn();
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
                                            DismissButtonClick(previousButton);
                                            EndTurn();
                                        }
                                        else
                                        {
                                            boardMatrix[rowNumber, columnNumber] = Checker.player1Checker;
                                            boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                            DismissButtonClick(previousButton);
                                            UpdateCheckersGuiPosition(boardMatrix);

                                            if (Player1MoreJumpCheck())
                                            {
                                                previousButton = button;
                                                RemarkClickedButton(button);
                                            }
                                            else
                                            {
                                                DismissButtonClick(previousButton);
                                                EndTurn();
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
                            button.FontSize = 20;
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
                                UpdateCheckersGuiPosition(boardMatrix);

                                if (KingMoreJumpAvaliable())
                                {
                                    previousButton = button;
                                    RemarkClickedButton(button);
                                }
                                else
                                {
                                    DismissButtonClick(previousButton);
                                    EndTurn();
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
                playerTwoMovement(sender, e);
            }
        }

        private void playerTwoMovement(object sender, RoutedEventArgs e)
        {
            var button = (Button)sender;

            columnNumber = Grid.GetColumn(button);
            rowNumber = Grid.GetRow(button);
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
                            button.FontSize = 20;
                            previousButton.Content = "";

                            DismissButtonClick(previousButton);
                        }
                        DismissButtonClick(previousButton);
                        EndTurn();
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
                                    DismissButtonClick(previousButton);
                                    EndTurn();
                                }
                                else
                                {
                                    boardMatrix[rowNumber, columnNumber] = Checker.player2Checker;
                                    boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                    DismissButtonClick(previousButton);
                                    UpdateCheckersGuiPosition(boardMatrix);

                                    if (Player2MoreJumpCheck())
                                    {
                                        RemarkClickedButton(button);
                                        previousButton = button;
                                    }
                                    else
                                    {
                                        DismissButtonClick(previousButton);
                                        EndTurn();
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
                                    DismissButtonClick(previousButton);
                                    EndTurn();
                                }
                                else
                                {
                                    boardMatrix[rowNumber, columnNumber] = Checker.player2Checker;
                                    boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                                    DismissButtonClick(previousButton);
                                    UpdateCheckersGuiPosition(boardMatrix);

                                    if (Player2MoreJumpCheck())
                                    {
                                        RemarkClickedButton(button);
                                        previousButton = button;
                                    }
                                    else
                                    {
                                        DismissButtonClick(previousButton);
                                        EndTurn();
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
                        button.FontSize = 20;
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
                            UpdateCheckersGuiPosition(boardMatrix);

                            if (KingMoreJumpAvaliable())
                            {
                                previousButton = button;
                                RemarkClickedButton(button);
                            }
                            else
                            {
                                DismissButtonClick(previousButton);
                                EndTurn();
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
        private void GenerateGame()
        {
            buttonList = Board.Children.Cast<Button>().ToList();
            boardMatrix = new Checker[8, 8];

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
                    button.FontSize = 20;
                    button.Foreground = player2Color;
                    counter++;
                }
                else
                {
                    if (counter >= 20 && counter < 32)
                    {
                        button.Content = "•";
                        button.FontSize = 20;
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

        public void UpdateCheckersGuiPosition(Checker [,]boardMatrixUpdate)
        {
            boardMatrix = boardMatrixUpdate;
            buttonList.ForEach(button => {

                int row = Grid.GetRow(button);
                int col = Grid.GetColumn(button);

                if (boardMatrixUpdate[row, col] == Checker.player1Checker)
                {
                    button.Content = "•";
                    button.FontSize = 20;
                    button.Foreground = player1Color;
                }
                else
                {
                    if (boardMatrixUpdate[row, col] == Checker.player1King)
                    {
                        button.Content = "♛";
                        button.FontSize = 20;
                        button.Foreground = player1Color;
                    }
                    else
                    {
                        if (boardMatrixUpdate[row, col] == Checker.player2Checker)
                        {
                            button.Content = "•";
                            button.FontSize = 20;
                            button.Foreground = player2Color;
                        }
                        else
                        {
                            if (boardMatrixUpdate[row, col] == Checker.player2King)
                            {
                                button.Content = "♚";
                                button.FontSize = 20;
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
                    (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker || boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King))
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
                (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker || boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King))
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

                UpdateCheckersGuiPosition(boardMatrix);

                return true;
            }
            else
            {
                if (rowNumber == 7 && boardMatrix[previousRow, previousColumn] == Checker.player2Checker)
                {
                    boardMatrix[rowNumber, columnNumber] = Checker.player2King;
                    boardMatrix[previousRow, previousColumn] = Checker.freeSpace;

                    UpdateCheckersGuiPosition(boardMatrix);

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
            if (player2CheckerCount == 0 || player1CheckerCount == 0)
            {
                GameManager.EndPlayerGame(actualMatch.matchActiveNumber, localPlayerNumber, player2CheckerCount, player1CheckerCount);
                FinishGame(player2CheckerCount, player1CheckerCount);
            }
            else
            {
                foreach (Button blackSquare in buttonList)
                {
                    IsEnabled = false;
                }

                IsKingChecker();

                checkPlayerSecondClick = !checkPlayerSecondClick;

                if (player1Turn)
                {
                    current_player.Text = "Player 2 Turn";
                    GameManager.Player1TurnResult(boardMatrix, actualMatch.matchActiveNumber, player2CheckerCount, player1CheckerCount);
                }
                else
                {

                    current_player.Text = "Player 1 Turn";
                    GameManager.Player2TurnResult(boardMatrix, actualMatch.matchActiveNumber, player2CheckerCount, player1CheckerCount);
                }
                player1Turn = !player1Turn;
            }
        }

        public void EndSecondPlayerTurn()
        {
            if (player1Turn)
            {
                foreach (Button blackSquare in buttonList)
                {
                    IsEnabled = true;
                }
                player1Turn = !player1Turn;
                current_player.Text = "Player 2 Turn";
            }
            else
            {
                foreach (Button blackSquare in buttonList)
                {
                    IsEnabled = true;
                }
                player1Turn = true;
                current_player.Text = "Player 1 Turn";
            }
               

        }

        private void InvalidClick()
        {
            checkPlayerSecondClick = false;
            DismissButtonClick(previousButton);
        }

        public void FinishGame(int playerTwoCheckers, int playerOneCheckers)
        {
                if (playerOneCheckers == 0)
                {
                    MessageBoxResult result = MessageBox.Show("PLAYER TWO WINS!", "GAME OVER");

                }
                else
                {

                    MessageBoxResult result = MessageBox.Show("PLAYER ONE WINS!", "GAME OVER");
                }

                Menu menu = new Menu(localPlayer);
                menu.Show();
                Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
                game.Close();
        }

        public void UpdateCheckersCount(int playerTwoCheckers, int playerOneCheckers)
        {
            this.player2CheckerCount = playerTwoCheckers;
            this.player1CheckerCount = playerOneCheckers;

        }

        public void UpdateMatchNumber(int newActiveNumber)
        {
            actualMatch.matchActiveNumber = newActiveNumber;
        }
    }
}

