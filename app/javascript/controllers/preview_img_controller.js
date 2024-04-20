import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preview-img"
export default class extends Controller {
  connect() {
    const previewContainer = this.element.querySelector('#image-preview');
    const imageInput = this.element.querySelector('#image-input');

    imageInput.addEventListener('change', (event) => {
      this.previewImages(event.target.files, previewContainer);
    });
  }

  previewImages(files, container) {
    container.innerHTML = ''; // 清空容器

    for (const file of files) {
      const reader = new FileReader();

      reader.onload = function (e) {
        const imgElement = document.createElement('img');
        imgElement.src = e.target.result; // 設定圖片來源
        imgElement.classList.add('w-32', 'h-32', 'rounded-md', 'mr-2'); // 設定圖片樣式
        container.appendChild(imgElement); // 將圖片加入容器
      };

      reader.readAsDataURL(file); // 讀取圖片檔案
    }
  }
}
