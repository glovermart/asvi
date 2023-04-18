
2023-02-01
----------
- meeting: weekly @1200 BT 1.5h
  - present: AM, DM, RS
  - DM: Setup a GitHub repo.
  - DM: Schedule walkthrough session for Tue. DONE
  - AM: Use yosys to synth and make pictures.
  - DM: Ask AD about scheduling presentations. DONE
  - Andrew will probably meet academic supervisor in around 2 weeks.
- 3 presentations are scheduled.
  - Mon 2023-02-27 at the DDD weekly team meeting.
    - Give an overview of project intentions.
    - Around 10 minutes.
    - Audience of 10..20 people who are all specifically interested.
  - Thu 2023-05-11 at the DDF.
    - Present what the project is, how it has gone so far, and what's left.
    - Around 5 minutes.
    - Audience of 100..200 people with varying levels of interest in details.
    - Shared presentation with other students.
  - Mon 2023-06-05 at the DDD weekly team meeting.
    - Present the main results of the project.
    - Around 30 minutes.
    - Audience of 10..20 people who are all specifically interested.

2023-02-02
----------
- This file is for notes.
  - Meeting minutes.
  - Interesting reading resources.
  - Anything else noteworthy.
- It's a good habit to keep a clear logbook.
- Markdown is nicely rendered on both GitHub and BitBucket.
- This file can be easily searched with the standard text-based tools, unlike
  binary/proprietary formats.
- Academic supervisor Milica Orlandic may join weeklies, time permitting.


2023-02-07
----------
- Meeting: SVI Getting started @ 13:00 NT 39mins
  - present: AM, DM.
  - DM: Make working directory for thesis visible to DDD team - Done.
  - DM: Provided AM with textbooks on Git and Unix.
  - AM: Deep dive into unix commands.
  - AM: Deep dive into git commands.

2023-02-08
----------
- Self Study
  - Unix(Linux) Commands - textbook and online tutorial.

2023-02-09
----------
- Self Study
  - Unix(Linux) Commands - textbook and online tutorial.
- DDF Meeting

2023-02-10
----------
- Self Study
  - Unix(Linux) Commands - textbook and online tutorial.

2023-02-14
----------
- Self Study
  - Git Commands - textbook and online tutorial.

2023-02-15
----------
- Self Study
  - Git Commands - textbook and online tutorial.
- Created a branch from the master branch for test cases.
- Edited/ created sample test and pushed to remote branch.
- Meeting: weekly @1200 BT 42 mins
  - present: AM, DM, RS
    - Feedback on example test case from DM
     - AM: Setup VScode to be POSIX compliant - use Nik's recommendations &
     VScode link as guide.
     - AM: Avoid commiting commented code - code should be clean.
     - AM: Only use module name top in hierarchical designs.
     - AM: Come up with/ describe naming convention for signals in interfaces
           and signals in modules.
 - DM: Take AM through pull & push request basics later today.
 - DM: Send AM 'boilerplate' for inst, port and svi testcases.
 - DM: AM to use makefile examples from DM as a guide/ starter.
 - RS: AM to seek help from RS when making makefiles for testcases; some errors
       may be subtle and can be fixed quickly by an experienced user.
 - AM: Make 15 initial test cases recommended by DM.
- Meeting: Pull requests and Makefile Intro @ 16:30 NT 60mins
  - Present: AM, DM
  - A walkthrough on pull requests with AM by DM.
  - A quick look at how makefiles work and relevance to project.
  - AM: Use GNU make when making makefiles for using tools in project

2023-02-16
----------
- DDF meeting
- Started work on first 15 initial testcases
  - Made 2 simple test cases using always_ff in the files
    `alwaysff_port.sv` & `alwaysff_svi.sv`.
  - Made 2 simple test cases using always_latch in the files
    `alwayslatch_inst.sv` & `alwayslatch_svi.sv`.
  - Did a quick check of testcases in Vivado;
    - Only 2x test cases with *_port.sv from 8/15 test cases are elaborated
      (Including `test1.sv`).
    - All other test cases are not elaborated.
    - Only `test1.sv` is synthesizable.
    - All other test cases are not synthesizable.
