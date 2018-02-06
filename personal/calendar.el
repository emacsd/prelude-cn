(prelude-require-packages '(cal-china-x))
(require 'cal-china-x)

(setq calendar-holidays
      '((holiday-chinese-new-year)
        (holiday-fixed 1 1 "元旦节")
        (holiday-fixed 2 14 "情人节")
        (holiday-fixed 4 1 "愚人节")
        (holiday-float 5 0 2 "母亲节")
        (holiday-float 6 0 3 "父亲节")
        (holiday-fixed 10 31 "万圣节")
        (holiday-float 11 4 4 "感恩节")
        (holiday-fixed 12 25 "圣诞节")
        (holiday-chinese 1 15 "元宵节")
        (holiday-solar-term "清明" "清明节")
        (holiday-chinese 5 5 "端午节")
        (holiday-chinese 7 7 "七夕节")
        (holiday-chinese 8 15 "中秋节")
        (holiday-chinese 9 9 "重阳节")

        (holiday-sexp calendar-daylight-savings-starts
                      (format "Daylight Saving Time Begins %s"
                              (solar-time-string
                               (/ calendar-daylight-savings-starts-time
                                  (float 60))
                               calendar-standard-time-zone-name)))
        (holiday-sexp calendar-daylight-savings-ends
                      (format "Daylight Saving Time Ends %s"
                              (solar-time-string
                               (/ calendar-daylight-savings-ends-time
                                  (float 60))
                               calendar-daylight-time-zone-name))))
      )

(setq mark-holidays-in-calendar t)
