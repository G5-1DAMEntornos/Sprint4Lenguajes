"-------------Sólo postres--------------------",
for $menu in doc("story3.xml")//menuRestaurante/platos
where $menu/@category="postre"
return $menu/plato/nombre/text(),
"-------------Precio menor a 10 euros--------------------",


for $menu in doc("story3.xml")//menuRestaurante/platos/plato
where $menu/precio<10
return ($menu/nombre/text(),$menu/precio/text()),

"------------Ingrediente Pescado--------------------",
for $menu in doc("story3.xml")//menuRestaurante/platos/plato
where $menu/ingrediente="Gambas" or $menu/ingrediente="Dorada"
return $menu/nombre/text(),

"------------Último plato de la lista--------------------",
menuRestaurante/platos[last()]/plato[last()]/nombre/text(),

"------------Sólo nombre de todos los platos--------------------",
for $menu in doc("story3.xml")//menuRestaurante/platos
return $menu/plato/nombre/text(),

"------------Sólo nombre y primer ingrediente--------------------",
for $menu in doc("story3.xml")//menuRestaurante/platos/plato
return ($menu/nombre/text(),$menu/ingrediente[position()=1]),

"------------Ordenar platos por nombre--------------------",

for $menu in doc("story3.xml")//menuRestaurante/platos/plato
order by $menu/nombre
return$menu/nombre/text(),

"------------Ordenar platos de forma descendente--------------------",
for $menu in doc("story3.xml")//menuRestaurante/platos/plato
order by $menu/nombre descending
return $menu/nombre/text(),

"------------Listar platos cuyo precio sea entre 0 y 6 euros--------",
for $menu in doc("story3.xml")//menuRestaurante/platos/plato
where $menu/precio>0 and $menu/precio<=6
return ($menu/nombre/text(),$menu/precio/text())

