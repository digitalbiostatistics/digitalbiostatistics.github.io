
  ![on-push](../../actions/workflows/on-push.yaml/badge.svg)
  ![on-pull-request](../../actions/workflows/on-pull-request.yaml/badge.svg)
  ![on-schedule](../../actions/workflows/on-schedule.yaml/badge.svg)

  # digitalbiostatistics's Website

  Visit **[digitalbiostatistics.github.io](https://digitalbiostatistics.github.io)** 🚀

## Tema MBZUAI (septiembre de 2026)

La versión inglesa utiliza la identidad de las guías MBZUAI de marzo de 2026.
El tema se carga únicamente cuando `page.lang` es `en` o no está definido.
Las carpetas `ar`, `es`, `gl` y `zh` conservan su contenido y diseño anteriores.

- `assets/css/mbzuai.css`: colores, tipografía, espaciado, componentes y adaptación a móvil.
- `_includes/mbzuai-header.html`: logo oficial con espacio propio, navegación y selector de idiomas.
- `_includes/mbzuai-hero.html`: portada inglesa.
- `assets/js/mbzuai-navigation.js`: menú móvil con apertura, cierre y tecla Escape.
- `assets/fonts/mbzuai/`: Aktiv Grotesk Regular, Medium y Bold, y Roboto Mono Medium, procedentes del material proporcionado.
- `images/mbzuai/logo-mbzuai-navy.svg` y `logo-mbzuai-white.svg`: archivos oficiales, sin modificar.
- `images/mbzuai/banner-mbzuai.svg`: patrón oficial `MBZUAI_PATTERN_TILE_NAVY BLUE_RGB.svg`, sin modificar.
- `images/mbzuai/research-mbzuai.svg` y `projects-mbzuai.svg`: ilustraciones vectoriales abstractas; no representan datos de investigación.

La paleta usa Navy Blue `#154677`, Sand `#E5C687`, blanco y los tintes autorizados. Dark Navy Blue se reserva para texto legible sobre fondos claros; no se utiliza como superficie de marca. Las imágenes originales se conservan. Las banderas estaban integradas en el banner anterior, por lo que desaparecen al usar la nueva cabecera inglesa.

Se mantiene el acceso por contraseña, el selector de idiomas, el modo oscuro, las publicaciones y los contenidos científicos. Los ajustes editoriales iniciales se limitan a los titulares, la presentación de la portada y convenciones como `Ph.D.`.

Para una compilación normal, utilizar el entorno Jekyll del proyecto y `bundle exec jekyll serve --config _config.yaml`. Los cambios locales no se publican hasta incorporarlos al flujo habitual de GitHub Pages.

La carpeta ignorada `.local-preview` contiene el entorno y la compilación de revisión para Windows. Su compilación usa Jekyll 4.4.1 y los complementos del sitio; omite cargar HTMLProofer, ya desactivado con `proofer: false`, y no altera las dependencias ni los complementos de producción.
