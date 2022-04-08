require 'pry'
class SubsidiariesController < ApplicationController

    # GET: /subsidiaries
    get "/subsidiaries" do
      Subsidiary.all.to_json(include: [asset: {except: [:created_at, :updated_at]}], except: [:created_at, :updated_at])
    end
  
    # POST: /subsidiaries
    post "/subsidiaries" do
      @subsidiary = Subsidiary.create(params)
      if @subsidiary.id
        @subsidiary.to_json(include: :asset)
      else
        @subsidiary.errors.full_messages.to_sentence
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
  
    # GET: /subsidiaries/5
    get "/subsidiaries/:id" do
        find_subsidiary
        if @subsidiary
            binding.pry
            @subsidiary.to_json
        else
            {errors: "Record not found with #{params['id']}"}.to_json
        end
    end
  
    # PATCH: /subsidiaries/5
    patch "/subsidiaries/:id" do
        find_subsidiary
        if @subsidiary && subsidiary.update(params)
            @subsidiary.to_json(include: :subdivisions)
        elsif !subsidiary
            {errors: "Record not found with id #{params['id']}"}
        else
            {errors: @subsidiary.full_messages.to_sentence}.to_json
        end
    end
  
    # DELETE: /subsidiaries/5/delete
    delete "/subsidiaries/:id" do
        
        if @subsidiary&.destroy
            {messages: "Record successfully destroyed"}.to_json
        else
            {errors: "Record not found with #{params['id']}"}.to_json
        end
    end

    private
    def find_subsidiary
        @subsidiary = Subsidiary.find_by_id(params["id"])
    end
  end
  