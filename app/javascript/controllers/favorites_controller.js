// javascript/controllers/favorites_controller.js

import { Controller } from "@hotwired/stimulus"
// import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ["favoriteButton"];
  // static favoritesPaintIds = [];

  connect() {
    console.log("connexion du controller Stimulus favorites");
    }


  isFavorite(event) {
    event.preventDefault();

    console.log("hello from isFavorite")
    console.log("Élément DOM actuel :", this.favoriteButtonTarget);

    // Récupérer l'ID de la peinture depuis l'élément
    const paintId = this.favoriteButtonTarget.getAttribute("data-paint-id");
    console.log("ID de la peinture :", paintId);

    // VERIFIER SI LA PAINTID EST FAVORITED_BY LE CURRENT USER
    // Récupérer l'id de l'utilisateur actuel
    const userId = document.getElementById('favorites').dataset.userId;
    console.log("ID de l'utilisateur actuellement connecté :", userId)

    // Effectuer une requête Ajax pour récupérer les favoris de l'utilisateur actuel
    fetch('/my_favorites')
      .then(response => response.json())
      .then(data => {
        console.log("Favoris de l'utilisateur actuel :", data);
        // Extraire les paint_id de chaque élément dans data
        const favoritesPaintIds = data.map(favorite => favorite.paint_id);
        console.log("ID des peintures favorites de l'utilisateur actuel :", favoritesPaintIds);

        // Extraire la constante favoriteId où paintId est égal à paint_id
        // const favoriteId = data.find(favorite => favorite.paint_id === parseInt(paintId)).id;
        // console.log("NOUVEAU - favoriteID de la peinture sur laquelle l'utilisateur a cliqué :", favoriteId);

        // // Vérifier si le paintId est dans l'array favoritesPaintIds
        // if (favoritesPaintIds.includes(parseInt(paintId))) {
        //   console.log("isFavorite : true");
        // } else {
        //   console.log("isFavorite : false");
        // }

        // Vérifier si le paintId est dans l'array favoritesPaintIds
        const isFavorite = favoritesPaintIds.includes(parseInt(paintId));
        console.log("La peinture est favorite :", isFavorite);

             // Utiliser la valeur de retour pour effectuer d'autres actions si nécessaire
        if (isFavorite) {
          console.log("isFavorite : true");
          // Extraire la constante favoriteId où paintId est égal à paint_id
          const favoriteId = data.find(favorite => favorite.paint_id === parseInt(paintId)).id;
          console.log("NOUVEAU - favoriteID de la peinture sur laquelle l'utilisateur a cliqué :", favoriteId);
           // Supprimer le favori (appeler la méthode destroy)
          this.favoriteButtonTarget.classList.remove('favorite-active');
          this.favoriteButtonTarget.classList.add('favorite-inactive');
          this.destroyFavorite(paintId, favoriteId);
        } else {
          // Effectuer des actions pour une peinture qui n'est pas un favori
          console.log("isFavorite : false");
          // Créer le favori
          this.favoriteButtonTarget.classList.add('favorite-active');
          this.favoriteButtonTarget.classList.remove('favorite-inactive');
          this.createFavorite(paintId, userId);
        }
      });
  }

  createFavorite(paintId, userId) {
    // const paintId = this.favoriteButtonTarget.getAttribute("data-paint-id");
    // const userId = document.getElementById('favorites').dataset.userId;

    // Vérifier la valeur de paintId
    console.log("Vérifier l'ID de la peinture:", paintId);

    fetch(`/paints/${paintId}/favorites`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
      },
      body: JSON.stringify({
        favorite: {
          paint_id: paintId,
          user_id: userId
        }
      })
    })
    .then(response => response.json())
    .then(data => {
      console.log("Favori créé pour l'utilisateur actuel :", data);
      console.log("ID du favori créé:", data.id);
      console.log("ID de la peinture:", paintId);
      console.log('Favori créé avec succès');
    })
  }


  destroyFavorite(paintId, favoriteId) {
        // Vérifier la valeur de paintId
        console.log("Vérifier l'ID de la peinture:", paintId);
        // Vérifier la valeur de favoriteId
        console.log("Vérifier l'ID du favori qu'on va supprimer:", favoriteId);

        fetch(`/paints/${paintId}/favorites/${favoriteId}`, {
          method: 'DELETE',
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
          }
        })
        .then(response => response.json())
        .then(data => {
          console.log("Favori supprimé pour l'utilisateur actuel :", data);
          console.log("ID du favori supprimé:", favoriteId);
          console.log("ID de la peinture:", paintId);
          console.log('Favori supprimé avec succès');
        })
      }


  }
