class FightsController < ApplicationController

    attr_writer :rand_seed

    def initialize(guess:)
        @guess = guess.downcase
    end

    def random_choice
        rand 500
    end

    def computer_choice
        srand (@rand_seed || random_choice)
        computer_choices = %w{rock paper scissors}
        computer_choices.sample
    end

    def winner_is
        if rule_engine[computer_choice.to_sym].include? @guess
            'Enemy Wins'
        elsif rule_engine[@guess.to_sym].include? computer_choice
            'You Win'
        else
            'Tie'
        end
    end

    def rule_engine
        {
            'rock': ['scissors'],
            'paper': ['rock'],
            'scissors': ['paper'],
        }
    end
end