- To Do
  - Investigate cause of no elaboration in some test cases.
  - Investigate cause of no synthesis in testcases other than `test1.sv`.
  - Complete the remaining 7/ 15 test cases.
- Clues as to why some testcases are not able to be elaborated or synthesized:
  - Improper connections/ Instationtion? Some top level ports not connected?
  - Compare other testcases with `test1.sv`.
  - Signals from interface after instantion in top module are not used?
  - Signals not having direction?
  - Module top and/ or interface having no output?

2023-02-21
----------
- Completed the 15 initial testcases.
- Used `force` procedural-continuous assignment with always_comb instead of
  initial begin end statements.
- Check if this is allowed since examples seen use this in initial blocks.
- `alwayslatch_port` and `assign_port` elaborated in Vivado 2020.1.
- `force` not supported in Vivado 2020.1.
- Other testcases failed to elaborate in Vivado.
- To Do
  - Start tutorials/ work on Makefiles.

2023-02-22
----------
- Make reads/ tutorials.
- Weekly Meeting @13:00 NT 25 mins
  - Present: AM, DM, RS, MO
  - AM: Updated team on progress.
  - DM: Accepted 2x pull requests from AM.
  - DM: Updated MO on thesis progress and tasks.
  - RS/DM: Clarified mentioning tool names in logbook.
  - MO: AM to share overleaf of thesis report with MO.
  - DM: AM to focus on setting up intrasftructure (Makefiles) for tests.
  - Meeting time changed to 14:00. Requested by BD; accepted by all.
  - AM: Future pull requests to DM should be to master branch.

2023-02-23
----------
- Make reads/ tutorials.
- Makefile for Yosys linter done.
  - Exits on error - does not check remaining files; to fix.

2023-02-27
----------
- Attempted fixing testcases that generated no netlist.
- DDD presentation on Project.

2023-02-28
----------
- Makefile for icarus:
 - Exits on error - does not check remaining files; to fix.
 - Fixed with || true.
- Makefile for svlint:
 - Checks first file only; to fix.
 - Checks all files but writes stderr into the first .txt file; to fix.
 - Fixed by piping to true.
 - Alternate syntax <svlint -- --lint> may be better for clarity.
- Fixed yosys linter exiting due to 'error' issue.
- Fixed verilator linter exiting due to 'error' issue.
- Running Verilator,Yosys,Svlint and Icarus Linters at once.
- Started looking into Questa and Spyglass userguide for command line syntaxes.

2023-03-01
----------
- Weekly Meeting @14:00 NT 25 mins
  - Present: AM, DM, RS
  - DM: AM to still focus on test infrastructure for now.
  - DM/ RS: Possibility of investigating a real corner case from the design team
    later on.
  - AM: To keep the warnings/error messages from linters as they are - do not
    try to 'fix' the test cases.
- Master thesis report - Chapter 1 (Introduction/Motivation) write up.
- Pull request to DM - Makefiles for 4x tools.

2023-03-02
----------
- Project report structure setup.
- Intro text to Methodology and Experiment chapters.
- Talking points for Theory chapter.
- Review and addition of text/improved structure of chapter 1 of report.
- DDF meeting.


2023-03-07
----------
- Incorporated feedback from DM & BD into draft thesis report.
- Worked on comments from DM from pull request; handling errors in GNU make.
- Command line syntax for Vivado found but opens GUI.
 - Check how to use read_verilog -sv (tcl)command properly for Vivado in shell.

2023-03-08
----------
- Weekly Meeting @14:00 NT 25 mins
  - AM: Brief on progess so far to team.
  - MO: Clarification on direction of thesis.
  - DM,BD,RS: Shed more light on thesis, motivation and expectations.
- Continued work on getting other tools to work - Vivado, Questa, Spyglass.

