require 'test_helper'

class CreationsControllerTest < ActionController::TestCase
  setup do
    @creation = creations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creation" do
    assert_difference('Creation.count') do
      post :create, creation: { bleed: @creation.bleed, client_id: @creation.client_id, color_space: @creation.color_space, created_at: @creation.created_at, description: @creation.description, designer_id: @creation.designer_id, estimate_id: @creation.estimate_id, file_content_type: @creation.file_content_type, file_file_name: @creation.file_file_name, file_file_size: @creation.file_file_size, file_updated_at: @creation.file_updated_at, hours: @creation.hours, name: @creation.name, project_id: @creation.project_id, revision: @creation.revision, stage: @creation.stage, status: @creation.status, updated_at: @creation.updated_at }
    end

    assert_redirected_to creation_path(assigns(:creation))
  end

  test "should show creation" do
    get :show, id: @creation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creation
    assert_response :success
  end

  test "should update creation" do
    patch :update, id: @creation, creation: { bleed: @creation.bleed, client_id: @creation.client_id, color_space: @creation.color_space, created_at: @creation.created_at, description: @creation.description, designer_id: @creation.designer_id, estimate_id: @creation.estimate_id, file_content_type: @creation.file_content_type, file_file_name: @creation.file_file_name, file_file_size: @creation.file_file_size, file_updated_at: @creation.file_updated_at, hours: @creation.hours, name: @creation.name, project_id: @creation.project_id, revision: @creation.revision, stage: @creation.stage, status: @creation.status, updated_at: @creation.updated_at }
    assert_redirected_to creation_path(assigns(:creation))
  end

  test "should destroy creation" do
    assert_difference('Creation.count', -1) do
      delete :destroy, id: @creation
    end

    assert_redirected_to creations_path
  end
end
