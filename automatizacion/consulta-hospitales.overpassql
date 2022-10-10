[out:json][timeout:125];
// define el area de busqueda formada por la relacion 286393
area(3600286393)->.searchArea;
// gather results
(
  // query part for: “amenity=hospital”
  node["amenity"="hospital"](area.searchArea);
  way["amenity"="hospital"](area.searchArea);
  relation["amenity"="hospital"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
