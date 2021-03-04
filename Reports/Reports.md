# Reports

For large documents, especially those requiring the use of  mathematics or scientific notations, LaTeX is preferred.  Shorter documents should be written in [Markdown](https://gitlab.ecs.vuw.ac.nz/help/user/markdown). Both are open standard plain text formats, compatible with version control and accessible in the future.

## LaTeX Typesetting Software

1. [MiKTeX](https://miktex.org)
2. [MacTeX](http://tug.org/mactex/)

### LaTeX 

1. [CTAN - The Comprehensive TeX Archive Network](https://www.ctan.org/)
2. [TeX Users Group](http://tug.org/) (TUG)
3. WikiBooks [LaTeX](https://en.wikibooks.org/wiki/LaTeX/)

### Report Templates

The following information was copied from <https://ecs.wgtn.ac.nz/Main/ProjectTemplates>

 Template for an initial project proposal (CGRA489, COMP 489, ELCO 489, ENGR 489 and MCompSci)

This LaTeX file gives some ideas about how to write a project proposal, and also provides a template for your proposal. You should discuss your proposal with your supervisor before you submit it.

Download this file to somewhere sensible, type

pdflatex proj_proposal.tex

to make the PDF.

You'll notice the resultant PDF displays some information you will want to change

Edit the LaTeX file to your heart's content and regenerate the PDF.

    proj_proposal.tex 

If you're working from home (or anywhere other than a Linux machine on the ECS network) you will also need the following:

    vuwproject.sty - this is the local (VUW) style file, to ensure our projects have a consistent look.
    VUWlogo.eps: image of VUW logo, as .eps (if you use latex)
    VUWlogo.png: image of VUW logo, as .png (if you use pdflatex) 

and you'll need to edit proj_proposal.tex to use the image rather than the font (change "font" to "image" in line 36). Alternatively, to use the font version, install tex-vuwlogo-1.3.tar.xz in your TeXLive based TeX distribution.

proj_proposal.pdf shows you what it should look like, and is what you get from running latex or pdflatex on proj_proposal.tex

For students who are less familiar with LaTeX you can also use this Word template:

    proj_proposal.doc 

Project report templates (CGRA 489, COMP 489, ELCO 489, ENGR 489 and MCompSci)

This set of files give some ideas about how to write a project report using seperate files for each chapter.

Download these files to somewhere sensible, type

pdflatex proj_report_outline.tex

to make the PDF.

You'll notice the resultant PDF displays some information you will want to change

Edit the LaTeX files to your heart's content and regenerate the PDF.

    acknowledge.tex
    conclusion.tex
    using.tex
    example.tex
    introduction.tex
    proj_report_outline.tex
    sample.bib 

If you're working from home (or anywhere other than a Linux machine on the ECS network) you will also need the following:

    vuwproject.sty - this is the local (VUW) style file, to ensure our projects have a consistent look.
    VUWlogo.eps: image of VUW logo, as .eps (if you use latex)
    VUWlogo.png: image of VUW logo, as .png (if you use pdflatex) 

and you'll need to edit proj_report_outline.tex to use the image rather than the font (change "font" to "image" in line 42).

proj_report_outline.pdf shows you what it should look like, and is what you get from running latex or pdflatex on proj_report_outline.tex

Remember: our rule of thumb is that projects should not exceed 40 pages in total length. This is equivalent to about 12,000 words when using our templates.
