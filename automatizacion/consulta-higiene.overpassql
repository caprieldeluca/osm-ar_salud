[out:json][timeout:125];
// define el area de busqueda formada por la relacion 286393
area(3600286393)->.searchArea;
// gather results
(
  // query part for: “shop=chemist”
  node["shop"="chemist"](area.searchArea);
  way["shop"="chemist"](area.searchArea);
  relation["shop"="chemist"](area.searchArea);
);
// print results
out body;
>;
out skel qt;