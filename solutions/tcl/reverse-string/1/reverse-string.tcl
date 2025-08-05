proc reverse {input} {
    return [join [lreverse [split $input ""]] ""]
}
