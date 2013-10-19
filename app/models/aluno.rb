class Aluno < ActiveRecord::Base
    
  validates :nome, :presence => true
  validates :idade, :presence => true
  
end