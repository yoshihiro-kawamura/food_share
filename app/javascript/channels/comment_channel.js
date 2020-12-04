import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    const html = `
      <li class="comments_list">
        ${data.content.comment}
        ${data.user.nickname}
      </li>
  `;
  
    const comments = document.getElementById('comments');
    const newComment = document.getElementById('comment_comment');
    comments.insertAdjacentHTML('afterbegin', html);
    newComment.value='';
    const submit = document.getElementById("comment-btn");
    submit.disabled = false;
  }
});



