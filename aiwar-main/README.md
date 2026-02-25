# AI War Cloud Database

Est 2024, work in progress

#### How to run locally

- Download or clone this repo to your hard drive
- Navigate to the folder where you saved it
- For the 2D version, open `public/index.html`
- For the text-only table, open `public/table.html` 
- For the 3D version, open `public/three.html`

#### How to modify or contribute to the project

Feedback, ideas, and potential collaborations appreciated. Feel free to write to me with your updates or suggestions. 

Or make your own modifications:

- Fork this repo
- Load the python libraries listed in requirements.txt, ideally in your virtual environment (e.g. I use miniconda). 
- Follow the instructions to install the framework [Quarto](https://quarto.org/docs/get-started/) linked here
- In the folder for the project, run `quarto preview` in the terminal, then visit the local host it creates in the browser. Run `quarto render` for production version.
- Make your changes as you see fit.
- If you want those changes to be shared with me, push them to Gitlab and send a pull request. 



#### Notes to self: Systems to add

* [Automated Damage Identification System, ScaleAI]
* [Tactical Intelligence Targeting Access Node, Palantir (TITAN)]
* [SixthSense]
* [Prism Supervisor, Teledyne]
* [Ask Sage]
* [Scylla]
* [ChatBIT]
* [SKYLORD]
* [Maersk]
* [NVIDIA]
* [Hailo]

#### Notes to self: Ongoing questions, among others...
* What filters and analytical tools are useful for folks?
* How to scale, where to stop?
  * incl. the many material layers of the pipelines from infrastructure to data creation to other things that are not strictly themselves ML tasks but support that work sociotechncially of course
  * How to shore up the methodological logics of how systems are found and what gets included (like a lit review but for AI decision-making systems) 
  * Suggestion from viewer to add auto industry and its overlaps w AI/warfare
* At what level to include public figures and other people when they are the connections across companies and systems? 
* Figure out why it runs slower in Chrome/Brave than Firefox/Safari
* Build out features:
  * Collapsable and expandable node neighborhoods
  * Visualise second-order neighbors (toggle on/off)
  * Visualise matrices versions
  * Further solidify the schema so that it is sound across ML, military, and commercial domains
  * Connect specific references (sets of) with specific database items
  * Build in tools for network graph analysis, more dynamic visualisation at different scales
  * Temporal visualisations
  * Quantum both-and neither-nor views
  * Select for levels/layers of meaning. Degrees of zoom: Top = regions/clusters, Medium = node/individual system, attribute of system, schema, relation, Bottom = piece of evidence in archive. OOO classes, superclasses, instances?
* Forever work? Researching and adding systems and other connections to the database
