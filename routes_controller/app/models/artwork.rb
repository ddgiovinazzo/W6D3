# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :index_artworks_on_artist_id_and_title, presence: true, uniqueness: true

    belongs_to :artist,
        primary: :id,
        foreign_key: :artist_id,
        class_name: :User
end
