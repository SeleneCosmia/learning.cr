require "raylib-cr"
require "raylib-cr/rlgl"

ww = 1080
wh = 800

alias Rl = Raylib
alias KK = Raylib::KeyboardKey


box_a = Rl::Rectangle.new

box_a.x = ww/2.0 - 20
box_a.y = wh/2.0 - 10
box_a.width = 40
box_a.height = 40


Rl.init_window(ww, wh, "Raylib starter!")
Raylib.set_target_fps(60)

until Rl.close_window?
#  if Rl.key_pressed?(KK::"1")
#    Rl.clear_background(Rl::PURPLE)
#    Rl.draw_text("Now the background is purple!", 50, 50, Rl::BLACK)
#  end

#  if Rl.key_pressed?(KK::"2")
#    Rl.clear_background(Rl::BROWN)
#    Rl.draw_text("Now it's brown!", 50, 50, Rl::BEIGE)
#    Rl.draw_rectangle_rec(box_a, Rl::PINK)
#  end

  Rl.begin_drawing
  Rl.clear_background Rl::PINK
  Rl.draw_rectangle_rec(box_a, Rl::BLACK)

  Rl.end_drawing
end

Rl.close_window
