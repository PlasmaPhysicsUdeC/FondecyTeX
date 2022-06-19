# FondecyTeX

LaTeX templates mimicking Microsoft Word forms which constitute part of an application to the [ANID 2022 Fondecyt Regular National Competition](https://www.anid.cl/concursos/concurso/?id=603).

This repository is based on [FondecyTeX by lfiguero](https://github.com/lfiguero/FondecyTeX)

## Repository contents

This repository contains LaTeX templates that mimic the English versions of the Microsoft Word forms that have to be filled as part of the application to the [ANID 2022 Fondecyt Regular National Competition](https://www.anid.cl/concursos/concurso/?id=1217); namely:

* A master file ([MAIN.tex](MAIN.tex)) that customizes the packages (`\usepackage`) and custom commands (`\newcommand`) needed to compile all of the following files.

* The [abstract](abstract.tex) of the proposal.

* The [research proposal](proposal.tex), where the state-of-art, objectives, methodologies, and work plan for the project is written. The bibliography database is stored in [references.bib](references.bib).

* The [list of references](references.tex). This file is populated automatically depending on the citations used in the [research proposal](proposal.tex), so you don't need to edit this file (unless you do :cold_sweat:).

* The [justification of requested amounts](justification.tex).

* The [available resources](resources.tex) commited by the sponsoring institution(s).

* The [list of potential guests](guests.tex) for international cooperation.


## How to create the PDF files 

Notice that we use the package [subfiles](https://www.overleaf.com/learn/latex/Multi-file_LaTeX_project). This allows to compile each section (abstract, proposed research, and available resources) independently of each other. 

We include a [Makefile](Makefile), which relies on the `latexmk` command line application to automate the latex compilation. To create a single file called `MAIN.pdf` with all the contents of the project, simply run:
```latex
make 
```

To create a separate file for each subsection of the project (you will get `abstract.pdf`, `guests.pdf`, `justification.pdf`,  `MAIN.pdf`, `proposal.pdf`, `references.pdf`, and `resources.pdf`), run:
```latex
make all
```

You can also compile just one section:
```latex
make abstract.pdf
```

To remove all files created after compilation, run:
```latex
make clean
```


## How to download this repository

Just clone this repository. Use the GitHub interface or, from the command line

```
git clone git@github.com:PlasmaPhysicsUdeC/FondecyTeX.git
```

## Disclaimer

This repository is provided in the hope that it will be useful, but I cannot provide any guarantee that it will work for you.
It is certainly not intended for LaTeX novices.

Should you want to use these templates, I **strongly** recommend producing a quick and dirty draft, including filling out those complicated tables of the _Requested Amounts_ section, **test** that the output PDF files are accepted by the ANID application system, and only then start working in earnest.

I'm also afraid that I cannot promise to promptly (or ever) deal with bugs or technical questions that might arise.

