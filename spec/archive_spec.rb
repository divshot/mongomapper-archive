require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Mongomapper::Archive do
  context 'destroy' do
    let!(:journal) { Journal.create(title: "My big adventure", body: "I had the *best* day...") }

    it 'should copy the journal to the archive collection' do
      expect{ journal.destroy }.to change(Journal.archive, :count).by(1)
    end

    it 'should still destroy the journal' do
      expect{ journal.destroy }.to change(Journal, :count).by(-1)
    end
  end
end