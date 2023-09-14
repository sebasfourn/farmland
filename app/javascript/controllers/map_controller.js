import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl"; // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
    });
    this.#addMarkersToMap();
    this.#fitMapToMarkers();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      if (marker.custom_marker) {
        const customMarkerValues = marker.custom_marker;
        const customMarker = document.createElement("div");
        customMarker.innerHTML = customMarkerValues.marker_html;

        new mapboxgl.Marker(customMarker)
          .setLngLat([marker.lng, marker.lat])
          .addTo(this.map);
      } else {
        new mapboxgl.Marker()
          .setLngLat([marker.lng, marker.lat])
          .addTo(this.map);
      }
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat])
    );
    this.map.fitBounds(bounds, { padding: 30, maxZoom: 30, duration: 0 });
  }
}
