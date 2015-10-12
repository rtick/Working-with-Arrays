require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do
  # code!
  #@years = [1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013]
  #add the years one at a time kind of defeats the purpose of coding
  @years = Array(1972..2013) #much easier

  erb :years, layout: :main
end

get '/states' do
  # code!
  @states = ["Utah", "Pennsylvania", "Alaska", "Indiana", "Texas"]
  # @states.sort
  @states.sort! #assume you didn't mean to comment this one out
  erb :states, layout: :main
end
