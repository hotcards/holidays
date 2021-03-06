# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/hotcards.yaml
  #
  # To use the definitions in this file, load it right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/hotcards'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module Hotcards # :nodoc:
    def self.defined_regions
      [:hotcards]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :observed => lambda { |date| Holidays.to_monday_if_sunday(date) }, :observed_id => "to_monday_if_sunday", :name => "New Year's Day", :regions => [:hotcards]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:hotcards]}],
      7 => [{:mday => 4, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "Independence Day", :regions => [:hotcards]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:hotcards]}],
      11 => [{:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:hotcards]},
            {:wday => 5, :week => 5, :name => "Day After Thanksgiving", :regions => [:hotcards]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:hotcards]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::Hotcards.defined_regions, Holidays::Hotcards.holidays_by_month)
