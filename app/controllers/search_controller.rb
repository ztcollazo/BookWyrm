# frozen_string_literal: true

# The controller for searches: search all, just books, or just authors
class SearchController < ApplicationController
  def index
    redirect_to request.referer || root_url, flash: { warning: 'Search can\'t be blank.' } if params[:q].blank?
    @books_results = Book.search_books(params[:q]).limit(5)
    @authors_results = Author.search_authors(params[:q]).limit(2)
  end

  def books
    redirect_to request.referer || root_url, flash: { warning: 'Search can\'t be blank.' } if params[:q].blank?
    @results = Book.search_books(params[:q]).paginate(page: params[:page], per_page: 10)
  end

  def authors
    redirect_to request.referer || root_url, flash: { warning: 'Search can\'t be blank.' } if params[:q].blank?
    @results = Author.search_authors(params[:q]).paginate(page: params[:page], per_page: 10)
  end
end
