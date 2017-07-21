# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


photo = Photo.new
user = User.new("Sophie")
user.add_photo(photo)
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]


class User

  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = []
  end

  def add_photo(photo)
    self.photos << photo
    photo.user = self
  end

end

class Photo
  attr_accessor :user, :comments

  def initialize
    @comments = []
  end

  def make_comment(text)
    self.comments << Comment.new(text)
  end

end


class Comment
  attr_accessor :text

  @@all = []

  def initialize(text)
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

end
