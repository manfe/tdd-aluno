class AlunosFlowTest < ActionDispatch::IntegrationTest
  
  test 'navegar no formulário do aluno' do
    visit('/alunos/new')
    within("//form[@id='new_aluno']") do
         fill_in 'aluno[nome]', :with => 'Mauricio'
         fill_in 'aluno[idade]', :with => '23'
    end
    click_on 'Salvar'
    
    assert page.has_content?('Aluno criado com sucesso.'), "Falha ao criar o aluno."
  end
end