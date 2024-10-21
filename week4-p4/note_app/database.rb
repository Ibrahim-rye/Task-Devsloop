require 'pstore'

class Database
  def initialize
    @store = PStore.new("notes.store")
  end

  def store(note)
    @store.transaction do
      @store[note.id.to_sym] = note
    end
  end

  def get_all
    notes = []
    @store.transaction do
      @store.roots.each do |id|
        notes.push(@store[id])
      end
    end
    notes
  end

  def delete(note)
    @store.transaction do
      @store.delete(note.id.to_sym)
    end
  end

end