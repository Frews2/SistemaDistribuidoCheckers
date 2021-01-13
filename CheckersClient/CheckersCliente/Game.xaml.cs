/*
 Date: 04/1/2021
 Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace CheckersCliente
{
    /// <summary>
    /// Interaction logic for Game.xaml
    /// </summary>
    public partial class Game : Window
    {
        private Jugador localPlayer;
        ObservableCollection<string> messagesList = new ObservableCollection<string>();
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
        private bool matchEnd = false;

        /// <summary>
        /// La variable booleana indica si esta abierta o no la ventana <c>ReportWindow</c> para acusar a un jugador
        /// </summary>
        public bool ReportWindowOpen { get; set; } = false;

        /// <summary>
        /// Constructor para la ventana <c>Game</c> que contiene la funcionalidad asociada a una Partida de juego checkers
        /// </summary>
        /// <param name="match"></param>
        /// <param name="playerNumber"></param>
        public Game(Match match, int playerNumber)
        {
            InitializeComponent();

            this.actualMatch = match;
            this.player1Color = new SolidColorBrush(Color.FromRgb(129, 129, 129));
            this.player2Color = new SolidColorBrush(Color.FromRgb(180, 0, 0));

            localPlayerNumber = playerNumber;
            messages.ItemsSource = messagesList;
            player1Checker.Foreground = player1Color;
            player2Checker.Foreground = player2Color;
            currentPlayer.Text = "Player 1 Turn";

            GenerateGame();
            if (playerNumber == 2)
            {

                Board.IsEnabled = false;
                passButton.IsEnabled = false;
                localPlayer = match.playerTwoData;
            }
            else
            {
                localPlayer = match.playerOneData;
            }

        }

        private void RegresarAMenu(object sender, RoutedEventArgs e)
        {
            GameManager.LeaveMatchmaking(actualMatch.matchActiveNumber, localPlayerNumber);
            matchEnd = true;
            if (localPlayerNumber == 1)
            {
                Menu menu = new Menu(actualMatch.playerOneData);
                menu.Show();
            }
            else
            {
                Menu menu = new Menu(actualMatch.playerTwoData);
                menu.Show();
            }

            this.Close();
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

                    FirstMovementCheck(button);
                }
                else
                {
                    if (boardMatrix[rowNumber, columnNumber] == Checker.player1Checker ||
                        boardMatrix[rowNumber, columnNumber] == Checker.player1King)
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

        private void FirstMovementCheck(Button button)
        {
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
                    SecondMovementCheck(button);
                }
            }
            else
            {
                KingMoveCheck(button);
            }
        }

        private void SecondMovementCheck(Button button)
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == -2) && 
                (columnNumber - previousColumn == -2))
            {
                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker ||
                    boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2King)
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
                ThirdMovementCheck(button);
            }
        }

        private void ThirdMovementCheck(Button button)
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == -2) &&
                (columnNumber - previousColumn == 2))
            {
                if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || 
                    boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King)
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

        private void KingMoveCheck(Button button)
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

                    if (KingJumpsAvaliable())
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
                    PlayerTwoFirstMovementCheck(button);
                }
                else
                {
                    PlayerTwoKingCheck(button);
                }
            }
            else
            {
                currentPlayer.Text = "Player 2 Turn";

                if (boardMatrix[rowNumber, columnNumber] == Checker.player2Checker ||
                    boardMatrix[rowNumber, columnNumber] == Checker.player2King)
                {
                    previousButton = button;
                    checkPlayerSecondClick = true;
                    RemarkClickedButton(button);
                }
            }
        }

        private void PlayerTwoFirstMovementCheck(Button button)
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 1) &&
                (columnNumber - previousColumn == -1 || columnNumber - previousColumn == 1))
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
                PlayerTwoSecondMovementCheck(button);
            }
        }

        private void PlayerTwoSecondMovementCheck(Button button)
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 2) &&
                columnNumber - previousColumn == -2)
            {
                if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || 
                    boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King)
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
                PlayerTwoThirdMovementCheck(button);
            }
        }

        private void PlayerTwoThirdMovementCheck(Button button)
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && (rowNumber - previousRow == 2) &&
                columnNumber - previousColumn == 2)
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

        private void PlayerTwoKingCheck(Button button)
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

                    if (KingJumpsAvaliable())
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
                GeneratingGameProcess(travelRow);
               
            }
            player1Turn = true;
            checkPlayerSecondClick = false;
            rowNumber = -1;
            columnNumber = 0;
            previousRow = 0;
            previousColumn = 0;
            player1CheckerCount = 12;
            player2CheckerCount = 12;

            GenerateCheckers();
        }

        private void GeneratingGameProcess(int travelRow)
        {
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

        private void GenerateCheckers()
        {
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

        /// <summary>
        /// Actualiza la posicion de las fichas de checkers despues de un turno durante una partida de juego checkers
        /// </summary>
        /// <param name="boardMatrixUpdate"></param>
        public void UpdateCheckersGuiPosition(Checker[,] boardMatrixUpdate)
        {
            boardMatrix = boardMatrixUpdate;
            buttonList.ForEach(button =>
            {

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
                        PlayerTwoCheckersUpdate(boardMatrixUpdate,button);
                    }
                }
            });
        }

        private void PlayerTwoCheckersUpdate(Checker[,] boardMatrixUpdate,Button button)
        {
            int row = Grid.GetRow(button);
            int col = Grid.GetColumn(button);

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

        private bool Player1MoreJumpCheck()
        {
            if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && 
                boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace &&
                (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker ||
                boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King))
            {
                return true;
            }
            else
            {
                if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && 
                    boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker ||
                    boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King))
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

            if (rowNumber + 2 <= 7 && columnNumber + 2 <= 7 && 
                boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace &&
                (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker ||
                boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King))
            {
                return true;
            }
            else
            {
                if (rowNumber + 2 <= 7 && columnNumber - 2 >= 0 && 
                    boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker || 
                    boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        private bool KingJumpsAvaliable()
        {
            if (player1Turn)
            {
                if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 && 
                    boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker || 
                    boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King))
                {
                    return true;
                }
                else
                {
                    return KingSecondCheckJump();
                }
            }
            else
            {
                return KingFourthCheckJump();
            }

        }

        private bool KingSecondCheckJump()
        {
            if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && 
                boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace &&
                        (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker ||
                        boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King))
            {
                return true;
            }
            else
            {
                if (rowNumber + 2 <= 7 && columnNumber - 2 >= 0 && 
                    boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || 
                    boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King))
                {
                    return true;
                }
                else
                {
                    return KingThirdCheckJump();
                }
            }
        }

        private bool KingThirdCheckJump()
        {
            if (rowNumber + 2 <= 7 && columnNumber + 2 <= 7 &&
                boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace &&
                               (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker ||
                               boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2King))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool KingFourthCheckJump()
        {
            if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 &&
                boardMatrix[rowNumber - 2, columnNumber - 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1Checker ||
                    boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1King))
            {
                return true;

            }
            else
            {
                if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 && 
                    boardMatrix[rowNumber - 2, columnNumber + 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || 
                    boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King))
                {
                    return true;
                }
                else
                {
                    return KingFifthCheckJump();   
                }
            }
        }

        private bool KingFifthCheckJump()
        {
            if (rowNumber - 2 >= 0 && columnNumber - 2 >= 0 &&
                boardMatrix[rowNumber + 2, columnNumber - 2] == Checker.freeSpace &&
                        (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker || 
                        boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King))
            {
                return true;

            }
            else
            {
                if (rowNumber - 2 >= 0 && columnNumber + 2 <= 7 &&
                    boardMatrix[rowNumber + 2, columnNumber + 2] == Checker.freeSpace &&
                    (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker ||
                    boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King))
                {
                    return true;
                }
                else
                {
                    return false;
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
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                (rowNumber - previousRow == 1 || rowNumber - previousRow == -1) &&
                (columnNumber - previousColumn == 1 || columnNumber - previousColumn == -1))
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
                if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                    rowNumber - previousRow == 2 && columnNumber - previousColumn == 2)
                {
                    if (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2Checker || 
                        boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player2King)
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
                    return SecondValidateKingJump();
                }
            }
            else
            {
                return ValidateSecondPlayerKingJump();
            }

        }

        private bool SecondValidateKingJump()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == 2 && columnNumber - previousColumn == -2)
            {
                if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2Checker ||
                    boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player2King)
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
                
                return ThirdValidateKingJump();
            }
        }

        private bool ThirdValidateKingJump()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == -2 && columnNumber - previousColumn == 2)
            {
                if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2Checker || 
                    boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player2King)
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
                return FourthValidateKingJump();
            }
        }

        private bool FourthValidateKingJump()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == -2 && columnNumber - previousColumn == -2)
            {
                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player2Checker)
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

        private bool ValidateSecondPlayerKingJump()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == 2 && columnNumber - previousColumn == 2)
            {
                if (boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1Checker ||
                    boardMatrix[rowNumber - 1, columnNumber - 1] == Checker.player1King)
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
                return SecondValidateSecondPlayerKing();
            }
        }

        private bool SecondValidateSecondPlayerKing()
        {

            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == 2 && columnNumber - previousColumn == -2)
            {
                if (boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1Checker || 
                    boardMatrix[rowNumber - 1, columnNumber + 1] == Checker.player1King)
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
                return ThirdValidateSecondPlayerKing();
            }
            
        }

        private bool ThirdValidateSecondPlayerKing()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace &&
                rowNumber - previousRow == -2 && columnNumber - previousColumn == 2)
            {
                if (boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1Checker ||
                    boardMatrix[rowNumber + 1, columnNumber - 1] == Checker.player1King)
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
                return FourthValidateSecondPlayerKing();
            }
        }

        private bool FourthValidateSecondPlayerKing()
        {
            if (boardMatrix[rowNumber, columnNumber] == Checker.freeSpace && 
                rowNumber - previousRow == -2 && columnNumber - previousColumn == -2)
            {
                if (boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1Checker || 
                    boardMatrix[rowNumber + 1, columnNumber + 1] == Checker.player1King)
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

        private void EndTurn()
        {
            if (player2CheckerCount == 0 || player1CheckerCount == 0)
            {
                GameManager.EndPlayerGame(actualMatch.matchActiveNumber, localPlayerNumber, 
                                          player2CheckerCount, player1CheckerCount);
                FinishGame(player2CheckerCount, player1CheckerCount);
            }
            else
            {

                Board.IsEnabled = false;
                passButton.IsEnabled = false;
                IsKingChecker();

                checkPlayerSecondClick = !checkPlayerSecondClick;

                if (player1Turn)
                {
                    currentPlayer.Text = "Player 2 Turn";
                    GameManager.Player1TurnResult(boardMatrix, actualMatch.matchActiveNumber,
                                                  player2CheckerCount, player1CheckerCount);
                }
                else
                {

                    currentPlayer.Text = "Player 1 Turn";
                    GameManager.Player2TurnResult(boardMatrix, actualMatch.matchActiveNumber,
                                                  player2CheckerCount, player1CheckerCount);
                }
                player1Turn = !player1Turn;
            }
        }

        /// <summary>
        /// Finaliza el turno de jugador 2
        /// </summary>
        public void EndSecondPlayerTurn()
        {
            if (player1Turn)
            {
                Board.IsEnabled = true;
                passButton.IsEnabled = true;
                player1Turn = !player1Turn;
                currentPlayer.Text = "Player 2 Turn";
            }
            else
            {
                Board.IsEnabled = true;
                passButton.IsEnabled = true;
                player1Turn = true;
                currentPlayer.Text = "Player 1 Turn";
            }


        }

        private void InvalidClick()
        {
            checkPlayerSecondClick = false;
            DismissButtonClick(previousButton);
        }

        /// <summary>
        /// Finaliza de manera exitosa el juego cuando uno de los jugadores gana la partida y 
        /// elimina todas las fichas del oponente
        /// </summary>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        public void FinishGame(int playerTwoCheckers, int playerOneCheckers)
        {
            if (playerOneCheckers == 0)
            {
                MessageBox.Show("PLAYER TWO WINS!", "GAME OVER");
                matchEnd = true;
            }
            else
            {

                MessageBox.Show("PLAYER ONE WINS!", "GAME OVER");
                matchEnd = true;
            }

            Menu menu = new Menu(localPlayer);
            menu.Show();
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.Close();
        }

        /// <summary>
        /// Actualiza el conteo de fichas activas de los jugadores cuando un jugador captura fichas
        /// </summary>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        public void UpdateCheckersCount(int playerTwoCheckers, int playerOneCheckers)
        {
            this.player2CheckerCount = playerTwoCheckers;
            this.player1CheckerCount = playerOneCheckers;

        }

        /// <summary>
        /// Actualiza la identificacion de la partida actual de juego de checkers
        /// </summary>
        /// <param name="newActiveNumber"></param>
        public void UpdateMatchNumber(int newActiveNumber)
        {
            actualMatch.matchActiveNumber = newActiveNumber;
        }

        /// <summary>
        /// Envia un mensaje del jugador local al oponente por medio del servidor
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void SendMessage(object sender, RoutedEventArgs e)
        {
            GameManager.SendMessage(actualMatch.matchActiveNumber, localPlayerNumber, message.Text);
            messagesList.Add("Player " + localPlayerNumber + ": " + message.Text);
            message.Clear();
            messageButton.IsEnabled = false;
        }

        /// <summary>
        /// Recibe un menaje el jugador local del oponente por medio del servidor
        /// </summary>
        /// <param name="newMesage"></param>
        /// <param name="playerSource"></param>
        public void RecieveMessage(string newMesage, string playerSource)
        {
            messagesList.Add(playerSource + newMesage);
        }

        private void ReportPlayer(object sender, RoutedEventArgs e)
        {
            if (!ReportWindowOpen )
            {
                Windows.ReportWindow reportWindow = new Windows.ReportWindow(localPlayerNumber, actualMatch.matchActiveNumber);
                reportWindow.Show();
                ReportWindowOpen = true;
            }
        }

        private void EnableMessageButton(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(message.Text))
            {
                messageButton.IsEnabled = true;
            }
        }

        /// <summary>
        /// Cierra la ventana <c>ReportWindow</c>
        /// </summary>
        public void CloseReportWindow()
        {
            reportButton.IsEnabled = false;
            reportButton.Visibility = Visibility.Hidden;
        }

        private void WindowClose(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (matchEnd)
            {
                e.Cancel = false;
            }
            else
            {
                e.Cancel = true;
            }
        }

        /// <summary>
        /// Cierra la ventana <c>Game</c> cuando un jugador sale de la partida antes de terminar el juego de checkers
        /// y aun tiene fichas activas los dos jugadores
        /// </summary>
        public void AbandonedGame()
        {
            matchEnd = true;

            if (localPlayerNumber == 1)
            {
                Menu menu = new Menu(actualMatch.playerOneData);
                menu.Show();
                this.Close();
            }
            else
            {
                Menu menu = new Menu(actualMatch.playerTwoData);
                menu.Show();
                this.Close();
            }
            Windows.DialogWindowManager.ShowErrorWindow("El otro jugador se ha desconectado");
            
        }
    }
}

