
# IOS Natif Rattrapage MIIMIC4A3020

Application réalisé pour le rattrapage IWM A5 2022. 
Application créer avec Storyboard.



## Explications

### ViewController: 
Le View Controller est le controlleur qui va diriger la page l'accueil.
C'est à dire qu'il va gérer la création et mettre la place la fonction qui
permet d'animer le texte avec une couleur aléatoire au clic du bouton.

La function random() crée une couleur RGB aléatoire qui va ensuite être appliqué
sur l'élément au clic du bouton.

### ListFruitViewController:
Le ListFruitViewController est le controlleur qui va gérer l'affichage
de la liste récupéré à partir d'une API. Ensuite il va également gérer le 
nombre de ligne affiché dans la liste et il va envoyer les bonnes données
à la page détails d'un élément de la liste.

L'API: [FruityVice](https://www.fruityvice.com/) - FruityVice

La function downloadFruits qui va crée le call à l'API avec un do
catch pour la gestion d'erreurs. Une fois la function mise en place
on l'appelle dans le ViewDidLoad pour qu'elle se charge une fois que la 
view à été mise en place.

Pour afficher la liste on utlise un TableView que j'ai déclaré via StoryBoard.
Ensuite on va faire appelle à des méthodes de Table View comme numberOfRowsInSection 
qui va nous permettre de définir facilement le nombre d'élément à afficher dans le tableau.

La méthode cellForRowAt qui va nous permettre de définir les cellules du TableView et à quelle
donnée elle vont correspondre. La méthode didSelectRowAt pour récupéré la ligne du TableView selectionné par
l'utilisateur et faire le lien avec la page détails. On utilise la fonction prepare, 
pour préciser quelle donnée la page détails doit afficher.

Lors de l'appel de la function downloadFruits une fois la page chargé, on reload les data du TableView
pour qu'il affiche bien les données récupéré.

### FruitViewController

Le FruitViewController est le controlleur qui gère l'affichage des données sur 
la page détail d'un élément du tableau. On récupère les UILabel qu'on déclare
dans StoryBoard et ensuite tout simplement on va aller lié les données de notre model à nos UILabel.


### StoryBoard

Les view sont mise en place dans le fichier Main.storyboard

## Authors

- [Valentin Kahn-Barberon](https://www.github.com/Thevaleentiin)

