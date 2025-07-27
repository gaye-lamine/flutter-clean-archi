# Architecture des fichiers du projet 

## Structure de base

| Dossier         | Rôle                           |
| --------------- | ------------------------------ |
| `main.dart`     | Point de départ                |
| `app/`          | Configuration racine           |
| `core/`         | Outils partagés                |
| `data/`         | Données brutes (API, DB, JSON) |
| `domain/`       | Logique métier pure            |
| `presentation/` | UI + gestion d'état            |
| `routes/`       | Navigation centralisée         |

## Arborescence complète

```plaintext
lib/
│
├── main.dart
├── app/
│   ├── app.dart                  # Root Widget (MaterialApp, routes)
│   └── locator.dart              # Injection des providers
│
├── core/
│   ├── constants/                # Couleurs, textes, etc.
│   ├── exceptions/               # Exceptions personnalisées
│   ├── services/                 # ApiService avec http
│   ├── utils/                    # Formatters, logger
│   └── widgets/                  # Loader, boutons réutilisables
│
├── data/
│   ├── datasources/              # user_remote_datasource.dart
│   ├── models/                   # user_model.dart
│   └── repositories/             # user_repository_impl.dart
│
├── domain/
│   ├── entities/                 # user.dart
│   ├── repositories/             # user_repository.dart
│   └── usecases/                 # get_users.dart
│
├── presentation/
│   ├── providers/                # user_provider.dart
│   ├── screens/                  # user_screen.dart
│   └── widgets/                  # user_tile.dart
│
└── routes/
    └── app_routes.dart