# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
    
end

class Photo
    aatr_reader :user, :comments

    def initialize
        @comments = []
    end

    def user=(user_obj)
        @user = user_obj
        user_obj.photos << self
    end

    def make_comment(text)
        new_comment  Comment.new(text)
        self.comments << new_comment
        new_comment.photo = self
        new_comment
    end


end

class Comment
    @@all = []
    def initialize
        @@all << self
    end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
