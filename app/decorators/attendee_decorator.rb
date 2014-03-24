class AttendeeDecorator < Draper::Decorator
  include Draper::LazyHelpers

  delegate_all

  def average_rate
    @rates = object.rates.map(&:value)
    @rates.reduce(0.0, :+) / @rates.count
  end

  def next
    list[position + 1]
  end

  def prev
    list[position - 1]
  end

  def position
    list.index{|attendee| attendee.id == id}
  end

  def list
    @list ||= object.class.order(:age.asc, :id.asc).to_a
  end
end