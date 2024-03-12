# frozen_string_literal: true

require 'date'

def movie_end_time(movie_length, movie_start_time)
  start_time = DateTime.strptime(movie_start_time, '%H%M')
  end_time = start_time + (movie_length.to_i / 1440.0)
  end_time.strftime('%H:%M')
end

puts '> Enter the movie length in minutes:'
movie_length = gets.chomp
puts '> Enter the movie start time in 24-hour format (HHMM):'
movie_start_time = gets.chomp

end_time = movie_end_time(movie_length, movie_start_time)

puts "> The movie will end at #{end_time}"
