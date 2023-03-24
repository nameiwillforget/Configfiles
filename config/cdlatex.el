(setq cdlatex-simplify-sub-super-scripts nil)

(setq cdlatex-env-alist
     '(("axiom" "\\begin{axm}\nAUTOLABEL\n?\n\\end{axm}\n" nil)
       ("theorem" "\\begin{thm}\nAUTOLABEL\n?\n\\end{thm}\n" nil)
       ("definition" "\\begin{dfn}\nAUTOLABEL\n?\n\\end{dfn}\n" nil)
       ("proposition" "\\begin{prp}\nAUTOLABEL\n?\n\\end{prp}\n" nil)
       ("lemma" "\\begin{lemma}\nAUTOLABEL\n?\n\\end{lemma}\n" nil)
       ("conjecture" "\\begin{conj}\nAUTOLABEL\n?\n\\end{conj}\n" nil)
       ("example" "\\begin{xmp}\nAUTOLABEL\n?\n\\end{xmp}\n" nil)
       ("remark" "\\begin{rmk}\nAUTOLABEL\n?\n\\end{rmk}\n" nil)
       ("construction" "\\begin{cst}\nAUTOLABEL\n?\n\\end{cst}\n" nil)
       ("variation" "\\begin{vrt}\nAUTOLABEL\n?\n\\end{vrt}\n" nil)
       ("warning" "\\begin{cau}\nAUTOLABEL\n?\n\\end{cau}\n" nil)
       ("notation" "\\begin{nota}\nAUTOLABEL\n?\n\\end{nota}\n" nil)
       ("figure" "\\begin{figure}\nAUTOLABEL\n?\n\\end{figure}\n" nil)
       )
     )

(setq cdlatex-command-alist
 '(("axm" "Insert axiom env"   "" cdlatex-environment ("axiom") t nil)
   ("thm" "Insert theorem env" "" cdlatex-environment ("theorem") t nil)
   ("dfn" "Insert definition env" "" cdlatex-environment ("definition") t nil)
   ("prp" "Insert proposition env" "" cdlatex-environment ("proposition") t nil)
   ("lemma" "Insert lemma env" "" cdlatex-environment ("lemma") t nil)
   ("conj" "Insert conjecture env" "" cdlatex-environment ("conjecture") t nil)
   ("rmk" "Insert remark env" "" cdlatex-environment ("remark") t nil)
   ("cst" "Insert construction env" "" cdlatex-environment ("construction") t nil)
   ("vrt" "Insert variation env" "" cdlatex-environment ("variation") t nil)
   ("cau" "Insert warning env" "" cdlatex-environment ("warning") t nil)
   ("nota" "Insert notation env" "" cdlatex-environment ("nota") t nil)            
   ("fig" "Insert figure env" "" cdlatex-environment ("fig") t nil)            
   )
 )



(setq cdlatex-math-symbol-alist
      '(
	(?p ("\\pentagon"))

	(?u ("\\nwarrow"))

	(?ü ("\\big" "\\Big" "\\bigg" "\\Bigg"))
	(?[ ("\\left["))

	(?, ("\\nearrow"))
	(?] ("\\right]"))

	(?q ("\\dag"))
	(?^ ("\\dagger"))


	(?! ("!`"))


	(?< ("\\leq"))

	(?l ("\\ell"))


	(?m ("\\diamond"))
	(?= ("\\cong"))


	(?& ("\\&"))



	(?i ("\\longleftarrow"))
	(?/ ("\\setminus"))


	(?{ ("\\{"))

	(?a ("\\longrightarrow"))
	(?{ ("\\}"))


	(?* ("\\cdot" "\star"))

	(?d ("\\div"))

	(?t ("\\models"))
	(?( ("\\left("))


	(?( ("\\right)"))

	(?n ("\\dashv"))
	(?- ("\\ominus"))

	(?- ("\\leftharpoonup" "\\leftharpoondown"))

	(?s ("\\vdash"))
	(?: ("\\rightharpoonup" "\\rightharpoondown"))

	(?ß ("\\bigcirc"))

	(?k ("\\swarrow"))




	(?. ("\\searrow"))
	(?~ ("\\simeq"))

	(?j ("\\oplus"))
	(?+ ("\\pm" "\mp"))

	(?g ("\\langle"))

	(?z ("\\rangle"))

	(?w ("\\angle"))
	(?' ("\\prime"))

	(?b ("\\not"))



	(?χ ("\\Uparrow" "\\Uuparrow"))
	(?η ("\\Leftarrow" "\\Lleftarrow"))
	(?ε ("\\Downarrow" "\\Ddownarrow"))
	(?α ("\\Rightarrow" "\\Rrightarrow"))




	(?∘ ("\\odot" "\\astrosun"))




	(?λ ("\\cup" "\\Bigcup" "\\medtriangleup"))
	(?τ("\\supset" "\\supseteq" "\\medtriangleright"))
	(?ρ("\\cap" "\\Bigcap" "\\medtriangledown"))
	(?ν("\\subset" "\\subseteq" "\\medtriangleleft"))






	(?× ("\\otimes" "\\boxtimes"))


	(?↑ ("\\hookuparrow" "\\twoheaduparrow"))

	(?⋉ ("\\lftimes" "\\lfbowtie"))
	(?⋊ ("\\rftimes" "\\rfbowtie"))
	(?≺ ("\\preqeq" "\\pereqsim"))

	(?≻ ("\\succeq" "\\succsim"))


	(?>("\\geq" "\\gg" "\\ggg"))

	(?<("\\leq" "\\ll" "\\lll"))



	(?← ("\\hookleftarrow" "\\twoheadleftarrow"))
	(?↓ ("\\hookuparrow" "\\twoheaduparrow"))
	(?→ ("\\hookrightarrow" "\\twoheadrightarrow"))
    ))
	
 
(setq cdlatex-math-modify-alist
      '(
	(?p "\\mathbb" nil t nil nil)
	(?l "\\blue" nil t nil nil)
	(?x "\\mathfrak" nil t nil nil)
	))



(add-hook 'cdlatex-tab-hook
          (defun cdlatex-indent-maybe ()
            (when (or (bolp) (looking-back "^[ \t]+"))
              (LaTeX-indent-line))))
