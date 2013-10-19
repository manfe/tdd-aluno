require 'test_helper'

class AlunosControllerTest < ActionController::TestCase
  setup do
    @aluno = alunos(:joao) # uso da Fixture
  end

  test "deve acessar a página index através do método HTTP GET" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alunos)
  end

  test "deve acessar a página new através do método HTTP GET" do
    get :new
    assert_response :success
  end

  test "deve criar um aluno através do método HTTP CREATE" do
    assert_difference('Aluno.count') do
      post :create, aluno: alunos(:joao).attributes
    end

    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "deve mostrar o aluno através do método HTTP GET" do
    get :show, id: @aluno
    assert_response :success
  end

  test "deve acessar a página de edicão através do método HTTP GET" do
    get :edit, id: @aluno
    assert_response :success
  end

  test "deve atualizar um aluno, através do método HTTP UPDATE" do
    patch :update, id: @aluno, aluno: alunos(:maria).attributes
    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "deve deletar um aluno através do método HTTP destroy" do
    assert_difference('Aluno.count', -1) do
      delete :destroy, id: @aluno
    end

    assert_redirected_to alunos_path
  end
end
