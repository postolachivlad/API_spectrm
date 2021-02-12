class Api::V1::MessagesController < Api::V1::BaseController
  before_action :set_message, only: [:show, :update, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def update
    @message.update(message_params) ? (render :show) : render_error
  end

  def create
    # Check if Message already exist
    @message = Message.find_by(content: params[:message][:content])
    # If exist increment It's counter in DB else create new Message
    @message ? counter_increment(@message) : create_new_message
  end

  def destroy
    @message.destroy
    head :no_content
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content, :counter)
  end

  def render_error
    render json: { errors: @message.errors.full_messages },
           status: :unprocessable_entity
  end

  def create_new_message
    @message = Message.new(message_params)
    @message.save ? (render :show, status: :created) : render_error
  end

  def counter_increment(message)
    message.counter += 1
    message.save
    render :show, status: :created
  end
end
