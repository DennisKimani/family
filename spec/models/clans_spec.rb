require 'rails_helper'

  describe Clan do
    it { should validate_presence_of :name }
    it { should validate_presence_of :quote }
  end
