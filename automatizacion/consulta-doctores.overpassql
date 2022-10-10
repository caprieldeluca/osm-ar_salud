[out:json][timeout:125];
// define el area de busqueda formada por la relacion 286393
area(3600286393)->.searchArea;
// gather results
(
  // query part for: “amenity=doctors”
  node["amenity"="doctors"](area.searchArea);
  way["amenity"="doctors"](area.searchArea);
  relation["amenity"="doctors"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
