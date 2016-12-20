class StarsController < ApplicationController
  def index
    @repos = Star.distinct.pluck(:repository)
  end

  def show
    @stars = Star.where(repository: "#{params[:owner]}/#{params[:name]}")
    @counts = @stars.group_by_month(:starred_at).count
    @result = {}
    @decayed_result = {}
    keys = []

    @counts.each_with_index do |(key, _value), index|
      keys << key
      @result[key] = @counts.values_at(*keys).sum
    end

    max_age = 365.0*2
    @counts.each do |date, count|
      age = Date.today - date
      age = max_age if age > max_age
      decay = age/max_age
      @counts[date] = count.to_f*(1-decay)
    end
    keys = []
    @counts.each_with_index do |(key, _value), index|
      keys << key
      @decayed_result[key] = @counts.values_at(*keys).sum
    end
  end
end
