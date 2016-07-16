require 'rails_helper'

describe TodoListsController do


  let(:valid_attributes) { attributes_for(:todo_list) }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all todo_lists as @todo_lists" do
      todo_list = TodoList.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:todo_lists)).to eq([todo_list])
    end
  end

  describe "GET show" do
    xit "assigns the requested todo_list as @todo_list" do
      todo_list = TodoList.create! valid_attributes
      get :show, {:id => todo_list.to_param}, valid_session
      assigns(:todo_list).should eq(todo_list)
    end
  end

  describe "GET new" do
    xit "assigns a new todo_list as @todo_list" do
      get :new, {}, valid_session
      assigns(:todo_list).should be_a_new(TodoList)
    end
  end

  describe "GET edit" do
    xit "assigns the requested todo_list as @todo_list" do
      todo_list = TodoList.create! valid_attributes
      get :edit, {:id => todo_list.to_param}, valid_session
      assigns(:todo_list).should eq(todo_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      xit "creates a new TodoList" do
        expect {
          post :create, {:todo_list => valid_attributes}, valid_session
        }.to change(TodoList, :count).by(1)
      end

      xit "assigns a newly created todo_list as @todo_list" do
        post :create, {:todo_list => valid_attributes}, valid_session
        assigns(:todo_list).should be_a(TodoList)
        assigns(:todo_list).should be_persisted
      end

      xit "redirects to the created todo_list" do
        post :create, {:todo_list => valid_attributes}, valid_session
        response.should redirect_to(TodoList.last)
      end
    end

    describe "with invalid params" do
      xit "assigns a newly created but unsaved todo_list as @todo_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        TodoList.any_instance.stub(:save).and_return(false)
        post :create, {:todo_list => { "title" => "invalid value" }}, valid_session
        assigns(:todo_list).should be_a_new(TodoList)
      end

      xit "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TodoList.any_instance.stub(:save).and_return(false)
        post :create, {:todo_list => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      xit "updates the requested todo_list" do
        todo_list = TodoList.create! valid_attributes
        # Assuming there are no other todo_lists in the database, this
        # specifies that the TodoList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TodoList.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => todo_list.to_param, :todo_list => { "title" => "MyString" }}, valid_session
      end

      xit "assigns the requested todo_list as @todo_list" do
        todo_list = TodoList.create! valid_attributes
        put :update, {:id => todo_list.to_param, :todo_list => valid_attributes}, valid_session
        assigns(:todo_list).should eq(todo_list)
      end

      xit "redirects to the todo_list" do
        todo_list = TodoList.create! valid_attributes
        put :update, {:id => todo_list.to_param, :todo_list => valid_attributes}, valid_session
        response.should redirect_to(todo_list)
      end
    end

    describe "with invalid params" do
      xit "assigns the todo_list as @todo_list" do
        todo_list = TodoList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TodoList.any_instance.stub(:save).and_return(false)
        put :update, {:id => todo_list.to_param, :todo_list => { "title" => "invalid value" }}, valid_session
        assigns(:todo_list).should eq(todo_list)
      end

      xit "re-renders the 'edit' template" do
        todo_list = TodoList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TodoList.any_instance.stub(:save).and_return(false)
        put :update, {:id => todo_list.to_param, :todo_list => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    xit "destroys the requested todo_list" do
      todo_list = TodoList.create! valid_attributes
      expect {
        delete :destroy, {:id => todo_list.to_param}, valid_session
      }.to change(TodoList, :count).by(-1)
    end

    xit "redirects to the todo_lists list" do
      todo_list = TodoList.create! valid_attributes
      delete :destroy, {:id => todo_list.to_param}, valid_session
      response.should redirect_to(todo_lists_url)
    end
  end

end