2023-03-09
----------
- Spyglass and Questa tools initial work.
- Questasim (vlog)- Compiles/lints with 0 errors/warnings for initial testcases.
- Tried batch and gui modes in Spyglass.
- Attemped -shell mode in Spyglass
  - used current_goal lint/lint_rtl
  - used current_goal lint/lint_rtl_enhanced

2023-03-10
----------
- Spyglass setup using shell mode
  - Cleaned/ fixed code.
  - Run using initial testcases.
  - Reports saved for each test case.
  - To Do: Loop through each test case and report moresimple.rpt separately.
- Test cases `force_inst`, `force_port`, `force_svi`
- Tool: Synopsys Spyglass
    - In report, moresimple.rpt (BuiltIn -> RuleGroup=Design Read)
      - `FORCE` statements are not synthesizable (Severity -Synthesis error).
      - `RELEASE` statements are not synthesizable (Severity -Synthesis error).
  - Test case :`force_svi` Goal=lint/lint_rtl
    - Rule W123, Severity - error, Lines 16 in moude M
      - Variable 'u_I.x' read but never set.[Hierarchy: ':M']
      - Variable 'u_I.y' read but never set.[Hierarchy: ':M']
    - Rule W528, Severity - warning, Line 16 in module M
      - Variable 'u_I.z' set but not read.[Hierarchy: ':M']
  - Test case :`force_svi` RuleGroup=Design Read
    - Rule SYNTH_102 &103, Severity - Synthesis error , Lines 8 & 18 in module M
      - FORCE statements are not synthesizable (SYNTH_102)
      - RELEASE statements are not synthesizable (SYNTH_103)
  - Test case :`force_port` Goal=lint/lint_rtl
    - Rule W240, Severity - warning , Line 39 in module top
      - Input 'p1.x' declared but not read.[Hierarchy: ':top']
      - Input 'p1.y' declared but not read.[Hierarchy: ':top']
    - Rule W528, Severity - warning , Line 34 in module M2
      - Variable 'a' set but not read.[Hierarchy: ':top:u_M2@M2']
  - Test case :`force_port` RuleGroup=Design Read
    - Rule W240, Severity - Synthesis error , Line 49 in module top
      - Hierarchical references ( u_M2.a ) are not supported for synthesis
  - Test case :`force_inst` Goal=lint/lint_rtl
    - Rule W528, Severity - warning , Line 17 in module M
      - Variable 'u_I.z' set but not read.[Hierarchy: ':M']
  - Test case :`force_inst` RuleGroup=Design Read
    - Rule SYNTH_102&103, Severity - Synthesis error , Lines 17 & 19 in module M
      - FORCE statements are not synthesizable (SYNTH_102)
      - RELEASE statements are not synthesizable (SYNTH_103)
- Run the other testcases and saved lint report.

2023-03-11
----------
- Initial work on setting up Synopsys DC tool.
  - Explored dc GUI via dc_shell/ invoking directly using design_vision.
  - Used dc_shell commands to read and remove designs.
    - Tried both read_file and read_sverilog commands.
  - Visualized schematics in DC Vision.
- Read DC (syn) manuals.

2023-03-14
----------
- Initial setup of VCS,Formality,Precision & Tessent tools.
- VCS - There appears to be a license issue on startup.
- Mentor Tessent - using 2022.4 version; shell mode only, errors when
  using visualizer mode.
- Mentor Precsion - 2023.1(latest version); errors when invoked.
  - 2022.2 works - working with this version for now.
- Formality initial work OK.

2023-03-15
----------
- Initial setup of Xcelium & RC tools.
- RC - There appears to be a license issue on startup.
- Jaspergold folder not found.
- Quartus setup file/folder not found.
- Weekly Meeting @15:00 NT 30 mins
  - Present: AM, DM, RS
  - RS : Check on Licenses for VCS & RC and manuals for JG & Qtus.
  - DM : Check on workdone by AM so far early next week.
  - AM : Work on TCL scripting for tools requiring TCL scripts.
  - AM : Use EDA playground for now for tools with no license or manuals.

2023-03-16
----------
- DDF Meeting
- TCL tutorials

