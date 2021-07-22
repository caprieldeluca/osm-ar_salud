[out:json][timeout:125];
// define el area de busqueda formada por la relacion 286393
area(3600286393)->.searchArea;
// gather results
(
  // query part for: “amenity=pharmacy”
  node["amenity"="pharmacy"](area.searchArea);
  way["amenity"="pharmacy"](area.searchArea);
  relation["amenity"="pharmacy"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
