[out:json][timeout:125];
// define el area de busqueda formada por la relacion 286393
area(3600286393)->.searchArea;
// gather results
(
  // query part for: “amenity=clinic”
  node["amenity"="clinic"](area.searchArea);
  way["amenity"="clinic"](area.searchArea);
  relation["amenity"="clinic"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
