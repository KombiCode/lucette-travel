import mapboxgl from '!mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

let map;
let markers;
let bounds;

let mapMarkers = []

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11'
  });
};

const addActivityMarkerToMap = (activityId) => {
  const activity_marker = markers.find(item => item["id"] == activityId);
  const popup = new mapboxgl.Popup().setHTML(activity_marker.infoWindow);
  // Create a HTML element for your custom marker
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${activity_marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '25px';
  element.style.height = '25px';
  // Pass the element as an argument to the new marker
  const map_marker = new mapboxgl.Marker(element);
  map_marker.setLngLat([activity_marker.lng, activity_marker.lat])
  map_marker.setPopup(popup)
  map_marker.addTo(map);
  // Fit
  bounds.extend([ activity_marker.lng, activity_marker.lat ])
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  // Add to array
  mapMarkers.push(map_marker)
}

const showActivity = (activityId) => {
  // removing
  mapMarkers.forEach((marker) => marker.remove())
  mapMarkers = []
  // adding the one for the activity
  addActivityMarkerToMap(activityId);
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    map = buildMap(mapElement);
    markers = JSON.parse(mapElement.dataset.markers);
    bounds = new mapboxgl.LngLatBounds()
    // No more search as we display a small map only to see current activity loacation
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }));
  }
};

export { initMapbox, showActivity };
