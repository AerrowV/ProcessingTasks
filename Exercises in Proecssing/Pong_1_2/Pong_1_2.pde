// Ball properties
float ballX, ballY, ballSpeedX, ballSpeedY;

// Player paddle properties
float playerPaddleY;
float paddleHeight = 60;
float paddleWidth = 10;

// AI paddle properties
float aiPaddleY;

// Scoring
int playerScore = 0;
int aiScore = 0;

// Game state
boolean playing = false;
String gameState = "start"; // "start", "playing", "gameOver"

void setup() {
  size(400, 200);
  initGame();
}

void draw() {
  background(0);
  
  if (gameState.equals("start")) {
    // Display start screen
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Press SPACE to start", width / 2, height / 2);
  } else if (gameState.equals("playing")) {
    // Game logic
    playGame();
  } else if (gameState.equals("gameOver")) {
    // Display game over screen
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Game Over! Press SPACE to restart", width / 2, height / 2);
    text("Player Score: " + playerScore + " - AI Score: " + aiScore, width / 2, height / 2 + 30);
  }
}

void playGame() {
  moveBall();
  checkCollisions();
  // Set ball color to red
  fill(255, 0, 0); // RGB color for red
  // Draw the ball
  ellipse(ballX, ballY, 10, 10);
  // Reset fill color for paddles to white
  fill(255);
  drawPaddles();
  moveAiPaddle();
  controlPlayerPaddle();
  displayScore();
}

void keyPressed() {
  if (key == ' ') {
    if (gameState.equals("start") || gameState.equals("gameOver")) {
      initGame();
      gameState = "playing";
    }
  }
}

void initGame() {
  // Initialize ball in the center
  ballX = width / 2;
  ballY = height / 2;
  ballSpeedX = 2;
  ballSpeedY = 2;
  playerPaddleY = height / 2 - paddleHeight / 2;
  aiPaddleY = height / 2 - paddleHeight / 2;
  playerScore = 0;
  aiScore = 0;
}

void moveBall() {
  ballX += ballSpeedX;
  ballY += ballSpeedY;
}

void checkCollisions() {
  // Check for ball collision with top and bottom walls
  if (ballY <= 0 || ballY >= height) {
    ballSpeedY = -ballSpeedY;
  }
  
  // Ball passed the paddles
  if (ballX < 0) {
    aiScore++;
    ballX = width / 2;
    ballY = height / 2;
  } else if (ballX > width) {
    playerScore++;
    ballX = width / 2;
    ballY = height / 2;
  }
  
  // Check for ball collision with paddles
  if (ballX <= paddleWidth && ballY > playerPaddleY && ballY < playerPaddleY + paddleHeight || ballX >= width - paddleWidth && ballY > aiPaddleY && ballY < aiPaddleY + paddleHeight) {
    ballSpeedX = -ballSpeedX;
  }
}

void drawPaddles() {
  rect(0, playerPaddleY, paddleWidth, paddleHeight);
  rect(width - paddleWidth, aiPaddleY, paddleWidth, paddleHeight);
}

void moveAiPaddle() {
  aiPaddleY = ballY - paddleHeight / 2;
  aiPaddleY = constrain(aiPaddleY, 0, height - paddleHeight);
}

void controlPlayerPaddle() {
  if (keyPressed) {
    if (key == 'w') {
      playerPaddleY -= 2;
    } else if (key == 's') {
      playerPaddleY += 2;
    }
  }
  playerPaddleY = constrain(playerPaddleY, 0, height - paddleHeight);
}

void displayScore() {
  textAlign(CENTER);
  textSize(12);
  fill(255);
  text("Player: " + playerScore + " | AI: " + aiScore, width / 2, 15);
}

// Add game over condition based on score or another mechanism as desired
