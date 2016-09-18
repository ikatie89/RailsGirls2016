class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end
	def show 
		@entry = Entry.find(params["id"])

		@next = Entry.where("updated_at >?", @entry.updated_at).first
		

		@back = Entry.where("updated_at <?", @entry.updated_at).last
	end

	def new 
		@entry = Entry.new


	end	

	def create
		entry_params = params["entry"].permit("title", "contents", "photo")
		@entry = Entry.new(entry_params)
		if @entry.save
			redirect_to(entry_path(@entry))
		else 
			render "new"
	end
	end

	def edit
 		@entry = Entry.find(params["id"])
	end

	def update
  		entry_params = params["entry"].permit("title", "contents", "photo")
  		@entry = Entry.find(params["id"])
		@entry.assign_attributes(entry_params)
  			if @entry.save
				redirect_to(entry_path(@entry))
			else 
				render "edit"
			end
  		
	end

	def destroy
		@entry = Entry.find(params["id"])
		@entry.destroy
		redirect_to(entries_path)
	end


end