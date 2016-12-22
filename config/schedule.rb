every 1.minute do # 1.minute 1.day 1.week 1.month 1.year is also supported
  command 'echo "hello"'
  rake "rank:get_rank", :output => {:error => 'error.log', :standard => 'cron.log'}
end