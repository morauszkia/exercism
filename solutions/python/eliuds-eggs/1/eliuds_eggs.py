def egg_count(display_value):
    return (
        0 if display_value == 0 else display_value % 2 + egg_count(display_value // 2)
    )
