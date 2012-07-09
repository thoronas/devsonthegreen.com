class Attendee
  include ::DataMapper::Resource

  property :id, Serial
  property :nickname, String, :required => true
  property :twitter_id, String, :required => true
  property :guests, Integer
  property :comment, Text

  # A Simple method to detail how wonderul my girlfriend is
  #
  # @example
  #   attendee = Attendee.new
  #   attendee.is_kate_wonderful? #=> true
  #
  # @return [Boolean]
  def is_kate_wonderful?
    #kate is the most wonderfulist => true
    true
  end

end
