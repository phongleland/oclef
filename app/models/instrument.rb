# == Schema Information
#
# Table name: instruments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instrument < ActiveRecord::Base
  has_many :musicalities, dependent: :destroy
  has_many :teachers, :through => :musicalities
  
  def self.seed
    instruments = [
      {:id =>"26", :name => "Accompaniment"},
      {:id =>"27", :name => "Accordion"},
      {:id =>"51", :name => "Autoharp"},
      {:id =>"52", :name => "Band Instruments"},
      {:id =>"42", :name => "Bandura"},
      {:id =>"53", :name => "Bass Guitar"},
      {:id =>"18", :name => "Bassoon"},
      {:id =>"54", :name => "Braille Music"},
      {:id =>"55", :name => "Brass"},
      {:id =>"5", :name => "Cello"},
      {:id =>"56", :name => "Celtic Harp"},
      {:id =>"35", :name => "Chamber Ensemble"},
      {:id =>"57", :name => "Chinese Instruments"},
      {:id =>"36", :name => "Choral Conducting"},
      {:id =>"8", :name => "Clarinet"},
      {:id =>"25", :name => "Composition"},
      {:id =>"30", :name => "Conducting"},
      {:id =>"24", :name => "Electone"},
      {:id =>"58", :name => "English Horn"},
      {:id =>"23", :name => "Euphonium"},
      {:id =>"7", :name => "Flute"},
      {:id =>"37", :name => "Fortepiano"},
      {:id =>"19", :name => "French Horn"},
      {:id =>"6", :name => "Guitar"},
      {:id =>"33", :name => "Harp"},
      {:id =>"31", :name => "Harpsichord"},
      {:id =>"59", :name => "Improvisation"},
      {:id =>"60", :name => "Lute"},
      {:id =>"61", :name => "Mandolin"},
      {:id =>"38", :name => "Marimba"},
      {:id =>"41", :name => "Music Education"},
      {:id =>"44", :name => "Music History"},
      {:id =>"32", :name => "Music Theory"},
      {:id =>"29", :name => "Music Therapy"},
      {:id =>"62", :name => "Musicianship"},
      {:id =>"63", :name => "Musicology"},
      {:id =>"9", :name => "Oboe"},
      {:id =>"2", :name => "Organ"},
      {:id =>"43", :name => "Pedagogy"},
      {:id =>"39", :name => "Percussion"},
      {:id =>"1", :name => "Piano"},
      {:id =>"28", :name => "Piccolo"},
      {:id =>"40", :name => "Recorder"},
      {:id =>"10", :name => "Saxophone"},
      {:id =>"34", :name => "String Bass"},
      {:id =>"65", :name => "Suzuki"},
      {:id =>"20", :name => "Trombone"},
      {:id =>"21", :name => "Trumpet"},
      {:id =>"22", :name => "Tuba"},
      {:id =>"4", :name => "Viola"},
      {:id =>"3", :name => "Violin"},
      {:id =>"68", :name => "Voice"},
      {:id =>"67", :name => "Woodwinds"}
    ]
    instruments.each do |i|
      Instrument.find_or_create_by({:name => i[:name]})
    end
  end
end
