require 'test_helper'

class MediSessionsControllerTest < ActionController::TestCase
  setup do
    @medi_session = medi_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medi_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medi_session" do
    assert_difference('MediSession.count') do
      post :create, medi_session: { private: @medi_session.private, time_end: @medi_session.time_end, time_start: @medi_session.time_start }
    end

    assert_redirected_to medi_session_path(assigns(:medi_session))
  end

  test "should show medi_session" do
    get :show, id: @medi_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medi_session
    assert_response :success
  end

  test "should update medi_session" do
    patch :update, id: @medi_session, medi_session: { private: @medi_session.private, time_end: @medi_session.time_end, time_start: @medi_session.time_start }
    assert_redirected_to medi_session_path(assigns(:medi_session))
  end

  test "should destroy medi_session" do
    assert_difference('MediSession.count', -1) do
      delete :destroy, id: @medi_session
    end

    assert_redirected_to medi_sessions_path
  end
end
