(ns leap)

(defn leap-year? [year] ;; <- argslist goes here
  (if (and (zero? (mod year 4)) (or (not(zero? (mod year 100))) (zero? (mod year 400)))) true false)
)
