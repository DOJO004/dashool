import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="add-like"
export default class extends Controller {
  static targets = ['link', 'like_count'];
  connect() {
    this.get_like();
  }

  add_like() {
    fetch('/likes', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]')
          .content,
      },
      body: JSON.stringify({
        cocktail_id: this.linkTarget.dataset.cocktailId,
      }),
    })
      .then((response) => response.json())
      .then((data) => {
        this.get_like();
      })
      .catch((error) => console.log(error));
  }

  get_like() {
    const cocktailId = this.linkTarget.dataset.cocktailId;
    fetch(`/likes/${cocktailId}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        this.updateLikesCount(data.likes_count);
        this.check_liked(data.current_user_liked);
      })
      .catch((error) => console.log(error));
  }

  check_liked(liked) {
    if (liked) {
      this.linkTarget.classList.add('bg-red-500');
    } else {
      this.linkTarget.classList.remove('bg-red-500');
    }
  }

  updateLikesCount(count) {
    const like_count_container = this.like_countTarget;
    like_count_container.innerHTML = count;
  }
}
