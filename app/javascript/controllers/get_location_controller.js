import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    navigator.geolocation.getCurrentPosition(
      (position) => {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        initMap(latitude, longitude);
      },
      (error) => {
        console.error("Error getting user's location:", error);
      }
    );
    function initMap(latitude, longitude) {
      var map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: latitude, lng: longitude }, // 使用者所在地點的經緯度
        zoom: 12, // 地圖縮放級別
      });

      var request = {
        location: { lat: latitude, lng: longitude }, // 使用者所在地點的經緯度
        radius: "500", // 搜尋半徑（以公尺為單位）
        type: ["bar"], // 搜尋的類型（這裡設定為酒吧）
      };

      var service = new google.maps.places.PlacesService(map);
      service.nearbySearch(request, callback);

      function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
          for (var i = 0; i < results.length; i++) {
            createMarker(results[i]);
          }
        }
      }

      function createMarker(place) {
        var marker = new google.maps.Marker({
          map: map,
          position: place.geometry.location,
          title: place.name,
        });
      }
    }
  }
}
