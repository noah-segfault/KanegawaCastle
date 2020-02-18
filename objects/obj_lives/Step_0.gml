if ((room = room_gameover) || (room = room_level_select))
{
 with (self)
 {
 instance_destroy();
    }
}

if (lives <= 0)
{
    room_goto(room_gameover);
}

/// 1-Up System
if (score = scoreBenchmark * 100)
     {
          scoreBenchmark = scoreBenchmark + 1;
          lives = lives + 1;
     }

