(setq calendar-holidays
      (append calendar-holidays
              '(
                ;;纪念日
                (holiday-lunar 12 21 "我的生日" 0)
                (holiday-lunar 7 19 "老婆生日" 0)
                (holiday-fixed 10 26 "无我生日")
                (holiday-fixed 5 14 "夏恩生日")
                )))
