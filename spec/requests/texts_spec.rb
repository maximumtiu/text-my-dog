require 'rails_helper'

RSpec.describe "Texts", type: :request do
  describe "POST /texts" do
    it 'creates an incoming text' do
      expect { post '/texts' }.to change { Texts::Incoming.count }.by 1
    end

    it 'creates an outgoing text' do
      expect { post '/texts' }.to change { Texts::Outgoing.count }.by 1
    end

    context 'from a new sender' do
      it 'creates a TextThread' do
        expect { post '/texts' }.to change { TextThread.count }.by 1
      end

      it 'responds with an attached image' do
        post '/texts'
        expect(Texts::Outgoing.last.attachment_link).not_to be nil
      end
    end

    context 'from an existing sender' do
      let(:thread) { FactoryGirl.create(:text_thread, sender: '+14044051234') }

      it 'does not create a TextThread' do
        expect { post '/texts' }.not_to change { TextThread.count }
      end

      it 'associates the new Text with the Text Thread' do
        post '/texts'
        expect(Text.last.text_thread_id).to eq thread.id
      end
    end
  end
end
