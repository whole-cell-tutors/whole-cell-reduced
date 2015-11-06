* `*.txt` files are antimony versions of the model
* `*.xml` files are sbml l2v4 versions of the model
* `old_versions` folder contains old versions of the model
* `src` folder contains script for antimony version of the model generating using `.csv` files from the `src/resources` folder.   To run script:
  1. run `javac *.java` to compile files
  2. run `java -classpath . AntimonyBuilder` and it will recreate antimony file in `src/..`

[ProteinTranslocation.xml](https://github.com/whole-cell-tutors/whole-cell-reduced/blob/master/ProteinTranslocation/ProteinTranslocation.xml) is the most recent version of the model.

For more information see [wiki page](https://github.com/whole-cell-tutors/whole-cell-reduced/wiki/Protein-Translocation).
