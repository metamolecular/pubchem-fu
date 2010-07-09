set :path, '~/local/pubchem'

every 1.day, :at => "1am" do
  rake "daily"
end
