namespace eval resistorColor {
    proc colorCode {color} {
        set code [lsearch -exact [colors] $color]
        if {$code > -1} {
            return $code
        } else {
            error "Invalid color: $color"
        }
    }

    proc colors {} {
        return {black brown red orange yellow green blue violet grey white}
    }
}
