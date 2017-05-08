class PagesController < ApplicationController
  def letsencrypt
    if params[:id] == ENV['LETS_ENCRYPT_ID']
      render text: ENV['LETS_ENCRYPT_PASS']
    else
      render text: nil
    end
  end
end
