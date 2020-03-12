# frozen_string_literal: true

class SecretsController < ApplicationController
  def login; end

  def home; end

  def show
    redirect_to sessions_new_path unless current_user
  end
end
