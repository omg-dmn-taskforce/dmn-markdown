# Introduction to DMN Context


## [[[]{#_Toc231385120 .anchor}]{#_Ref193707405 .anchor}Introduction to DMN[]{#_Toc231385121 .anchor}Context](https://www.omg.org/spec/SCE/1.0)

[The purpose of **DMN** is to provide the constructs that are needed to
model decisions, so that organizational decision- making can be readily
depicted in diagrams, accurately defined by business analysts, and
(optionally) automated.](https://www.omg.org/spec/SCE/1.0)

[Decision-making is addressed from two different perspectives by
existing modeling standards:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[Business process models (e.g., **BPMN**) can describe the coordination
of decision-making within business processes by defining specific tasks
or activities within which the decision-making takes place. Decision
logic (e.g., PRR, PMML) can define the specific logic used to make
individual decisions, for example as business rules, decision tables, or
executable analytic models. However, a number of authors (including
members of the submission team) have observed that decision-making has
an internal structure which is not conveniently captured in either of
these modeling perspectives. Our intention is that **DMN** will provide
a third perspective -- the Decision Requirements Diagram -- forming a
bridge between business process models and decision logic
models:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[Business process models will define tasks within business processes
where decision-making is required to occur. Decision Requirements
Diagrams will define the decisions to be made in those tasks, their
interrelationships, and their requirements for decision logic. Decision
logic will define the required decisions in sufficient detail to allow
validation and/or automation. Taken together, Decision Requirements
Diagrams and decision logic can provide a complete decision model which
complements a business process model by specifying in detail the
decision-making carried out in process tasks. The relationships between
these three aspects of modeling are shown in [Figure
5-1](#_Ref122600381).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image2.jpg){width="6.4847222222222225in"
height="5.388194444444444in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600381 .anchor}Figure 5-1: Aspects of
modeling](https://www.omg.org/spec/SCE/1.0)

[The resulting connected set of models will allow detailed modeling of
the role of business rules and analytic models in business processes,
cross-validation of models, top-down process design and automation, and
automatic execution of decision-making (e.g., by a business process
management system calling a decision service deployed from a business
rules management system).](https://www.omg.org/spec/SCE/1.0)

[Although [Figure 5-1](#_Ref122600381) shows a linkage between a
business process model and a decision model for the purposes of
explaining the relationship between **DMN** and other standards, it must
be stressed that **DMN** is not dependent on **BPMN**, and its two
levels -- decision requirements and decision logic -- may be used
independently or in conjunction to model a domain of decision-making
without any reference to business processes (see [Figure
5-2](#_Ref122600482)).](https://www.omg.org/spec/SCE/1.0)

[**DMN** will provide constructs spanning both decision requirements and
decision logic modeling. For decision requirements modeling, it defines
the concept of a Decision Requirements Graph (DRG) comprising a set of
elements and their connection rules, and a corresponding notation: The
Decision Requirements Diagram (DRD). For decision logic modeling it
provides a language called FEEL for defining and assembling decision
tables, calculations, if/then/else logic, simple data structures, and
externally defined logic from Java, ONNX and PMML into executable
expressions with formally defined semantics. It also provides a notation
for decision logic ("boxed expressions") allowing components of the
decision logic level to be drawn graphically and associated with
elements of a Decision Requirements Diagram. The relationship between
these constructs is shown in [Figure
5-2](#_Ref122600482).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image3.jpg){width="5.500892388451444in"
height="5.291813210848644in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600482 .anchor}Figure 5-2: DMN
Constructs](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385122 .anchor}Scope and uses of DMN](https://www.omg.org/spec/SCE/1.0)

[Decision modeling is carried out by business analysts in order to
understand and define the decisions used in a business or organization.
Such decisions are typically operational decisions made in day-to-day
business processes, rather than the strategic decision-making for which
fewer rules and representations
exist.](https://www.omg.org/spec/SCE/1.0)

[Three uses of **DMN** can be discerned in this
context:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  
3.  

### [For modeling human decision-making. For modeling the requirements for automated decision-making. For implementing automated decision-making. []{#_Toc231385123 .anchor}Modeling human decision-making](https://www.omg.org/spec/SCE/1.0)

[**DMN** may be used to model the decisions made by personnel within an
organization. Human decision-making can be broken down into a network of
interdependent constituent decisions and modeled using a DRD. The
decisions in the DRD would probably be described at quite a high level,
using natural language rather than decision
logic.](https://www.omg.org/spec/SCE/1.0)

[Knowledge sources may be defined to model governance of decision-making
by people (e.g., a manager), regulatory bodies (e.g., an ombudsman),
documents (e.g., a policy booklet) or bodies of legislation (e.g., a
government statute). These knowledge sources may be linked together, for
example to show that a decision is governed (a) by a set of regulations
defined by a regulatory body, and (b) by a company policy document
maintained by a manager.](https://www.omg.org/spec/SCE/1.0)

[Business knowledge models may be used to represent specific areas of
business knowledge drawn upon when making decisions. This will allow
**DMN** to be used as a tool for formal definition of requirements for
knowledge management. Business knowledge models may be linked together
to show the interdependencies between areas of knowledge (in a manner
similar to that used in the existing technique of Knowledge Structure
Mapping). Knowledge sources may be linked to the business knowledge
models to indicate how the business knowledge is governed or maintained,
for example to show that a set of business policies (the business
knowledge model) is defined in a company policy document (the knowledge
source).](https://www.omg.org/spec/SCE/1.0)

[In some cases, it may be possible to define specific rules or
algorithms for the decision-making. These may be modeled using decision
logic (e.g., business rules or decision tables) to specify business
knowledge models in the DRD, either descriptively (to record how
decisions are currently made, or how they were made during a particular
period of observation) or prescriptively (to define how decisions should
be made or will be made in the
future).](https://www.omg.org/spec/SCE/1.0)

[Decision-making modeled in **DMN** may be mapped to tasks or activities
within a business process modeled using **BPMN**. At a high level, a
collaborative decision-making task may be mapped to a subset of
decisions in a DRD representing the overall decision-making behavior of
a group or department. At a more detailed level, it is possible to model
the interdependencies between decisions made by a number of individuals
or groups using **BPMN** collaborations: each participant in the
decision-making is represented by a separate pool in the collaboration
and a separate DRD in the decision model. Decisions in those DRDs are
then mapped to tasks in the pools, and input data in the DRDs are mapped
to the content of messages passing between the
pools.](https://www.omg.org/spec/SCE/1.0)

[\
The combined use of **BPMN** and **DMN** thus provides a graphical
language for describing multiple levels of human decision-making within
an organization, from activities in business processes down to a
detailed definition of decision logic. Within this context **DMN**
models will describe collaborative organizational decisions, their
governance, and the business knowledge required for
them.](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385124 .anchor}]{#_Ref123200289 .anchor}Modeling requirements for automated decision-making](https://www.omg.org/spec/SCE/1.0)

[The use of **DMN** for modeling the requirements for automated
decision-making is similar to its use in modeling human decision-making,
except that it is entirely prescriptive, rather than descriptive, and
there is more emphasis on the detailed decision
logic.](https://www.omg.org/spec/SCE/1.0)

[For full automation of decisions, the decision logic must be complete,
i.e., capable of providing a decision result for any possible set of
values of the input data.](https://www.omg.org/spec/SCE/1.0)

[However, partial automation is more common, where some decision-making
remains the preserve of personnel. Interactions between human and
automated decision-making may be modeled using collaborations as above,
with separate pools for human and automated decision-makers, or more
simply by allocating the decision-making to separate tasks in the
business process model, with user tasks for human decision-making and
business rule tasks for automated decision-making. So, for example, an
automated business rules task might decide to refer some cases to a
human reviewer; the decision logic for the automated task needs to be
specified in full but the reviewer's decision-making could be left
unspecified.](https://www.omg.org/spec/SCE/1.0)

[Once decisions in a DRD are mapped to tasks in a **BPMN** business
process flow, it is possible to validate across the two levels of
models. For example, it is possible to verify that all input data in the
DRDs are provided by previous tasks in the business process, and that
the business process uses the results of decisions only in subsequent
tasks or gateways. **DMN** models the relationships between Decisions
and Business Processes so that the Decisions that must be made for a
Business Process to complete can be identified and so that the specific
decision-making tasks that perform or execute a Decision can be
specified. No formal mapping of **DMN** ItemDefinition or **DMN**
InputData to **BPMN** DataObject is proposed but an implementation could
include such a check in a situation where such a mapping could be
determined.](https://www.omg.org/spec/SCE/1.0)

[\
Together, **BPMN** and **DMN** therefore allow specification of the
requirements for automated decision-making and its interaction with
human decision making within business processes. These requirements may
be specified at any level of detail, or at all levels. The three-tier
mapping between business process models, DRDs and decision logic will
allow the definition of these requirements to be supported by
model-based computer-aided design
tools.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385125 .anchor}Implementing automated decision-making](https://www.omg.org/spec/SCE/1.0)

[If all decisions and business knowledge models are fully specified
using decision logic, it becomes possible to execute decision
models.](https://www.omg.org/spec/SCE/1.0)

[One possible scenario is the use of "decision services" deployed from a
Business Rules Management System (BRMS) and called by a Business Process
Management System (BPMS). A decision service encapsulates the decision
logic supporting a DRD, providing interfaces that correspond to subsets
of input data and decisions within the DRD. When called with a set of
input data, the decision service will evaluate the specified decisions
and return their results. The constraint in **DMN** that all decision
logic is free of side-effects means that decision services will comply
with SOA principles, simplifying system design. Note that decision
services may also be invoked internal to the decision model, a trait
that they share with business knowledge
models.](https://www.omg.org/spec/SCE/1.0)

[The structure of a decision model, as visualized in the DRD, may be
used as a basis for planning an implementation project. Specific project
tasks may be included to cover the definition of decision logic (e.g.,
rule discovery using human experts, or creation of analytic models), and
the implementation of components of the decision
model.](https://www.omg.org/spec/SCE/1.0)

[Some decision logic representing the business knowledge encapsulated in
decision services needs to be maintained over time by personnel
responsible for the decisions, using special "knowledge maintenance
interfaces". **DMN** supports the effective design and implementation of
knowledge maintenance interfaces: any business knowledge requiring
maintenance should be modeled as business knowledge models in the DRD,
and the responsible personnel as knowledge sources. DRDs then provide a
specification of the required knowledge maintenance interfaces and their
users, and the decision logic specifies the initial configuration of the
business knowledge to be maintained.](https://www.omg.org/spec/SCE/1.0)

[Other decision logic needs to be refreshed by regular analytic
modeling. The representation of business knowledge models as functions
in **DMN** makes the use of analytic models in decision services very
simple: any analytic model capable of representation as a function may
be directly called by or imported into a decision
service.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385126 .anchor}Combining applications of modelling](https://www.omg.org/spec/SCE/1.0)

[The three contexts described above are not mutually exclusive
alternatives; a large process automation project might use **DMN** in
all three ways.](https://www.omg.org/spec/SCE/1.0)

[First, the decision-making within the existing process might be
modeled, to identify the full extent of current decision making and the
areas of business knowledge involved. This "as-is" analysis provides the
baseline for process improvement.](https://www.omg.org/spec/SCE/1.0)

[Next, the process might be redesigned to make the most effective use of
both automated and human decision-making, often using collaboration
between the two (e.g., using automated referrals to human
decision-makers, or decision support systems which advise or constrain
the user). Such a redesign involves modeling the requirements for the
decision making to occur in each process task and the roles and
responsibilities of individuals or groups in the organization. This
model provides a "to-be" specification of the required process and the
decision-making it coordinates.](https://www.omg.org/spec/SCE/1.0)

[Comparison of the "as-is" and "to-be" models will indicate requirements
not just for automation technology, but for change management: changes
in the roles and responsibilities of personnel, and training to support
new or modified business knowledge.](https://www.omg.org/spec/SCE/1.0)

[Finally, the "to-be" model will be implemented as executable system
software. Provided the decision logic is fully specified in FEEL and/or
other external logic (e.g., externally defined Java methods or PMML
models), components of the decision model may be implemented directly as
software components.](https://www.omg.org/spec/SCE/1.0)

[**DMN** does not prescribe any particular methodology for carrying out
the above activities; it only supports the models used for
them.](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385127 .anchor}Basic concepts](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385128 .anchor}Decision requirements level](https://www.omg.org/spec/SCE/1.0)

[The word "decision" has two definitions in common use: it may denote
the act of choosing among multiple possible options; or it may denote
the option that is chosen. In this specification, we adopt the former
usage: a **decision** is the act of determining an **output** value (the
chosen option), from a number of **input** values, using logic defining
how the output is determined from the inputs. This **decision logic**
may include one or more **business knowledge models** which encapsulate
business know-how in the form of business rules, analytic models, or
other formalisms. This basic structure, from which all decision models
are built, is shown in [Figure
5-3](#_Ref122600611).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image4.jpg){width="2.2465277777777777in"
height="1.2729166666666667in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600611 .anchor}Figure 5-3: Basic elements of a decision
model](https://www.omg.org/spec/SCE/1.0)

[For simplicity and generality, many of the figures in this
specification show each decision as having a single associated business
knowledge model, but it should be noted that **DMN** does not require
this to be the case. The use of business knowledge models to encapsulate
decision logic is a matter of style and methodology, and decisions may
be modeled with no associated business knowledge models, or with
several. Similar to business knowledge models, decision services may
also be used to encapsulate decision logic for reuse inside the decision
model, but for simplicity such examples will be presented starting in
the section describing decision
services.](https://www.omg.org/spec/SCE/1.0)

[Authorities may be defined for decisions or business knowledge models,
which might be (for example) domain experts responsible for defining or
maintaining them, or source documents from which business knowledge
models are derived or sets of test cases with which the decisions must
be consistent. These are called **knowledge sources** (see [Figure
5-4](#_Ref122600642)).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image5.jpg){width="3.9625in"
height="1.4777777777777779in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600642 .anchor}Figure 5-4: Knowledge
sources](https://www.omg.org/spec/SCE/1.0)

[A decision is said to "require" its inputs in order to determine its
output. The inputs may be **input data**, or the outputs of other
decisions. (In either case they may be data structures, rather than just
simple data items.) If the inputs of a decision Decision1 include the
output of another decision Decision2, Decision1 "requires" Decision2.
Decisions may therefore be connected in a network called a **Decision
Requirements Graph (DRG)**, which may be drawn as a **Decision**
**Requirements Diagram** (**DRD**). A DRD shows how a set of decisions
depend on each other, on input data, and on business knowledge models. A
simple example of a DRD with only two decisions is shown in [Figure
5-5](#_Ref122600672).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image6.jpg){width="3.5166666666666666in"
height="1.7534722222222223in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600672 .anchor}Figure 5-5: A simple Decision Requirements
Diagram (DRD)](https://www.omg.org/spec/SCE/1.0)

[A decision may require multiple business knowledge models, and a
business knowledge model may require multiple other business knowledge
models, as shown in [Figure
5-6](#_Ref122600703).](https://www.omg.org/spec/SCE/1.0)

[This will allow (for example) the modeling of complex decision logic by
combining diverse areas of business knowledge, and the provision of
alternative versions of decision logic for use in different
situations.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image7.jpg){width="3.4805555555555556in"
height="1.2895833333333333in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122600703 .anchor}Figure 5-6: Combining business knowledge
models](https://www.omg.org/spec/SCE/1.0)

[DRGs and their notation as DRDs are specified in detail in clause
[6](#_Ref152655601).](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385129 .anchor}Decision logic level](https://www.omg.org/spec/SCE/1.0)

[The components of the decision requirements level of a decision model
may be described, as they are above, using only business concepts. This
level of description is often sufficient for business analysis of a
domain of decision-making, to identify the business decisions involved,
their interrelationships, the areas of business knowledge and data
required by them, and the sources of the business knowledge. Using
decision logic, the same components may be specified in greater detail,
to capture a complete set of business rules and calculations, and (if
desired) to allow the decision making to be fully
automated.](https://www.omg.org/spec/SCE/1.0)

[Decision logic may also provide additional information about how to
display elements in the decision model. For example, the decision logic
element for a decision table may specify whether to show the rules as
rows or as columns. The decision logic element for a calculation may
specify whether to line up terms vertically or
horizontally.](https://www.omg.org/spec/SCE/1.0)

[The correspondence between concepts at the decision requirements level
and the decision logic level is described below. Please note that in the
figures below, as in [Figure 5-1](#_Ref122600381) and [Figure
5-2](#_Ref122600482), the grey ellipses and dotted lines are drawn only
to indicate correspondences between concepts in different levels for the
purposes of this introduction. They do *not* form part of the notation
of **DMN**, which is formally defined in clauses [6.2](#_Ref122605755),
[8.2](#_Ref122605768), and [10.2](#_Ref122605781). It is envisaged that
implementations will provide facilities for moving between levels of
modeling, such as "opening", "drilling down" or "zooming in", but
**DMN** does not specify how this should be
done.](https://www.omg.org/spec/SCE/1.0)

[At the decision logic level, every decision in a DRG is defined using a
**value expression** which specifies how the decision's output is
determined from its inputs. At that level, the decision is considered to
*be* the evaluation of the expression. The value expression may be
notated using a **boxed expression**, as shown in [Figure
5-7](#_Ref122605802).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image8.jpg){width="6.206944444444445in"
height="2.3868055555555556in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122605802 .anchor}Figure 5-7: Decision and corresponding value
expression](https://www.omg.org/spec/SCE/1.0)

[In the same way, at the decision logic level, a business knowledge
model is defined using a value expression that specifies how an output
is determined from a set of inputs. In a business knowledge model, the
value expression is encapsulated as a function definition, which may be
invoked from a decision\'s value
expression.](https://www.omg.org/spec/SCE/1.0)

[The interpretation of business knowledge models as functions in **DMN**
means that the combination of business knowledge models as in [Figure
5-6](#_Ref122600703) has the clear semantics of functional composition.
The value expression of a business knowledge model may be notated using
a **boxed function** definition, as shown in [Figure
5-8](#_Ref122605872). Similar to a business knowledge model, the
decision service element can also be invoked from a decision's value
expression (see clause
[5.3.3](#_Ref122605973)).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image9.jpg){width="6.768055555555556in"
height="1.8576388888888888in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122605872 .anchor}Figure 5-8: Business knowledge model and
corresponding value expression](https://www.omg.org/spec/SCE/1.0)

[A business knowledge model may contain any decision logic which is
capable of being represented as a function. This will allow the import
of many existing decision logic modeling standards (e.g., for business
rules and analytic models) into **DMN**. An important format of business
knowledge, specifically supported in **DMN**, is the Decision Table.
Such a business knowledge model may be notated using a **Decision
Table**, as shown in [Figure
5-9](#_Ref122606004).](https://www.omg.org/spec/SCE/1.0)

[![](media/image10.jpg){width="6.768055555555556in"
height="2.589583333333333in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122606004 .anchor}Figure 5-9: Business knowledge model and
corresponding decision table](https://www.omg.org/spec/SCE/1.0)

[In most cases, the logic of a decision is encapsulated into business
knowledge models, and the value expression associated with the decision
specifies how the business knowledge models are invoked, and how the
results of their invocations are combined to compute the output of the
decision. The decision's value expression may also specify how the
output is determined from its input entirely within itself, without
invoking a business knowledge model: in that case, no business knowledge
model is associated with the decision (neither at the decision
requirements level nor at the decision logic
level).](https://www.omg.org/spec/SCE/1.0)

[An expression language for defining decision logic in **DMN**, covering
all the above concepts, is specified fully in clause
[10](#_Ref122607316). This is **FEEL**: The Friendly Enough Expression
Language. The notation for Decision Tables is specified in detail in
clause [8](#_Ref122607333).](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385130 .anchor}]{#_Ref122605973 .anchor}Decision services](https://www.omg.org/spec/SCE/1.0)

[A decision service defines reusable logic within the decision model. A
decision service exposes one or more decisions from a decision model as
a reusable element, a service, which might be consumed (for example)
internally by another decision in the decision model, or externally by a
task in a **BPMN** process model. When the service is called with the
necessary input data and decision results, it returns the outputs of the
exposed decisions. Any decision service encapsulating a **DMN** decision
model will be stateless and have no side
effects.](https://www.omg.org/spec/SCE/1.0)

[One important use of **DMN** will be to define decision-making logic to
be automated using decision services. When the decision service is
invoked externally, it might be implemented, for example, as a web
service. **DMN** does not specify how such services should be
implemented, but it allows the functionality of a service to be defined
against a decision model. The decision service therefore must be defined
in a DRD. When invoked internally from a decision the decision service
is invoked, similar to a BKM, by binding expressions in the logic of the
calling decision to parameters in the invoked decision
service.](https://www.omg.org/spec/SCE/1.0)

[It is assumed that the client requires a certain set of decisions to be
made, and that the service is created to meet that requirement. The sole
function of the decision service is to return the results of evaluating
that set of decisions (the](https://www.omg.org/spec/SCE/1.0)

["output decisions"). The service may be provided with the results of
decisions evaluated externally to the service (the "input decisions").
The service must encapsulate not just the output decisions but also any
decisions in the DRG directly or indirectly required by the output
decisions which are not provided in the input decisions (the
"encapsulated decisions").](https://www.omg.org/spec/SCE/1.0)

[The interface to the decision service will consist
of:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[Input data: instances of all the input data required by the
encapsulated decisions. Input decisions: instances of the results of all
the input decisions. Output decisions: the results of evaluating (at
least) all the output decisions, using the provided input decisions and
input data. When the service is called, providing the input data and
input decisions, it returns the output
decisions.](https://www.omg.org/spec/SCE/1.0)

[Note that to define a decision service it is only necessary to specify
the output decisions and either the input decisions or the encapsulated
decisions. The remaining attributes (the required input data, and
whichever of the encapsulated or input decisions was not specified) may
then be inferred from the decision model against which the service is
defined. Alternatively, if more attributes are defined than are strictly
necessary, they may be validated against the decision
model.](https://www.omg.org/spec/SCE/1.0)

[\
[Figure 5-10](#_Ref122607362) shows a decision service defined against a
decision model that includes three decisions. The output decisions for
this service are {Decision 1}, and the input decisions are {}, that is,
the service returns the result of Decision 1 and is not provided with
the results of any external decisions. Since Decision 1 requires
Decision 2, which is not provided to the service as input, the service
must also encapsulate Decision 2. Decision 3 is not required to be
encapsulated. The encapsulated decisions are therefore {Decision 1,
Decision 2}. The service requires Input data 1 and Input data 2 but not
Input data 3.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image11.jpg){width="4.4709951881014875in"
height="2.666732283464567in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122607362 .anchor}Figure 5-10: A decision
service](https://www.omg.org/spec/SCE/1.0)

[Multiple decision services may be defined against the same decision
model. [Figure 5-11](#_Ref122607390) shows a decision service defined
against the same decision model, whose output decisions are {Decision 1}
and whose input decisions are {Decision 2}. The encapsulated decisions
for this service are {Decision 1}. The service requires Input data 1 but
not Input data 2 or Input data 3.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image12.jpg){width="4.7978685476815395in"
height="2.4493471128608926in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122607390 .anchor}Figure 5-11: A decision service taking a
decision as input](https://www.omg.org/spec/SCE/1.0)

[In its simplest form a decision service would always evaluate all the
decisions in the output set, set and return all their
results.](https://www.omg.org/spec/SCE/1.0)

[For computational efficiency various improvements to this basic
interpretation can be imagined, for
example:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[An optional input parameter specifying a list of "requested decisions"
(a subset of the minimal output set). Only the results of the requested
decisions would be returned in the output context. An optional input
parameter specifying a list of "known decisions" (a subset of the
encapsulation set), with their results. The decision service would not
evaluate these decisions but would use the provided input values
directly. All such implementation details are left to the software
provider.](https://www.omg.org/spec/SCE/1.0)

[A decision service is "complete" if it contains decision logic for
evaluating all the encapsulated decisions on all possible input data
values. A request to the service is "valid" if instances are provided
for all the input decisions and input data required by those decisions
which need to be evaluated, i.e., (in the simple case) all the
encapsulated decisions, or (assuming the optional parameters above) any
requested decisions and any encapsulated decisions required by them
which are not already known.](https://www.omg.org/spec/SCE/1.0)

[This page intentionally left blank.](https://www.omg.org/spec/SCE/1.0)

