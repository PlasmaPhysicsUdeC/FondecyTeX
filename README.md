# FondecyTeX

LaTeX templates mimicking Microsoft Word forms which constitute part of an application to the [ANID 2022 Fondecyt Regular National Competition](https://www.anid.cl/concursos/concurso/?id=603).

This repository is based on [FondecyTeX by lfiguero](https://github.com/lfiguero/FondecyTeX)

## Repository contents

This repository contains LaTeX templates that mimic the English versions of the Microsoft Word forms that have to be filled as part of the application to the [ANID 2022 Fondecyt Regular National Competition](https://www.anid.cl/concursos/concurso/?id=603); namely:

* **Abstract:** [**abstract.tex**](abstract.tex) for [AbstractRegEng.docx](https://s3.amazonaws.com/documentos.anid.cl/fondecyt/2022/regular/AbstractRegEng.docx)
* **Proposed research:** [**prop.tex**](prop.tex) for  [ProposedResearchRegEng.docx](https://s3.amazonaws.com/documentos.anid.cl/fondecyt/2022/regular/ProposedResearchRegEng.docx)
* **Bibliographical references:** [**bib.tex**](bib.tex), which depends on the BibTeX file [**refs.bib**](refs.bib), for [BibliographicalReferencesRegEng.docx](https://s3.amazonaws.com/documentos.anid.cl/fondecyt/2022/regular/BibliographicalReferencesRegEng.docx),
<!-- * **Justification of requested amounts:** [**justification.tex**](justification.tex) for [JustificationRequestedAmountsRegEng.docx](https://s3.amazonaws.com/documentos.anid.cl/fondecyt/2022/regular/JustificationRequestedAmountsRegEng.docx) -->
* **Available resources:** [**resources.tex**](resources.tex) for [AvailableResourcesRegEng.docx](https://s3.amazonaws.com/documentos.anid.cl/fondecyt/2022/regular/AvailableResourcesRegEng.docx)

There is also a file for justification of requested amounts [justification.tex](justification.tex), but this is **not** needed for students projects.

These LaTeX source files are all included in the container [**MAIN.tex**](main.tex) LaTeX source code, where additional packages (`\usepackage`) and custom commands (`\newcommand`) should go.

Notice that we use the package [subfiles](https://www.overleaf.com/learn/latex/Multi-file_LaTeX_project). This allows to compile each section (abstract, proposed research, and available resources) independently of each other. For example, [abstract.tex](abstract.tex) includes a line `\documentclass[MAIN.tex]{subfiles}`, meaning that it inherits the packages and commands defined in [MAIN.tex](MAIN.tex). Thus, you can create `abstract.pdf` by running:
```latex
pdflatex abstract.tex
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

