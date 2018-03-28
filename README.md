# Procesamiento de imagenes con OpenMP

Autor: Vicente Dragicevic


Para compilar, ejecutar `make`. El ejecutable generado se llama se llama masker. El código del programa se encuentra en el directorio "src".

# Uso

```
  $ ./masker [options] source.png result.png

  Options:
    -h, --help: Print help message.
    -n, --niter: Number of iterations. Default: 10
    -m, --mask: Path of the mask file.
    -s, --masksize: Size of the default mask (blur). If a mask file is specified, this option is ignored. Default: 3 (3x3)
    -t, --threads: Number of threads. Default: 1
      , --verbose: Log detailed information.
      , --no-output: Don't write the output image.
```

Para la funcionalidad extra de cargar máscaras custom, la primera línea del archivo debe ser el tamaño a utilizar (si la primera línea es 3, se usa una máscara de 3x3). Se incluye un ejemplo en el directorio "masks".



change server
```ssh titan```
```ssh tripio```
```ssh caleuche```
```ssh trauco```



10 iteraciones

./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/Bird.png ./image-result/BirdResult.png
titan: t= 1.356400

./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/Rose.png ./image-result/RoseResult.png
titan: t= 15.303658

./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/chrono.png ./image-result/chronoResult.png
titan: t= 44.425469

Using Sbatch
sbatch -w caleuche ./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/Bird.png ./image-result/BirdResult.png

sbatch ./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/Rose.png ./image-result/RoseResult.png

sbatch ./masker -t 1 /user/cruz/DipBD/2017-2/AC03/images/chrono.png ./image-result/chronoResult.png
