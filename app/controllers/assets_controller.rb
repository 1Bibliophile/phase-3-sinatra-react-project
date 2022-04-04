class AssetsController < ApplicationController

  # GET: /assets
  get "/assets" do
    Asset.all.to_json(include: [subsidiaries: {except: [:created_at, :updated_at]}], except: [:created_at, :updated_at])
  end

  # POST: /assets
  post "/assets" do
    asset = Asset.new(params)
    if asset.save
      asset.to_json(include :subsidiaries)
    else
      asset.errors.full_messages.to_sentence
    end

    /
    asset = Asset.create(params)
    if asset.id
      asset.to_json(include :subsidiaries)
    else
      asset.errors.full_messages.to_sentence
    end
    /
  end

  # GET: /assets/5
  get "/assets/:id" do
    asset = Assets.to_json.find_by_id(params["id"])
  end

  # PATCH: /assets/5
  patch "/assets/:id" do
    asset = Assets.to_json.find_by_id(params["id"])
    if asset && asset.update(params["id"])
         asset.to_json(include :subsidiaries)
    elsif !asset
         {errors: "Record not found with id #{params['id']}"}.to_json
    else
         {errors: asset.errors.full_messages.to_sentence}.to_json
    end
 end

  # DELETE: /assets/5/delete
  delete "/assets/:id" do
    find_asset
    if asset&.destroy
       {messages: "Record successfully destroyed"}.to_json
    else
        {messages: "Record not found with id #{params['id']}"}.to_json
    end
end

private

  def find_asset
    asset = Assets.find_by_id(params["id"])
  end
end
