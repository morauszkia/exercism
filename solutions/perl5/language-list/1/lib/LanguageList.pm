package LanguageList;

use v5.40;

our @Languages;

sub add_language ($language) {
    push(@Languages, $language)
}

sub remove_language () {
    pop(@Languages)
}

sub first_language () {
    return $Languages[0]
}

sub last_language () {
    return $Languages[-1]
}

sub get_languages (@elements) {
    my @sub_array;
    for my $element (@elements)
    {
        push(@sub_array, $Languages[$element - 1])
    }
    return @sub_array
}

sub has_language ($language) {
    return grep(/^$language$/, @Languages)
}

1;
