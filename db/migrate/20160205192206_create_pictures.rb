class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :url
      t.timestamps null: false
    end
  end
  def results
     @picture = Picture.find(params[:id])
     send_data(@picture.data,
                 :filename => @picture.name,
                #  :type => @picture.content_type,
                 :disposition => "inline")
  end

end
