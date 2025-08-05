proc raindrops {number} {
    set sounds {{3 Pling} {5 Plang} {7 Plong}}
    set raindrops ""
    foreach sound $sounds {
        lassign $sound num drop
        if { $number % $num == 0 } {
            append raindrops $drop
        }
    }
    if {$raindrops eq ""} {
        return $number
    } else {
        return $raindrops
    }
}
