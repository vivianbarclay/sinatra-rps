require "sinatra"
require "sinatra/reloader"

rock_paper_scissors_array = ["rock", "paper", "scissors"]

get("/rock") do
  user_play = "rock"
  computer_play = rock_paper_scissors_array.sample
  if computer_play == "rock"
    outcome = "tied"
  elsif computer_play == "scissors"
    outcome = "won"
  else
    outcome = "lost"
  end

"
  <div><a href='/rock'>Play Rock</a></div>
  <div><a href='/paper'>Play Paper</a></div>
  <div><a href='/scissors'>Play Scissors</a></div>

  <p style='font-size: 24px;'><strong>We played #{user_play}!</strong></p>
  <p style='font-size: 24px;'><strong>They played #{computer_play}!</strong></p>
  <p style='font-size: 24px;'><strong>We #{outcome}!</strong></p>

  <p><a href='/'>Rules</a></p>

"
end

get("/paper") do
  user_play = "paper"
  computer_play = rock_paper_scissors_array.sample
  if computer_play == "rock"
    outcome = "won"
  elsif computer_play == "scissors"
    outcome = "lost"
  else
    outcome = "tied"
  end

"
  <div><a href='/rock'>Play Rock</a></div>
  <div><a href='/paper'>Play Paper</a></div>
  <div><a href='/scissors'>Play Scissors</a></div>

  <p style='font-size: 24px;'><strong>We played #{user_play}!</strong></p>
  <p style='font-size: 24px;'><strong>They played #{computer_play}!</strong></p>
  <p style='font-size: 24px;'><strong>We #{outcome}!</strong></p>

  <p><a href='/'>Rules</a></p>

"
end

get("/scissors") do
  user_play = "scissors"
  computer_play = rock_paper_scissors_array.sample
  if computer_play == "rock"
    outcome = "lost"
  elsif computer_play == "scissors"
    outcome = "tied"
  else
    outcome = "won"
  end

"
  <div><a href='/rock'>Play Rock</a></div>
  <div><a href='/paper'>Play Paper</a></div>
  <div><a href='/scissors'>Play Scissors</a></div>

  <p style='font-size: 24px;'><strong>We played #{user_play}!</strong></p>
  <p style='font-size: 24px;'><strong>They played #{computer_play}!</strong></p>
  <p style='font-size: 24px;'><strong>We #{outcome}!</strong></p>

  <p><a href='/'>Rules</a></p>

"
end

get("/") do
  "
  <div><a href='/rock'>Play Rock</a></div>
  <div><a href='/paper'>Play Paper</a></div>
  <div><a href='/scissors'>Play Scissors</a></div>

  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>From <a href='https://en.wikipedia.org/wiki/Rock_paper_scissors' target='_blank'>Wikipedia</a>:</p>

  <p> Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand. </p>

  <p> These shapes are:
    <ul>
      <li>\"rock\" (a closed fist)</li>
      <li>\"paper\" (a flat hand)</li>
      <li>\"scissors\" (a fist with the index and middle fingers extended, forming a V)</li>
    </ul>
  </p>

  <p> A player who decides to play rock will beat another player who has chosen scissors (\"rock crushes scissors\" or sometimes \"blunts scissors\"), but will lose to one who has played paper (\"paper covers rock\"); a play of paper will lose to a play of scissors (\"scissors cut[s] paper\"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>
  
  <table border='1'>
  <tr>
    <td rowspan='2' colspan='2'></td>
    <td colspan='3'>and they play...</td>
  </tr>
  <tr>
    <td>Rock</td>
    <td>Paper</td>
    <td>Scissors</td>
  </tr>
  <tr>
    <td rowspan='3'>If we play...</td>
    <td>Rock</td>
    <td>We tie</td>
    <td>We lose</td>
    <td>We win</td>
  </tr>
  <tr>
    <td>Paper</td>
    <td>We win</td>
    <td>We tie</td>
    <td>We lose</td>
  </tr>
  <tr>
    <td>Scissors</td>
    <td>We lose</td>
    <td>We win</td>
    <td>We tie</td>
  </tr>
  </table>
  
  <p>Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with \"rock\" sometimes being called \"stone\".</p>

  <div><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png' alt='Rock-Paper-Scissors Image' style='max-width: 100%; height: auto; display: block;'></div>
  
  <p>A chart showing how the three game elements interact</p>

  <div><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg' alt='Japanese image showing three people playing rock-paper-scissors' style='max-width: 100%; height: auto; display: block;'></div>
  <p>Kitsune-ken was a popular Japanese rock–paper–scissors variant.</p>
  
  <div><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg' alt='Picture showing the movements of Japanese rock-paper-scissors' style='max-width: 100%; height: auto; display: block;'></div>
  <p>Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>

   "
end
