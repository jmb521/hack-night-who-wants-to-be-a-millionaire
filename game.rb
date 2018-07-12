require './player.rb'
require 'json'
require 'pry'

class Game
  attr_reader :g_questions

  def initialize
    @g_questions = Game.game_questions
    binding.pry
  end

  def self.parse_json
    file = File.read('./questions.json')
    questions = JSON.parse(file)

  end

  def self.game_questions
    r = Random.new
    rgame = r.rand(0..4)

    Game.parse_json["games"][rgame]
  end

end

Game.new
