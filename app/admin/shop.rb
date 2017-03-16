ActiveAdmin.register Shop do

permit_params :name, :desc, :avatar

form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :desc
      f.input :avatar, required: true, as: :file
    end
    f.actions
end

show do |ad|
  attributes_table do
    row :name
    row :desc
    row :avatar do
      image_tag(ad.avatar.url(:thumb))
    end
    # Will display the image on show object page
  end
 end


 index do
   selectable_column
   column :name
   column :desc
   column :avatar do |product|
    image_tag product.avatar.url(:thumb)
  end
   actions
 end

end
