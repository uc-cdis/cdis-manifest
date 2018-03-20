# TL;DR

Centrally manage and log which versions of which services get deployed where.

## Policies

* Never release :master or :latest to production.
* `manifest_DOMAIN_.json` is the manifest for a particular commons - ex: `manifest_dev.planx-pla.net_.json` 
* `manifest_prod_.json` is the fall-through default manifest if `manifest_DOMAIN_.json` does not exist

## Ideal workflow

* Push manifest updates
* Jenkins updates each commons to match manifest

## Release notes

* [fence](https://github.com/uc-cdis/fence/releases)
* [peregrine](https://github.com/uc-cdis/peregrine/releases)
* [portal](https://github.com/uc-cdis/data-portal/releases)
* [sheepdog](https://github.com/uc-cdis/sheepdog/releases)
