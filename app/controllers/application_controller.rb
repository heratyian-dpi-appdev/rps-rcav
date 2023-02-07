class ApplicationController < ActionController::Base
  layout("wrapper")

  # Add your actions below this line
  # ================================

  def root
    render({ template: "game_templates/root" })
  end

  def play_rock
    render({ template: "game_templates/rock" })
  end

  def play_paper
    render({ template: "game_templates/paper" })
  end

  def play_scissors
    render({ template: "game_templates/scissors" })
  end
end
