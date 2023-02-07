class ApplicationController < ActionController::Base
  layout("game_wrapper")
  before_action :set_comp_move

  # Add your actions below this line
  # ================================

  def root
    render({ template: "game_templates/root" })
  end

  def play_rock
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won"
    end
    render template: "game_templates/rock"
  end

  def play_paper
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end
    render template: "game_templates/paper"
  end

  def play_scissors
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    end
    render template: "game_templates/scissors"
  end

  private

  def set_comp_move
    @comp_move = ["rock", "paper", "scissors"].sample
  end
end
