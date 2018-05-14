class HomeController < ApplicationController
  def index
    @posts =Post.all#포스틍서 모든 걸 꺼내와줘. 그걸 담을 변수를 psots로.
  end

  def create
    @post= Post.new#나는 이 포스트라는 모델안에 새로운걸 넣은거야. 근데 그걸 골뱅이 포스트라는 변수인 하나의 상자안에 안에 넣어서 보낼 거야.
    @post.title = params[:post_title]#포스트 언더바 타이틀은 어떻게 담길거라면, 포스트라는 모델에 타이틀을 넣을건데, 그 타이틀은 뉴파일에서 input에서 post_title이라는 정보가 title이라는거에 담길거고, 
    @post.content = params[:post_content]#post_content는 content에 담길거야.
    @post.save
    
    redirect_to '/home/index'
    #다시 글을 쓸 수 있도록 저장하고, 그걸 다 끝나면 다시 index쪽으로 돌아와줘.
    # @post <<바뀌어도 무관한 변수입니다!!
  end

  def new
  end
  
  
  def destroy
    post= Post.find(params[:id])
    post.destroy#찾은 게시물을 없애줘.
    
    redirect_to '/home/index'
  end
end
