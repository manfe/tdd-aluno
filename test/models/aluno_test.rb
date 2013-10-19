require 'test_helper'

class AlunoTest < ActiveSupport::TestCase
  
  test "não deve salvar aluno sem nome" do
    aluno = Aluno.new
    assert !aluno.save, "O aluno está sendo salvo sem nome."
  end
    
  test "deve salvar aluno quando os dados estão preenchidos" do
    aluno = Aluno.new
    aluno.nome = "Mauricio"
    aluno.idade = 23
    
    assert aluno.save, "O aluno com dados corretos deve ser salvo."
  end
end
