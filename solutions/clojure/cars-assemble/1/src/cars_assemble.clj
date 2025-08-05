(ns cars-assemble)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (def total (* speed 221.0))
  (cond (= speed 0) 0.0
        (< speed 5) total
        (< speed 9) (* total 0.9)
        (= speed 9) (* total 0.8)
        :else (* total 0.77))
  )

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60))
  )
