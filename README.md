<h1>Projet de station-météo de la promotion DI 2020 du CESI d'Ecully</h1>
<p>Bienvenue sur le dépôt GitHub de notre petit groupe d'apprentis développeurs. Le but de ce dépôt est de mettre à disposition notre travail autour de ce projet de station-météo open-source tout en apprenant à manipuler Git - et GitHub par la même occasion. Nos tickets sont assez désorganisés pour le moment, nous vous prions de ne pas nous en tenir rigueur - en réalité ce désordre est le résultat de tests répétés pour en comprendre le principe. Rassurez-vous nous ferons en sorte que nos prochains projets soient mieux structurés.</p>

<p>Vous trouverez ci-dessous la documentation de chaque partie de notre projet. Tous les fichiers seront trouvables dans la branche main une fois le développement de la v1 terminé. N'hésitez pas à jouer avec ou à nous suggérer toutes les améliorations qui vous passent par la tête ! Bonne lecture =)</p>

<h2>Script ESP</h2>

<h2>API CRUD RESTful</h2>

<h3>Route Places</h3>

<h4>Create</h4>

<ul>
  <li><strong>Méthode :</strong> POST</li>
  <li><strong>Route :</strong> api/places/create.php</li>
  <li><strong>Paramètres :</strong> {nom_emplacement: "pièce"}</li>
  <li><strong>Retour :</strong> Place created successfully.</li>
</ul>

<h4>Read</h4>

<ul>
  <li><strong>Méthode :</strong> GET</li>
  <li><strong>Route :</strong> api/places/read.php</li>
  <li><strong>Paramètres :</strong> none</li>
  <li><strong>Retour :</strong> {id_emplacement: "id", nom_emplacement: "pièce"} (pour chaque pièce existante)</li>
</ul>

<h4>Delete</h4>

<ul>
  <li><strong>Méthode :</strong> DELETE</li>
  <li><strong>Route :</strong> api/places/delete.php</li>
  <li><strong>Paramètres :</strong> {nom_emplacement: "pièce"}</li>
  <li><strong>Retour :</strong> Place deleted successfully.</li>
</ul>

<h3>Route Sensors</h3>

<h4>Create</h4>

<ul>
  <li><strong>Méthode :</strong> POST</li>
  <li><strong>Route :</strong> api/sensors/create.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id"}</li>
  <li><strong>Retour :</strong> Sensor created successfully.</li>
</ul>

<h4>Read</h4>

<ul>
  <li><strong>Méthode :</strong> GET</li>
  <li><strong>Route :</strong> api/sensors/read.php</li>
  <li><strong>Paramètres :</strong> none</li>
  <li><strong>Retour :</strong> {id_sonde: "id", nom_emplacement: "pièce"} (pour chaque sonde existante)</li>
</ul>

<h4>Update</h4>

<ul>
  <li><strong>Méthode :</strong> PUT</li>
  <li><strong>Route :</strong> api/sensors/update.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id", id_emplacement: "id"}</li>
  <li><strong>Retour :</strong> Sensor's location updated successfully.</li>
</ul>

<h4>Delete</h4>

<ul>
  <li><strong>Méthode :</strong> DELETE</li>
  <li><strong>Route :</strong> api/sensors/delete.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id"}</li>
  <li><strong>Retour :</strong> Sensor deleted successfully.</li>
</ul>

<h3>Route Data</h3>

<h4>Create</h4>

<ul>
  <li><strong>Méthode :</strong> POST</li>
  <li><strong>Route :</strong> api/data/create.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id", temperature: "temp", humidite: "rh"}</li>
  <li><strong>Retour :</strong> Data created successfully.</li>
</ul>

<h4>Read</h4>

<ul>
  <li><strong>Méthode :</strong> GET</li>
  <li><strong>Route :</strong> api/data/read.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id", date_debut: "date", date_fin: "date"}</li>
  <li><strong>Retour :</strong> {temperature: "temp", humidite: "rh", date: "date"} (pour chaque relevé entre date_debut et date_fin)</li>
</ul>

<h4>Read Last</h4>

<ul>
  <li><strong>Méthode :</strong> GET</li>
  <li><strong>Route :</strong> api/data/read_last.php</li>
  <li><strong>Paramètres :</strong> {id_sonde: "id"}</li>
  <li><strong>Retour :</strong> {temperature: "temp", humidite: "rh"}</li>
</ul>

<h4>Read All Last</h4>

<ul>
  <li><strong>Méthode :</strong> GET</li>
  <li><strong>Route :</strong> api/data/read_all_last.php</li>
  <li><strong>Paramètres :</strong> none</li>
  <li><strong>Retour :</strong> {temperature: "temp", humidite: "rh", id_sonde: "id", nom_emplacement: "emplacement"} (pour chaque sonde existante)</li>
</ul>

<h2>Application Front-End</h2>
