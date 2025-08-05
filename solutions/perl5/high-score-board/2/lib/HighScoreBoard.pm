package HighScoreBoard;

use v5.40;

our %Scores;

sub set_player_scores (%new_scores) {
    while(my ($name, $score) = each(%new_scores)) 
    {
        $Scores{$name} = $score
    }
    return %Scores
}

sub get_player_score ($player) {
    return $Scores{$player}
}

sub increase_player_scores (%additional_scores) {
    while(my ($name, $additional) = each(%additional_scores))
    {
        $Scores{$name} += $additional
    }
    return %Scores
}

sub sort_players_by_name {
    return sort(keys(%Scores))
}

sub sort_players_by_score {
    return sort { $Scores{$b} <=> $Scores{$a} } keys %Scores
}

sub delete_player ($player) {
    return delete($Scores{$player})
}

1;
