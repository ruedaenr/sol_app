class StaticPagesController < ApplicationController
  def home
    @image_array = ['image1.jpg', 'image2.jpg', 'image3.jpg',
                    'image4.jpg', 'image5.jpg']
    @rand_result = (0..4).to_a.shuffle.first
  end

  def help
  end

  def about
  end

  def contact
  end
end
