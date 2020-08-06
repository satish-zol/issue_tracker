class Api::V1::IssuesController < ApplicationController

	def index
		page = params[:page] || 1
		page_size = params[:page_size] || 50
		sort_order = params[:sort_order] || "DESC"
		issues = Issue.query_db(params).page(page).per(page_size).order("created_at " + sort_order)
		render json: {issues: issues}
	end
end
