class TextsController < ApplicationController
  # POST /texts
  def create
    @incoming = Texts::Incoming.new(incoming_text_params)
    if @incoming.save
    else
      render plain: 'Cannot create text; params invalid'
    end
  end

  private

  def incoming_text_params
    params.fetch(:text, {})
  end
end
