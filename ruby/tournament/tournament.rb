# frozen_string_literal: false

# class Tournament creates a table showing tournament statistics
class Tournament
  def self.tally(input)
    @teams = {}

    all_matches = input.split("\n")
    analyze_matches(all_matches)

    tally = <<~TALLY
      Team                           | MP |  W |  D |  L |  P
    TALLY

    sort_teams_by_points_then_name
    add_scores_to_tally(tally)
  end

  class << self
    private

    def analyze_matches(all_matches)
      all_matches.each do |match|
        match_details = match.split(';')
        team1 = match_details[0]
        team2 = match_details[1]
        result = match_details[2]

        [team1, team2].each { |team| process_team(team) }
        adjust_score(result, team1, team2)
      end
    end

    def process_team(team)
      @teams.keys.none?(team) ? add_team(team) : @teams[team][:MP] += 1
    end

    def add_scores_to_tally(tally)
      @teams.each do |team, scores|
        tally << "#{team.ljust(31)}|  #{scores[:MP]} |  #{scores[:W]} | " \
          " #{scores[:D]} |  #{scores[:L]} |  #{scores[:P]}\n"
      end
      tally
    end

    def sort_teams_by_points_then_name
      @teams = @teams.sort do |(team, score), (bteam, bscore)|
        comp = (bscore[:P] <=> score[:P])
        comp = team <=> bteam if comp.zero?
        comp
      end.to_h
    end

    def add_team(team)
      @teams[team] = { MP: 1, W: 0, D: 0, L: 0, P: 0 }
    end

    def team1_wins(team1, team2)
      @teams[team1][:W] += 1
      @teams[team1][:P] += 3
      @teams[team2][:L] += 1
    end

    def team2_wins(team1, team2)
      @teams[team1][:L] += 1
      @teams[team2][:W] += 1
      @teams[team2][:P] += 3
    end

    def draw(team1, team2)
      @teams[team1][:D] += 1
      @teams[team2][:D] += 1
      @teams[team1][:P] += 1
      @teams[team2][:P] += 1
    end

    def adjust_score(result, team1, team2)
      case result
      when 'win'
        team1_wins(team1, team2)
      when 'loss'
        team2_wins(team1, team2)
      when 'draw'
        draw(team1, team2)
      end
    end
  end
end
