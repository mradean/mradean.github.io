{smcl}
{* *! version 1 21Nov2022}{...}
{viewerjumpto "Syntax" "ginteffplot##syntax"}{...}
{viewerjumpto "Description" "ginteffplot##description"}{...}
{viewerjumpto "Options" "ginteffplot##options"}{...}
{viewerjumpto "Syntax of obseff[()]" "ginteffplot##obseff"}{...}
{viewerjumpto "Syntax of save()" "ginteffplot##save"}{...}
{viewerjumpto "Examples" "ginteffplot##examples"}{...}
{viewerjumpto "The User's Manual" "ginteffplot##manual"}{...}
{title:Title}

{phang}
{cmd:ginteffplot} {hline 2} graph results from {cmd:ginteff}

{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:ginteffplot}
[{cmd: ,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{cmd:{ul:aiep}oint(}{it:aiepoint_options}{cmd:)}} customize marker for the point estimate of the average interaction effect{p_end}
{synopt:{cmd:{ul:aier}ange(}{it:aierange_options}{cmd:)}} customize the range plot of the average interaction effect using capped spikes{p_end}
{synopt:{cmd:obseff}[({it:obseff_options})]} plot observation-level interaction effects{p_end}
{synopt:{opt output(#)}} identify the {cmd:ginteff} output to be graphed; default is {cmd:output(1)}{p_end}
{synopt:{opt save(save_options)}} export current graph{p_end}
{synopt:{cmd:{ul:xcom}mon(}[{it:numlist}] [*]{cmd:)}}  give {it:x} axes common scale{p_end}
{synopt:{cmd:zeroline}[({it:line_options})]} add a vertical line at the 0 value{p_end}
{syntab:X and Y axes}
{synopt:{opt xlab:el(rule_or_values)}} customize ticks and labels for {it:x} axis{p_end}
{synopt:{opt xsc:ale(axis_suboptions)}} customize how {it:x} axis looks{p_end}
{synopt:{opt xt:itle(axis_title)}} customize {it:x} axis title{p_end}
{synopt:{opt ylab:el(rule_or_values)}} specify ticks and labels for {it:y} axis{p_end}
{synopt:{opt ysc:ale(axis_suboptions)}} specify how {it:y} axis looks{p_end}
{synopt:{opt yt:itle(axis_title)}} specify {it:y} axis title{p_end}
{syntab:Plot and graph areas}
{synopt:{opt aspect:ratio(# [, pos_option])}} plot region aspect ratio{p_end}
{synopt:{opt graphr:egion(suboptions)}} customize attributes of {it:graph region}{p_end}
{synopt:{opt plotr:egion(suboptions)}} customize attributes of {it:plot region}{p_end}
{synopt:{opt scheme(schemename)}} customize the graphics scheme{p_end}
{synopt:{opt xsiz:e(#)}} change width of graph{p_end}
{synopt:{opt ysiz:e(#)}} change height of graph{p_end}
{syntab:Titles, legend, and notes}
{synopt:{cmd:{ul:leg}end(}[{it:contents}] [{it:location}]{cmd:)}} standard legend, contents and location{p_end}
{synopt:{opt note(tinfo)}} note about graph{p_end}
{synopt:{opt sub:title(tinfo)}} subtitle of the graph{p_end}
{synopt:{opt ti:tle(tinfo)}} overall title{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
Note: Syntax elements within square brackets [] are optional. Underlining indicates minimal abbreviation.{p_end}


{marker description}{...}
{title:Description}

{pstd}
{cmd:ginteffplot} graphs the results of the immediately preceding {cmd:ginteff} command.		


{marker options}{...}
{title:Options}

{dlgtab:Main}

{phang}
{cmd:aiepoint(}[{it:#_clockposstyle}] ["{it:text for label}"] [, {it:marker_label_options marker_options}]{cmd:)} customizes the marker for the point estimate of the average interaction effect. The default is {cmd:aiepoint((12) "AIE", msymbol(S) mcolor(black) mlabsize(medsmall) mlabcolor(black) mlabgap(*5))}. {manhelpi clockposstyle G} cutomizes the location of the label relative to the point. {manhelpi marker_label_options G} customize the overall look and color of the marker, the size and color of the label text, and the space between the marker and the label. {manhelpi marker_options G} customizes the shape, color, and size of the marker.

{phang}
{cmd:aierange(}[{it:line_options}] [msize({it:markersizestyle})]{cmd:)} customizes the range plot of the average interaction effect, using capped spikes (I-beams) to connect the upper and lower confidence limits. The significance level (typically 95%), is set by {cmd:ginteff}'s {cmd:level()} option. The default is {cmd:aierange(lpattern(solid) lcolor(black) lwidth(medthick) msize(medium))}. {manhelpi line_options G} customize the look of the line used to draw the spikes and caps, including pattern, width, and color. {manhelpi markersizestyle G} changes the width of the cap.

{phang}
{cmd:obseff}[({it:obseff_options})] plots the observation-level interaction effects, for each case in the sample data. {cmd:obseff} is ignored if the preceding {cmd:ginteff} command was specified without the {cmd:obseff(}{it:stub}{cmd:)} option. {cmd:ginteffplot} only graphs estimated parameters; if the individual interaction effects were not computed via {cmd:ginteff}, there is nothing to plot. For more information, see the section {bf:Syntax of {cmd:obseff}[()]} below.

{phang}
{opt output(#)} identifies the {cmd:ginteff} output to be graphed, and is relevant only when there is more than one set of results. Multiple results occur when you previously fit a multi-equation model, or specified more than one {cmd:at()} scenario. For instance, {cmd:output(1)} would plot the results displayed in the first row of the {cmd:ginteff} output, {cmd:output(2)} would mean the second row, and so on. If you do not specify {cmd:output()}, results are the same as if you specified {cmd:output(1)}.

{phang}
{cmd:save(}{it:newfilename.suffix}[, {it:export_options}]{cmd:)} exports to a file the graph displayed in a Graph window. For more information, see the section {bf:Syntax of {cmd:save()}} below.

{phang}
{cmd:xcommon(}[{it:numlist}] [*]{cmd:)} specifies that the graph be put on a common {it:x} axis scale with the graphs corresponding to the {cmd:ginteff} outputs listed in the suboption of {cmd:xcommon()}. You can specify one other output, #, a subset of outputs, {it:numlist}, or all outputs, *.

{phang}
{cmd:zeroline}[({it:line_options})] adds a vertical line at the 0 value. This is typically used when the confidence interval of the interaction effect contains zero, to graphically indicate that the effect is statistically insignificant at the specified significance level. The default is {cmd:zeroline(lpattern(shortdash) lwidth(medthin) lcolor(red))}. These settings are employed if {cmd:zeroline} is used without suboptions. If zero falls within the equally spaced values on the {it:x} axis (see option {cmd:xlabel()}), its label will be displayed under the major {it:x} axis values using a tick 3.5 times as long as the default, {cmd:tlength(*3.5)}. {manhelpi line_options G} customize the look of the line, including pattern, width, and color.

{dlgtab:X and Y axes}

{phang}
{opt xtitle(axis_title)} and {opt ytitle(axis_title)} specify or customize the title to appear on the {it:x} and {it:y} axes. For the {it:x} axis, the default is {cmd:xtitle("Change in {it:depvar}}", size(4))}, where {it:depvar} is the dependent variable's label or, if it does not have a label, its name. {cmd:xtitle()} customizes the title text and font size. The {it:y} axis is not titled, and specifying {cmd:ytitle()} adds a title. For more information see {manhelpi axis_title_options G}.

{phang}
{opt xlabel(rule_or_values)} and {opt ylabel(rule_or_values)} specify or customize the major values to be labeled and ticked along the {it:x} and {it:y} axes. The default is {cmd:ylabel(none)} and {cmd:xlabel(}{it:xmin(`=(xmax-xmin)/5')xmax}{cmd:)}. The {it:xmin(`=(xmax-xmin)/5')xmax} rule specifies that the minimum and maximum values, along with four equally spaced intermediate values, are to be labeled and ticked along the {it:x} axis. The {it:xmin} and {it:xmax} values are retrieved automatically from the {cmd:ginteff} output. For more informaiton see {manhelpi axis_label_options G}.

{phang}
{opt xscale(axis_suboptions)} and {opt yscale(axis_suboptions)} customize the look of the {it:x} and {it:y} axes. The default is {cmd:xscale("titlegap(4)")} and {cmd:yscale(titlegap(0) range(0 2))}. For more information see {manhelpi axis_scale_options G}.

{dlgtab:Plot and graph areas}

{phang}
{opt aspectratio(# [, pos_option])} specifies the aspect ratio and, optionally, the placement of the plot region. For example, when {it:#} = 1, the height and width will be equal (their ratio is 1), and the plot region will be square; if it is 2, the plot region is twice as tall as it is wide; and, if it is .5, the plot region is twice as wide as it is tall. For more information see {manhelpi aspect_option G}.

{phang}
{opt graphregion(suboptions)} customizes attributes for the {it:graph region}. The default is {cmd:graphregion(fcolor(white))}. For more information see {manhelpi region_options G}.

{phang}
{opt plotregion(suboptions)} customizes attributes for the {it:plot region}. The default is {cmd:plotregion(margin(sides))}. For more information see {manhelpi region_options G}.

{phang}
{opt scheme(schemename)} customizes the graphics scheme to be used. The default is {cmd:scheme(s2mono)}. For more information see {manhelpi scheme_option G}.

{dlgtab:Titles, legend, and notes}

{phang}
{opt title(tinfo)} and {opt subtitle(tinfo)} specify the overall title and subtitle of the graph. The default is {cmd:title("")} and {cmd:subtitle("")}, which means no title or subtitle. For more information see {manhelpi title_options G}.

{phang}
{opt legend([contents] [location])} defines the contents of the standard legend, along with how it is to look, and whether and where it is to be displayed. The default is {cmd:legend(off)}. For more information see {manhelpi legend_options G}. 

{phang}
{opt note(tinfo)} specifies notes to be displayed with the graph. The default is {cmd:note("")}, which means no notes. For more information see {manhelpi title_options G}.


{marker obseff}{...}
{title:Syntax of option {cmd:obseff[()]}}

{p 8 17 2}
{cmdab:obseff}[({it:obseff_options})]

{synoptset 30 tabbed}{...}
{synopthdr:obseff_options}
{synoptline}
{synopt:{opt marker(marker_options)}} customize markers{p_end}
{synopt:{opt median(median_options)}} add marker label for the median{p_end}
{synopt:{cmd:pctile}[({ul:alt}def)]} plot only 101 representative values{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
Note: Syntax elements within square brackets [] are optional. Underlining indicates minimal abbreviation.{p_end}

{title:Suboptions of {cmd:obseff()}}

{phang}
{opt marker(marker_options)} customizes the shape, color, and size of markers indicating the observation-level interaction effects. The default is {cmd:marker(msymbol(O) mcolor(black) msize(vtiny))}. For more information see {manhelpi marker_options G}.

{phang}
{cmd:median}[([#_clockposstyle] ["{it:text for label}"] [, {it:marker_label_options marker_options}])] adds and customizes the marker for the median value of the variable containing the observation-level interaction effects. The default is {cmd:median((6) "(median)", msymbol(Oh) mcolor(black) mlabsize(medsmall) mlabcolor(black) mlabgap(*5))}. These settings are employed if {cmd:median} is used without suboptions. {manhelpi clockposstyle G} cutomizes the location of the label relative to the point. {manhelpi marker_label_options G} customize the overall look and color of the marker, the size and color of the label text, and the space between the marker and the label. {manhelpi marker_options G} customize the shape, color, and size of the marker.

{phang}
{cmd:pctile}[(altdef)] plots only the 1st, 2nd, ..., 99th percentiles, as well as the minimum and maximum values of the variable containing the observation-level interaction effects (101 values in total). The specific variable is created using {cmd:ginteff}'s {cmd:obseff(}{it:stub}{cmd:)} option. For large datasets, with thousands of obervations (or more), plotting the effect for each observation can overload the graph and significantly increase the file-size of the figure. If there are fewer than 99 observations, option {cmd:pctile} is ignored. The default method for calculating percentiles is to invert the empirical distribution function by using averages, (x_i + x_(i+1))/2, where the function is flat. When the suboption {cmd:altdef} is specified, an alternative formula that uses an interpolation method is employed. For more information on the formulas used to compute percentiles (with or without the {cmd:altdef} suboption), see {manhelpi pctile D}.


{marker save}{...}
{title:Syntax of option {cmd:save()}}

{p 8 16 2}
{cmd:save(}{it:newfilename}{cmd:.}{it:suffix}
[{cmd:,}
{it:options}]{cmd:)}

    {it:export_options}{col 35}Description
    {hline 69}
    {cmd:name(}{it:windowname}{cmd:)}{...}
{col 35}name of Graph window to export 
    {cmd:as(}{it:fileformat}{cmd:)}{...}
{col 35}desired format of output
    {cmd:replace}{...}
{col 35}{it:newfilename} may already exist
    {it:override_options}{...}
{col 35}override defaults in conversion
    {hline 69}

{pstd}
If {cmd:as()} is not specified, the output format is determined by the suffix
of {it:newfilename}{cmd:.}{it:suffix}:

    {col 20}Implied
    {it:suffix}{col 20}option{col 35}Output format
    {hline 69}
    {cmd:.ps}{col 20}{cmd:as(ps)}{col 35}PostScript
    {cmd:.eps}{col 20}{cmd:as(eps)}{col 35}EPS (Encapsulated PostScript)
    {cmd:.svg}{col 20}{cmd:as(svg)}{col 35}SVG (Scalable Vector Graphics)
    {cmd:.emf}{col 20}{cmd:as(emf)}{col 35}EMF (Enhanced Metafile)
    {cmd:.pdf}{col 20}{cmd:as(pdf)}{col 35}PDF (Portable Document Format)
    {cmd:.jpg}{col 20}{cmd:as(jpg)}{col 35}JPEG (Joint Photographic Experts Group)
    {cmd:.png}{col 20}{cmd:as(png)}{col 35}PNG (Portable Network Graphics)
    {cmd:.tif}{col 20}{cmd:as(tif)}{col 35}TIFF (Tagged Image File Format)
    {cmd:.gif}{col 20}{cmd:as(gif)}{col 35}GIF (Graphics Interchange Format)
    {it: other}{col 35}must specify {cmd:as()}
    {hline 69}
{phang}
{cmd:tif} is not available for Stata(console); {cmd:emf} is available only for
Stata for Windows; and {cmd:gif} is available only for Stata for Mac.

    {it:override_options}{col 35}Description
    {hline 69}
    {it:{help ps_options}}{...}
{col 30}when exporting to {cmd:ps}
    {it:{help eps_options}}{...}
{col 30}when exporting to {cmd:eps}
    {it:{help svg_options}}{...}
{col 30}when exporting to {cmd:svg}
    {it:{help tif_options}}{...}
{col 30}when exporting to {cmd:tif}
    {it:{help png_options}}{...}
{col 30}when exporting to {cmd:png}
    {it:{help gif_options}}{...}
{col 30}when exporting to {cmd:gif}
    {it:{help jpg_options}}{...}
{col 30}when exporting to {cmd:jpg}
    {hline 69}

{phang}
There are no {it:override_options} for the {cmd:pdf} format.

{title:Suboptions of {cmd:save()}}

{phang}
    {cmd:name(}{it:windowname}{cmd:)} specifies which window to export from when
    exporting a graph. The name for a window is displayed inside parentheses in the window title. For example, if the title for a Graph window is {hi:Graph (MyGraph)}, the name for the window is {hi:MyGraph}. If a graph is an {cmd:asis} or {cmd:graph7} graph where there is no name in the window title, specify "" for {it:windowname}.

{phang}
{cmd:as(}{it:fileformat}{cmd:)}
    specifies the file format to which the graph is to be exported. By default, the format from the suffix of the file being created.

{phang}
{cmd:replace}
    specifies that it is okay to replace {it:filename}{cmd:.}{it:suffix} if it already exists.

{phang}
{it:override_options}
    modify how the graph is converted.  See 
    {manhelpi ps_options G-3},
    {manhelpi svg_options G-3},
    {manhelpi eps_options G-3},
    {manhelpi gif_options G-3},
    {manhelpi jpg_options G-3},
    {manhelpi tif_options G-3}, and
    {manhelpi png_options G-3}.

	
{marker examples}{...}
{title:Examples}

{pstd}
These examples are intended for quick reference. For a more detailed overview of {cmd:ginteffplot} and examples with discussion, see {browse "ginteffplot_manual.pdf":The {cmd:ginteffplot} User's Manual}.  

{pstd}
Setup

{phang2}{cmd: . webuse nhanes2f, clear}{p_end}
{phang2}{cmd: . keep health race female age}{p_end}
{phang2}{cmd: . clonevar health_3l = health}{p_end}
{phang2}{cmd: . recode health_3l (2=1) (3=2) (4/5=3)}{p_end}
{phang2}{cmd: . }{p_end}
{phang2}{cmd: . ologit health_3l i.race##i.female age, nolog level(90)}{p_end}
{phang2}{cmd: . ginteff, dydxs(female race) obseff(obs_ol2w) level(90)}{p_end}

{pstd}
Example 1: Plot the average interaction effect from the third row of the {cmd:ginteff} output

{phang2}{cmd: . ginteffplot, output(3)}{p_end}

{pstd}
Example 2: Plot the average and individual interaction effects

{phang2}{cmd: . ginteffplot, output(3) obseff}{p_end}

{pstd}
Example 3: Plot the average and individual interaction effects, and more

{phang2}{cmd: . ginteffplot, output(3) obseff(median) zeroline}{p_end}


{marker manual}{...}
{title:The User's Manual}

{pstd}
{browse "ginteffplot_manual.pdf":The {cmd:ginteffplot} User's Manual}{p_end}
