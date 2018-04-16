require 'rspec'
require 'pry'

def format_duration(seconds, yr=0, d=0, hr=0, min=0)
  if seconds >= 31536000
    yr = seconds / 31536000
    seconds = seconds % 31536000
    yr > 1 ? yr = "#{yr} years" : yr = "#{yr} year"
    format_duration(seconds, yr)
  elsif seconds >= 86400
    d = seconds / 86400
    seconds = seconds % 86400
    d > 1 ? d = "#{d} days" : d = "#{d} day"
    format_duration(seconds, yr, d)
  elsif seconds >= 3600
    hr = seconds / 3600
    seconds = seconds % 3600
    hr > 1 ? hr = "#{hr} hours" : hr = "#{hr} hour"
    format_duration(seconds, yr, d, hr)
  elsif seconds >= 60
    min = seconds / 60
    seconds = seconds % 60
    min > 1 ? min = "#{min} minutes" : min = "#{min} minute"
    format_duration(seconds, yr, d, hr, min)
  else
    if seconds > 1
      seconds = "#{seconds} seconds"
    elsif seconds == 0
      seconds
    else
      seconds = "#{seconds} second"
    end
    fin = [yr, d, hr, min, seconds]
    fin = fin.select{|time| time.class == String}
    finalizer(fin)
  end
end

def finalizer(fin)
  if fin.empty?
    "now"
  elsif fin.length >= 2
    fin.each_with_index do |time, index|
      if time == fin[-2]
        time << " and"
        break
      else
        time << ","
      end
    end
    fin.join(' ')
  else
    fin.join('')
  end
end

describe "given a number of seconds" do
  it "changes that into a human readble string" do
    expect(format_duration(1)).to eq("1 second")
    expect(format_duration(62)).to eq("1 minute and 2 seconds")
    expect(format_duration(120)).to eq("2 minutes")
    expect(format_duration(3600)).to eq("1 hour")
    expect(format_duration(3662)).to eq("1 hour, 1 minute and 2 seconds")
  end
end