2023-03-17
----------
- Automating with tcl + make : Precision, Spyglass, DC
- Searched manuals for commands


2023-03-21
----------
- Xcelium(xmvlog) compiles force & release constructs without
  warnings and errors.
- Xcelium(xmelab) elaborates designs having force & release constructs without
  warnings and errors.
- Xcelium(xmsim) simulates designs having force & release constructs without
  warnings and errors.
- Vivado setup - read and synthesize only.
- Vivado read_verilog command not checking for syntax errors as expected - works
  like add_file; could be the reason.

2023-03-22
----------
- Yosys tool work - added proc and opt commands.
  - To Do: Show command - install GraphViz.
- Questasim tool work
  - Added vopt command.
    - Errors(suppressible) in initial testcases:`alwaysff_port.sv` &
    `template.sv`.
  - Added vsim command.
    - Errors(suppressible) in initial testcases:`alwaysff_port.sv`,`template.sv`
    as expected due to optimization errors.
    - Fatal error `force_port.sv`: "(vsim-3695) The interface port 'p1' must
    be passed an actual interface".
- Weekly Meeting @14:00 NT 30 mins
  - Present: AM, DM, RS
  - code review
  - Updates on tools without licenses and clarifications.
    - AM: Ok - Use 'top' for testcases with one module only(DM)

2023-03-23
----------
- Formality : To Do:
  - Make similar designs for implementation/reference without interfaces.
  - Add match command before verify command.
- DC
  - Added setup file ; eliminates warnings/errors - link and target
  libraries not found since dc is run from  directory specified by the user.
  - Compile/ Compile_ultra output logs might be useful when UPF is added to
  testcases?
- Questasim
  - Added testbench.

2023-03-24
----------
- VC Formal and Onespin setup

2023-03-25
----------
- Testcases : array of SVIs

2023-03-29
----------
- Weekly Meeting @14:00 NT 12 mins
  - Present: AM, DM, MO, BD
  - code review (DM) - QUesta : Make file & testcase always_ff
  - AM: Go through comments and changes made by DM.
  Make similar changes for all working tools.
- `assign_array_svi_svi.sv` testcase:
  - Compilation errors in Synopsys DC.
  - Compiles, elaborates and synthesizes with warnings -inout inferred for
  interface `I` with no modport in Vivado during synthesis.
  - No top module but input and output elaborated.
    - Attempts: Intermediate signals, always_comb, explicit  declaration as wire
    but in port list signals and in top module. Same outputs were observed.
  - Implementation step (Vivado):
    - Input and output pins with two buffers in-between.
- Tescases added : assign_array_svi_*.sv

2023-03-30
----------
- Tescases added : force_array_svi_*.sv

2023-04-03
----------
- Worked on pull requests as specified by DM in PR#6. 

2023-04-05
----------
- Weekly Meeting @14:00 NT 60 mins
  - Present: AM, DM, RS
  - code review: Array of SVIs with RS
  - DM: AM to redo tool pull requests to have only .mk file of tool of interest
  per PR.
  - DM: AM to send PR for logbook and testcases.
- Re-worked on pull requests as per PR# 6 - Questa fixes by DM.
- Initiated PR for logbook.

2023-04-07 to 2023-04-11
------------------------
- Theory, Methodology and Experiments chapters write-up.

2023-04-12
----------
- Weekly Meeting @ 14:30 NT 33 mins
  - Present: AM, RS, DM, BD
  - AM: Updated all on progress and sought clarification on scope/ possible
  testcases following some literature reads.
  - DM: AM to focus on current scope and if time permits look at UPF with
  interfaces.
  - DM: AM permitted to investigate other SV constructs/keywords with 
  interfaces but must keep to scope.
  - DM: Initiate pull requests for other tools, testcases and
  testcases/tool with results.
- Theory, Methodology and Experiments chapters write-up.


2023-04-13 to 2023-04-14
------------------------
- Theory, Methodology and Experiments chapters write-up.


2023-04-18
----------
- Tool setup and PR for Onespin, Spyglass, and VC Formal tools.

