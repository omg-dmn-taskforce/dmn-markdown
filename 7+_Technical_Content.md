# Requirements (DRG and DRD) Introduction


## [[[[]{#_Toc231385131 .anchor}]{#_Ref152655951 .anchor}]{#_Ref152655601 .anchor}Requirements (DRG and DRD)[]{#_Toc231385132 .anchor}Introduction](https://www.omg.org/spec/SCE/1.0)

[The decision requirements level of a decision model in **DMN** consists
of a Decision Requirements Graph (DRG) depicted in one or more Decision
Requirements Diagrams (DRDs).](https://www.omg.org/spec/SCE/1.0)

[A DRG models a domain of decision-making, showing the most important
elements involved in it and the dependencies between them. The elements
modeled are decisions, areas of business knowledge, sources of business
knowledge, input data and decision
services:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 

[A **Decision** element denotes the act of determining an output from a
number of inputs, using decision logic which may reference one or more
Business Knowledge Models. A **Business Knowledge Model** element
denotes a function encapsulating business knowledge, e.g., as business
rules, a decision table, or an analytic model. An **Input Data** element
denotes information used as an input by one or more Decisions. A
**Knowledge Source** element denotes an authority for a Business
Knowledge Model or Decision. A **Decision Service** element denotes a
set of reusable decisions that can be invoked internally or externally.
The dependencies between these elements express three kinds of
requirements: information, knowledge, and
authority:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[An **Information Requirement** denotes Input Data or Decision output
being used as input to a Decision. A **Knowledge Requirement** denotes
the invocation of a Business Knowledge Model or Decision Service by the
decision logic of a Decision. An **Authority Requirement** denotes the
dependence of a DRG element on another DRG element that acts as a source
of guidance or knowledge. DRDs may also contain any number of artifacts
representing annotations of the
diagram:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[A Text Annotation is modeler-entered text used for comment or
explanation. An Association is a dotted connector used to link a Text
Annotation to a DRG Element A Group is a visual mechanism to group
elements of a diagram informally. These components are summarized in
[Table 1](#_Ref113621172) and described in more detail in clause
[6.2](#_Ref122608214).](https://www.omg.org/spec/SCE/1.0)

[A DRG is a graph composed of elements connected by requirements and is
self-contained in the sense that all the modeled requirements for any
Decision in the DRG (its immediate sources of information, knowledge,
and authority) are present in the same DRG. It is important to
distinguish this complete definition of the DRG from a DRD presenting
any particular view of it, which may be a partial or filtered display:
see clause [6.2.4](#_Ref122608229).](https://www.omg.org/spec/SCE/1.0)

## [[[[]{#_Toc231385133 .anchor}]{#_Ref122608214 .anchor}]{#_Ref122605755 .anchor}Notation](https://www.omg.org/spec/SCE/1.0)

[The notation for all components of a DRD is summarized in [Table
1](#_Ref113621172) and described in more detail
below.](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------------------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
| > [**Component**](https://www.omg.org/spec/SCE/1.0)                                                    | [**Description**](https://www.omg.org/spec/SCE/1.0) | [**Notation**](https://www.omg.org/spec/SCE/1.0)                   |
+====================================================+===================================================+=====================================================+====================================================================+
| > [Elements](https://www.omg.org/spec/SCE/1.0)     | > [Decision](https://www.omg.org/spec/SCE/1.0)    | [A decision denotes the act of determining an       | [![](media/image13.jpg){width="1.2012379702537184in"               |
|                                                    |                                                   | output from a number of inputs, using decision      | height="0.40278324584426944in"}](https://www.omg.org/spec/SCE/1.0) |
|                                                    |                                                   | logic which may reference one or more business      |                                                                    |
|                                                    |                                                   | knowledge                                           |                                                                    |
|                                                    |                                                   | models.](https://www.omg.org/spec/SCE/1.0)          |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Business](https://www.omg.org/spec/SCE/1.0)    | [A business knowledge model denotes a function      | [![](media/image14.jpg){width="1.2012379702537184in"               |
|                                                    | >                                                 | encapsulating business knowledge, e.g., as business | height="0.40278324584426944in"}](https://www.omg.org/spec/SCE/1.0) |
|                                                    | > [Knowledge](https://www.omg.org/spec/SCE/1.0)   | rules, a decision table, or an analytic             |                                                                    |
|                                                    | >                                                 | model.](https://www.omg.org/spec/SCE/1.0)           |                                                                    |
|                                                    | > [Model](https://www.omg.org/spec/SCE/1.0)       |                                                     |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Input Data](https://www.omg.org/spec/SCE/1.0)  | > [An input data element denotes information used   | [![](media/image15.jpg){width="1.2012379702537184in"               |
|                                                    |                                                   | > as an input by one or more decisions. When        | height="0.40278324584426944in"}](https://www.omg.org/spec/SCE/1.0) |
|                                                    |                                                   | > enclosed within a knowledge model, it denotes the |                                                                    |
|                                                    |                                                   | > parameters to the knowledge                       | [or alternatively](https://www.omg.org/spec/SCE/1.0)               |
|                                                    |                                                   | > model.](https://www.omg.org/spec/SCE/1.0)         |                                                                    |
|                                                    |                                                   | >                                                   | [![Shape Description automatically generated with medium           |
|                                                    |                                                   | > [The default representation of the Input Data is  | confidence](media/image16.png){width="0.84375in"                   |
|                                                    |                                                   | > an oval symbol. For visual coherence with BPMN    | height="0.9375in"}](https://www.omg.org/spec/SCE/1.0)              |
|                                                    |                                                   | > and CMMN, the representation as a paper symbol    |                                                                    |
|                                                    |                                                   | > with folded corner is possible. This              |                                                                    |
|                                                    |                                                   | > specification uses the default representation in  |                                                                    |
|                                                    |                                                   | > all examples.](https://www.omg.org/spec/SCE/1.0)  |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Knowledge](https://www.omg.org/spec/SCE/1.0)   | [A knowledge source denotes an authority for a      | [![Diagram Description automatically                               |
|                                                    | >                                                 | business knowledge model or                         | generated](media/image17.jpg){width="0.9989840332458443in"         |
|                                                    | > [Source](https://www.omg.org/spec/SCE/1.0)      | decision.](https://www.omg.org/spec/SCE/1.0)        | height="0.6041754155730533in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Decision](https://www.omg.org/spec/SCE/1.0)    | [A decision service may enclose a set of reusable   | [![A picture containing shape Description automatically            |
|                                                    | >                                                 | decisions (not shown in the element to the right)   | generated](media/image18.jpg){width="1.5042793088363955in"         |
|                                                    | > [Service](https://www.omg.org/spec/SCE/1.0)     | that can be invoked internally by another decision  | height="0.6687620297462817in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    | >                                                 | or externally, e.g., by a **BPMN**                  |                                                                    |
|                                                    | > [(expanded)](https://www.omg.org/spec/SCE/1.0)  | process.](https://www.omg.org/spec/SCE/1.0)         |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Decision](https://www.omg.org/spec/SCE/1.0)    | [A decision service denotes a set of reusable       | [![Text Description automatically generated with medium            |
|                                                    | >                                                 | decisions (that may be hidden using the element to  | confidence](media/image19.jpg){width="1.4535104986876641in"        |
|                                                    | > [Service](https://www.omg.org/spec/SCE/1.0)     | the right).](https://www.omg.org/spec/SCE/1.0)      | height="0.7048436132983377in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    | >                                                 |                                                     |                                                                    |
|                                                    | > [(collapsed)](https://www.omg.org/spec/SCE/1.0) |                                                     |                                                                    |
+----------------------------------------------------+---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
| > [Requirements](https://www.omg.org/spec/SCE/1.0) | > [Information](https://www.omg.org/spec/SCE/1.0) | [An information requirement denotes input data, or  | [![](media/image20.jpg){width="1.8349879702537182in"               |
|                                                    | >                                                 | a decision output being used as one of the inputs   | height="0.20902996500437446in"}](https://www.omg.org/spec/SCE/1.0) |
|                                                    | > [Requirement](https://www.omg.org/spec/SCE/1.0) | of a decision.](https://www.omg.org/spec/SCE/1.0)   |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Knowledge](https://www.omg.org/spec/SCE/1.0)   | [A knowledge requirement denotes the invocation of  | [![](media/image21.jpg){width="1.8209667541557306in"               |
|                                                    | >                                                 | a business knowledge                                | height="0.2534722222222222in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    | > [Requirement](https://www.omg.org/spec/SCE/1.0) | model.](https://www.omg.org/spec/SCE/1.0)           |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Authority](https://www.omg.org/spec/SCE/1.0)   | [An authority requirement denotes the dependence of | [![](media/image22.jpg){width="1.8349879702537182in"               |
|                                                    | >                                                 | a DRD element on another DRD element that acts as a | height="0.23124562554680664in"}](https://www.omg.org/spec/SCE/1.0) |
|                                                    | > [Requirement](https://www.omg.org/spec/SCE/1.0) | source of guidance or                               |                                                                    |
|                                                    |                                                   | knowledge.](https://www.omg.org/spec/SCE/1.0)       |                                                                    |
+----------------------------------------------------+---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
| > [Artifacts](https://www.omg.org/spec/SCE/1.0)    | > [Text                                           | [A Text Annotation consists of a square bracket     | [![Text Description automatically                                  |
|                                                    | > Annotation](https://www.omg.org/spec/SCE/1.0)   | followed by modeler-entered explanatory text or     | generated](media/image23.jpg){width="1.3261636045494314in"         |
|                                                    |                                                   | comment.](https://www.omg.org/spec/SCE/1.0)         | height="0.5909547244094489in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Association](https://www.omg.org/spec/SCE/1.0) | [An Association connector links a Text Annotation   | [![](media/image24.jpg){width="1.8209667541557306in"               |
|                                                    |                                                   | to the DRG Element it explains or comments          | height="0.1340343394575678in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    |                                                   | on.](https://www.omg.org/spec/SCE/1.0)              |                                                                    |
|                                                    +---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+
|                                                    | > [Group](https://www.omg.org/spec/SCE/1.0)       | [A Group consists of a rounded corner rectangle     | [![Shape Description automatically                                 |
|                                                    |                                                   | drawn with a solid dashed line that groups element  | generated](media/image25.jpg){width="1.5963877952755905in"         |
|                                                    |                                                   | together                                            | height="0.8506878827646545in"}](https://www.omg.org/spec/SCE/1.0)  |
|                                                    |                                                   | informally.](https://www.omg.org/spec/SCE/1.0)      |                                                                    |
+----------------------------------------------------+---------------------------------------------------+-----------------------------------------------------+--------------------------------------------------------------------+

: [[]{#_Ref113621172 .anchor}Table 1: DRD
components](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385134 .anchor}DRD Elements](https://www.omg.org/spec/SCE/1.0)

#### [Decision notation](https://www.omg.org/spec/SCE/1.0)

[A Decision is represented in a DRD as a rectangle, normally drawn with
solid lines, as shown in [Table 1](#_Ref113621172). The Name of the
Decision MUST be displayed inside the shape unless it is overridden by
the text attribute of the associated DMNDI:DMNLabel element, which MUST
be displayed instead.](https://www.omg.org/spec/SCE/1.0)

[If the Listed Input Data option is exercised (see
[6.2.1.3](#_Ref122608255)), all the Decision's requirements for Input
Data SHALL be listed beneath the Decision's Name and separated from it
by a horizontal line, as shown in [Figure 6-1](#_Ref113621302). The
listed Input Data names SHALL be clearly inside the shape of the DRD
element.\
](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image26.jpg){width="1.4868055555555555in"
height="1.0in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113621302 .anchor}Figure 6-1: Decision with Listed Input Data
option](https://www.omg.org/spec/SCE/1.0)

[The properties of a Decision are listed and described in
[6.3.6](#_Ref122608273).](https://www.omg.org/spec/SCE/1.0)

#### [Business Knowledge Model notation](https://www.omg.org/spec/SCE/1.0)

[A Business Knowledge Model is represented in a DRD as a rectangle with
two clipped corners, normally drawn with solid lines, as shown in [Table
1](#_Ref113621172). The Name of the Business Knowledge Model MUST be
displayed inside the shape unless it is overridden by the text attribute
of the associated DMNDI:DMNLabel element, which MUST be displayed
instead.](https://www.omg.org/spec/SCE/1.0)

[The properties of a Business Knowledge Model are listed and described
in [6.3.8](#_Ref122592840).](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref122608255 .anchor}Input Data notation](https://www.omg.org/spec/SCE/1.0)

[An Input Data element is represented in a DRD as a shape with two
parallel straight sides and two semi-circular ends, normally drawn with
solid lines, as shown in [Table 1](#_Ref113621172). The Name of the
Input Data element MUST be displayed inside the shape unless it is
overridden by the text attribute of the associated DMNDI:DMNLabel
element, which MUST be displayed
instead.](https://www.omg.org/spec/SCE/1.0)

[An alternative compliant way to display requirements for Input Data,
especially useful when DRDs are large or complex, is that Input Data are
not drawn as separate notational elements in the DRD but are instead
listed on those Decision elements which require them. For convenience in
this specification this is called the "Listed Input Data" option.
Implementations MAY offer this option. [Figure 6-2](#_Ref122608313)
shows two equivalent DRDs, one drawing Input Data elements, the other
exercising the Listed Input Data option. Note that if an Input Data
element is not displayed it SHALL be listed on all Decisions which
require it (unless it is deliberately hidden as discussed in
[6.2.4](#_Ref122592883)).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image27.jpg){width="6.770138888888889in"
height="3.05in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122608313 .anchor}Figure 6-2: The Listed Input Data
option](https://www.omg.org/spec/SCE/1.0)

[The properties of an Input Data element are listed and described in
[6.3.11](#_Ref122592920).](https://www.omg.org/spec/SCE/1.0)

#### [Knowledge Source notation](https://www.omg.org/spec/SCE/1.0)

[A Knowledge Source is represented in a DRD as a shape with three
straight sides and one wavy one, normally drawn with solid lines, as
shown in [Table 1](#_Ref113621172). The Name of the Knowledge Source
MUST be displayed inside the shape unless it is overridden by the text
attribute of the associated DMNDI:DMNLabel element, which MUST be
displayed instead.](https://www.omg.org/spec/SCE/1.0)

[The properties of a Knowledge Source element are listed and described
in [6.3.12](#_Ref122592932).](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385135 .anchor}]{#_Ref122592989 .anchor}DRD Requirements](https://www.omg.org/spec/SCE/1.0)

#### [Information Requirement notation](https://www.omg.org/spec/SCE/1.0)

[Information Requirements may be drawn from Input Data elements to
Decisions, and from Decisions to other Decisions. They represent the
dependency of a Decision on information from input data or the results
of other Decisions. They may also be interpreted as data flow: a DRD
displaying only Decisions, Input Data and Information Requirements is
equivalent to a dataflow diagram showing the communication of
information between those elements at evaluation time. The Information
Requirements of a valid DRG form a directed acyclic
graph.](https://www.omg.org/spec/SCE/1.0)

[An Information Requirement is represented in a DRD as an arrow drawn
with a solid line and a solid arrowhead, as shown in [Table
1](#_Ref113621172). The arrow is drawn in the direction of information
flow, i.e., towards the Decision that requires the
information.](https://www.omg.org/spec/SCE/1.0)

#### [Knowledge Requirement notation](https://www.omg.org/spec/SCE/1.0)

[Knowledge Requirements may be drawn from invocable elements (Business
Knowledge Models or Decision Services) to Decisions and from invocable
elements to Business Knowledge Models. They represent the invocation of
an invocable element when making a decision. If *e* is a decision or a
BKM in some DRD, and *e* contains a knowledge requirement on some
invocable element *b*, then the logic of *e* must contain an invocation
expression of *b*, including expressions for each of *b*\'s
parameters.](https://www.omg.org/spec/SCE/1.0)

[A Knowledge Requirement is represented in a DRD as an arrow drawn with
a dashed line and an open arrowhead, as shown in [Table
1](#_Ref113621172). The arrows are drawn in the direction of the
information flow of the result of evaluating the function, i.e., toward
the element that requires the business
knowledge.](https://www.omg.org/spec/SCE/1.0)

#### [Authority Requirement notation](https://www.omg.org/spec/SCE/1.0)

[Authority Requirements may be used in two
ways:](https://www.omg.org/spec/SCE/1.0)

a)  

> [They may be drawn from Knowledge Sources to Decisions, Business
> Knowledge Models, and other Knowledge Sources, where they represent
> the dependence of the DRD element on the knowledge source. This might
> be used to record the fact that a set of business rules must be
> consistent with a published document (e.g., a piece of legislation or
> a statement of business policy), or that a specific person or
> organizational group is responsible for defining some decision logic,
> or that a decision is managed by a person or group. An example of this
> use of Knowledge Sources is shown in [Figure 6-3](#_Ref124242973): in
> this case the Business Knowledge Model requires two sources of
> authority -- a policy document and legislation -- and the policy
> document requires the authority of a policy
> group.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image28.jpg){width="4.604166666666667in"
height="1.4722222222222223in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref124242973 .anchor}Figure 6-3: Knowledge Sources representing
authorities](https://www.omg.org/spec/SCE/1.0)

b)  

[They may be drawn from Input Data and Decisions to Knowledge Sources,
where, in conjunction with use (a), they represent the derivation of
Business Knowledge Models from instances of Input Data and Decision
results, using analytics. The Knowledge Source typically represents the
analytic model (or modeling process); the Business Knowledge Model
represents the executable logic generated from or dependent on the
model. An example of this use of a Knowledge Source is shown in [Figure
6-4](#_Ref113627642): in this case a business knowledge model is based
on an analytic model which is derived from input data and the results of
a dependent decision. ![Diagram Description automatically
generated](media/image29.jpg){width="3.4305555555555554in"
height="1.8402777777777777in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113627642 .anchor}Figure 6-4: Knowledge source representing
predictive analytics](https://www.omg.org/spec/SCE/1.0)

[However, the figures above are only examples. There are many other
possible use cases for Authority Requirements (and since Knowledge
Sources and Authority Requirements have no execution semantics their
interpretation is necessarily vague), so this specification leaves the
details of their application to the
implementer.](https://www.omg.org/spec/SCE/1.0)

[An Authority Requirement is represented in a DRD as an arrow drawn with
a dashed line and a filled circular head, as shown in [Table
1](#_Ref113621172). The arrows are drawn from the source of authority to
the element governed by it.](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385136 .anchor}]{#_Ref124244052 .anchor}Connection rules](https://www.omg.org/spec/SCE/1.0)

[The rules governing the permissible ways of connecting elements with
requirements in a DRD are described in Clause [6.2.2](#_Ref122592989)
above and summarized in [Table 2](#_Ref113627747). For clarity, a simple
DRD is shown for each permissible connection. In each of these diagrams,
the upper ("to") element requires the lower ("from")
element.](https://www.omg.org/spec/SCE/1.0)

[Note that no requirements may be drawn terminating in Input Data, that
is, input data may have no requirements. Note also that the type of the
requirement is uniquely determined by the types of the two elements
connected.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [**From**](https://www.omg.org/spec/SCE/1.0) | > [**To (Required                              | > [**Requirement**](https://www.omg.org/spec/SCE/1.0) | > [**Diagram**](https://www.omg.org/spec/SCE/1.0)                 |
|                                                | > by)**](https://www.omg.org/spec/SCE/1.0)     |                                                       |                                                                   |
+================================================+================================================+=======================================================+==================================================================:+
| > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Information](https://www.omg.org/spec/SCE/1.0)     | [![Shape Description automatically                                |
|                                                |                                                |                                                       | generated](media/image30.jpg){width="1.37003937007874in"          |
|                                                |                                                |                                                       | height="0.880563210848644in"}](https://www.omg.org/spec/SCE/1.0)  |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Knowledge                                   | > [Authority](https://www.omg.org/spec/SCE/1.0)       | [![Diagram, shape, rectangle Description automatically            |
|                                                | > Source](https://www.omg.org/spec/SCE/1.0)    |                                                       | generated](media/image31.jpg){width="1.2348775153105862in"        |
|                                                |                                                |                                                       | height="0.8805577427821523in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Business Knowledge                          | > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Knowledge](https://www.omg.org/spec/SCE/1.0)       | [![Shape, rectangle Description automatically                     |
| > Model](https://www.omg.org/spec/SCE/1.0)     |                                                |                                                       | generated](media/image32.jpg){width="1.2388702974628172in"        |
|                                                |                                                |                                                       | height="0.9541666666666667in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Business Knowledge                          | > [Business Knowledge                          | > [Knowledge](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing athletic game, sport, table Description   |
| > Model](https://www.omg.org/spec/SCE/1.0)     | > Model](https://www.omg.org/spec/SCE/1.0)     |                                                       | automatically                                                     |
|                                                |                                                |                                                       | generated](media/image33.jpg){width="1.1586745406824146in"        |
|                                                |                                                |                                                       | height="0.8805511811023622in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Decision                                    | > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Knowledge](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing text, athletic game Description           |
| > Service](https://www.omg.org/spec/SCE/1.0)   |                                                |                                                       | automatically                                                     |
|                                                |                                                |                                                       | generated](media/image34.jpg){width="1.1132480314960629in"        |
|                                                |                                                |                                                       | height="1.611816491688539in"}](https://www.omg.org/spec/SCE/1.0)  |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Decision                                    | > [Business Knowledge                          | > [Knowledge](https://www.omg.org/spec/SCE/1.0)       | [![Diagram Description automatically                              |
| > Service](https://www.omg.org/spec/SCE/1.0)   | > Model](https://www.omg.org/spec/SCE/1.0)     |                                                       | generated](media/image35.jpg){width="1.1159350393700787in"        |
|                                                |                                                |                                                       | height="1.395787401574803in"}](https://www.omg.org/spec/SCE/1.0)  |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Input                                       | > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Information](https://www.omg.org/spec/SCE/1.0)     | [![A picture containing table Description automatically           |
| > data](https://www.omg.org/spec/SCE/1.0)      |                                                |                                                       | generated](media/image36.jpg){width="1.1131944444444444in"        |
|                                                |                                                |                                                       | height="0.7916721347331583in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Input                                       | > [Knowledge                                   | > [Authority](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing hanger Description automatically          |
| > data](https://www.omg.org/spec/SCE/1.0)      | > Source](https://www.omg.org/spec/SCE/1.0)    |                                                       | generated](media/image37.jpg){width="1.2950010936132983in"        |
|                                                |                                                |                                                       | height="0.880566491688539in"}](https://www.omg.org/spec/SCE/1.0)  |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Knowledge                                   | > [Decision](https://www.omg.org/spec/SCE/1.0) | > [Authority](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing text, table Description automatically     |
| > Source](https://www.omg.org/spec/SCE/1.0)    |                                                |                                                       | generated](media/image38.jpg){width="1.300819116360455in"         |
|                                                |                                                |                                                       | height="0.8208278652668416in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Knowledge                                   | > [Business Knowledge                          | > [Authority](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing text, athletic game, sport, table         |
| > Source](https://www.omg.org/spec/SCE/1.0)    | > Model](https://www.omg.org/spec/SCE/1.0)     |                                                       | Description automatically                                         |
|                                                |                                                |                                                       | generated](media/image39.jpg){width="1.2377329396325458in"        |
|                                                |                                                |                                                       | height="0.8284722222222223in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+
| > [Knowledge                                   | > [Knowledge                                   | > [Authority](https://www.omg.org/spec/SCE/1.0)       | [![A picture containing text, sport, table Description            |
| > Source](https://www.omg.org/spec/SCE/1.0)    | > Source](https://www.omg.org/spec/SCE/1.0)    |                                                       | automatically                                                     |
|                                                |                                                |                                                       | generated](media/image40.jpg){width="1.1643230533683289in"        |
|                                                |                                                |                                                       | height="0.7388921697287839in"}](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------------+------------------------------------------------+-------------------------------------------------------+-------------------------------------------------------------------+

: [[]{#_Ref113627747 .anchor}Table 2: Requirements connection
rules](https://www.omg.org/spec/SCE/1.0)

### 

### [[[[]{#_Toc231385137 .anchor}]{#_Ref122608229 .anchor}]{#_Ref122592883 .anchor}Partial views and hidden information](https://www.omg.org/spec/SCE/1.0)

[The metamodel (see [6.3](#_Ref122593013)) provides properties for each
of the DRG elements which would not normally be displayed on the DRD but
provide additional information about their nature or
function.](https://www.omg.org/spec/SCE/1.0)

[For example, for a Decision these include properties specifying which
**BPMN** processes and tasks make use of the Decision. Implementations
SHALL provide facilities for specifying and displaying such
properties.](https://www.omg.org/spec/SCE/1.0)

[For any significant domain of decision-making a DRD representing the
complete DRG may be a large and complex diagram. Implementations MAY
provide facilities for displaying DRDs which are partial or filtered
views of the DRG, e.g., by hiding categories of elements, or hiding or
collapsing areas of the network.](https://www.omg.org/spec/SCE/1.0)

[DRG Elements with requirements not displayed on the current DRD SHOULD
be notated with an ellipsis (\...) to show that this is the case. For
example, see [Figure
12‑5](#_Ref231381853).](https://www.omg.org/spec/SCE/1.0)

[Two examples of DRDs providing partial views of a DRG are shown in
[Figure 6-5](#_Ref122593133): DRD 1 shows only the immediate
requirements of a single decision; DRD 2 shows only Information
Requirements and the elements they
connect.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image41.jpg){width="6.446527777777778in"
height="3.720833333333333in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122593133 .anchor}Figure 6-5: DRDs as partial views of a
DRG](https://www.omg.org/spec/SCE/1.0)

[DRDs can be interchanged using the Diagram Interchange mechanism
defined in section
[14](#_Ref122593195).](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385138 .anchor}Decision service](https://www.omg.org/spec/SCE/1.0)

[A Decision Service is represented in a DRD as rectangle with rounded
corners, drawn with a heavy solid border. The Name of the Decision
Service MUST be displayed inside the shape unless it is overridden by
the text attribute of the associated DMNDI:DMNLabel element, which MUST
be displayed instead. The border SHALL enclose all the encapsulated
decisions, and no other decisions or input data. The border MAY enclose
other DRG elements, but these will not form part of the definition of
the Decision Service.](https://www.omg.org/spec/SCE/1.0)

[If the set of output decisions is smaller than the set of encapsulated
decisions, the Decision Service SHALL be divided into two parts with a
straight solid line. One part SHALL enclose only the output decisions
and the Decision Service\'s Name; the other part SHALL enclose all the
encapsulated decisions which are not in the set of output decisions.
Either part MAY enclose other DRG elements, but these will not form part
of the definition of the Decision
Service.](https://www.omg.org/spec/SCE/1.0)

[[Figure 6-6](#_Ref122593222) shows a Decision Service with two output
decisions; other examples (with a single output decision) are shown in
[Figure 5-10](#_Ref122607362) and [Figure
5-11](#_Ref122607390).](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image42.jpg){width="3.0555555555555554in"
height="1.875in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122593222 .anchor}Figure 6-6: Decision Service
notation](https://www.omg.org/spec/SCE/1.0)

[A decision service may be defined in one DRD and then shown in a
different DRD when invoked internally within the decision model by
another decision. In the case of a decision service invocation internal
to the decision model, a decision service may also be shown without the
details of its definition, as in a "collapsed state". [Figure
6-7](#_Ref122608550) consists of two separate diagrams: DRD 1 shows the
definition of Decision service 1. In DRD 2, the same Decision service 1
is shown as invoked by Decision 5. In DRD 2, Decision service 1 is shown
in a collapsed form.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image43.jpg){width="6.760624453193351in"
height="2.2923972003499564in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122608550 .anchor}Figure 6-7: A decision service in expanded
and collapsed form](https://www.omg.org/spec/SCE/1.0)

[DRD 1 in [Figure 6-7](#_Ref122608550) shows that Decision service 1 has
2 inputs: Decision 4 and Input data 1. It is therefore inferred that
Decision Service 1 has 2 input parameters with matching characteristics
to Decision 4 and Input data 1. DRD 2 in [Figure 6-7](#_Ref122608550)
shows that Decision 5 has 2 dependencies but whether these are mapped as
parameters for the invocation of Decision Service 1 cannot be determined
from the diagram.](https://www.omg.org/spec/SCE/1.0)

[The information and authority requirements defined on Decision 2 in DRD
1 are not depicted in the collapsed form of Decision Service 1 shown in
DRD 2.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image44.jpg){width="5.866754155730534in"
height="2.234734251968504in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122609580 .anchor}Figure 6-8: A decision service invoked in an
expanded form](https://www.omg.org/spec/SCE/1.0)

[DRDs 1 and 2 in [Figure 6-7](#_Ref122608550) and DRD 3 in [Figure
6-8](#_Ref122609580) are all congruent within the same DRG. They all
show different aspects of Decision Service 1. DRD 3 shows an expanded
form Decision service 1 being invoked by Decision
5.](https://www.omg.org/spec/SCE/1.0)

[The constraint imposed on the rendering of decision services within a
DRD is that the same decision service MUST NOT be rendered both expanded
and collapsed within the same DRD. This stems from the general
restriction disallowing the same DMN Element to be present twice in the
same diagram.](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image45.jpg){width="6.757492344706912in"
height="2.347843394575678in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122609634 .anchor}Figure 6-9: A decision service defined as an
overlay](https://www.omg.org/spec/SCE/1.0)

[Decision services are defined as overlays and therefore do not
encapsulate the decisions within them. Therefore, the richness of
connections depicted in [Figure 6-9](#_Ref122609634) is allowed. In this
DRD, Decision 7 is dependent on Decision
2.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385139 .anchor}Identifying Collections](https://www.omg.org/spec/SCE/1.0)

[Decisions and Input Data elements on a DRD can represent collections of
elements. Implementations MAY show this with the addition of \|\|\| in
the shape. Implementations SHALL show this on all such DRD elements
within a DRG OR on no DRD elements.](https://www.omg.org/spec/SCE/1.0)

[A Decision is considered to represent a collection if the Decision\'s
decisionOutput InformationItem references an ItemDefinition with
isCollection = TRUE.](https://www.omg.org/spec/SCE/1.0)

[An InputData is considered to represent a collection if the
InputData\'s variable InformationItem references an ItemDefinition with
isCollection = TRUE.](https://www.omg.org/spec/SCE/1.0)

[Two examples, a Decision and an Input Data, are shown in [Figure
6-10](#_Ref122609661).](https://www.omg.org/spec/SCE/1.0)

[![Shape Description automatically generated with medium
confidence](media/image46.png){width="2.6781944444444443in"
height="0.41458333333333336in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref122609661 .anchor}**Figure 6-10: Decision and Input Data
showing collection marker**](https://www.omg.org/spec/SCE/1.0)

## [[[]{#_Toc231385140 .anchor}]{#_Ref122593013 .anchor}Metamodel](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385141 .anchor}DMN Element metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram, timeline Description automatically
generated](media/image47.jpg){width="6.77in"
height="4.275in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-11: DMNElement Class
Diagram](https://www.omg.org/spec/SCE/1.0)

[DMNElement is the abstract superclass for the decision model elements.
It provides the optional attributes id, description and label, which are
Strings which other elements will inherit. The id of a DMNElement is
further restricted to the syntax of an XML ID
[(](http://www.w3.org/TR/2004/REC-xmlschema-2-20041028/datatypes.html#ID),)<https://www.w3.org/TR/2004/REC>[[-xmlschema-2-20041028/datatypes.html#ID),]{.underline}](http://www.w3.org/TR/2004/REC-xmlschema-2-20041028/datatypes.html#ID),)
and SHALL be unique within the decision
model.](https://www.omg.org/spec/SCE/1.0)

[DMNElement has abstract specializations NamedElement and Expression
NamedElement adds the required attribute name, and includes the abstract
specializations BusinessContextElement and DRGElement, as well as
concrete specializations Definitions, ItemDefinition, InformationItem,
ElementCollection and
DecisionService.](https://www.omg.org/spec/SCE/1.0)

[[Table 3](#_Ref113630067) presents the attributes and model
associations of the DMNElement
element.](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113630067 .anchor}**Table 3**: **DMNElement** **attributes and
model associations**](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**id:** ID                                       | [Optional identifier for this element. SHALL be       |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | unique within its containing Definitions              |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**description**: String \[0..                    | > [A description of this                              |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | > element.](https://www.omg.org/spec/SCE/1.0)         |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**label:** String \[0..                          | [An alternative short description of this element. It |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | should primarily be used on elements that do not have |
|                                                     | a name attribute, e.g., an Input Expression. Similar  |
|                                                     | to the description attribute, it has no notation      |
|                                                     | defined and is neither related to the DMNLabel        |
|                                                     | element that is used in Diagram Interchange nor to    |
|                                                     | the outputLabel attribute of a Decision               |
|                                                     | Table.](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**extensionElements:** ExtensionElement          | [This attribute is used as a container to attach      |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | additional elements to any DMN Element. See           |
|                                                     | [6.3.16](#_Ref124243757) for additional information   |
|                                                     | on extensibility.](https://www.omg.org/spec/SCE/1.0)  |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**extensionAttributes:** ExtensionAttribute      | [This attribute is used to attach named extended      |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)      | attributes and model associations. This association   |
|                                                     | is not applicable when the XML schema interchange is  |
|                                                     | used, since the XSD mechanism for supporting          |
|                                                     | \"anyAttribute\" from other namespaces already        |
|                                                     | satisfies this requirement.                           |
|                                                     | See](https://www.omg.org/spec/SCE/1.0)                |
|                                                     |                                                       |
|                                                     | [[6.3.16](#_Ref124243774) for additional information  |
|                                                     | on extensibility.](https://www.omg.org/spec/SCE/1.0)  |
+-----------------------------------------------------+-------------------------------------------------------+

  ---------------------------------------------------------------------------------------------------------
  [**Attribute**](https://www.omg.org/spec/SCE/1.0)   [**Description**](https://www.omg.org/spec/SCE/1.0)
  --------------------------------------------------- -----------------------------------------------------
  [**Name:**                                          [The name of this
  string](https://www.omg.org/spec/SCE/1.0)           element](https://www.omg.org/spec/SCE/1.0)

  ---------------------------------------------------------------------------------------------------------

  : [Table 4: NamedElement attributes and model
  associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385142 .anchor}Definitions metamodel](https://www.omg.org/spec/SCE/1.0)

[![](media/image49.svg){width="5.4708639545056865in"
height="5.060995188101487in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-12: Definitions Class
Diagram](https://www.omg.org/spec/SCE/1.0)

[The Definitions class is the outermost containing object for all
elements of a **DMN** decision model. It defines the scope of visibility
and the namespace for all contained elements. Elements that are
contained in an instance of Definitions have their own defined
life-cycle and are not deleted with the deletion of other elements. The
interchange of **DMN** files will always be through one or more
Definitions.](https://www.omg.org/spec/SCE/1.0)

[Definitions is a kind of NamedElement, from which an instance of
Definitions inherits the name and optional id, description, and label
attributes, which are Strings.](https://www.omg.org/spec/SCE/1.0)

[An instance of Definitions has a namespace, which is a String. The
namespace identifies the default target namespace for the elements in
the Definitions and follows the convention established by XML
Schema.](https://www.omg.org/spec/SCE/1.0)

[An instance of Definitions may specify an expressionLanguage, which is
a URI that identifies the default expression language used in elements
within the scope of this Definitions. This value may be overridden on
each individual LiteralExpression. The language SHALL be specified in a
URI format. The default expression language is FEEL (clause
[10](#_Ref122607316)), indicated by the URI:
\"https://www.omg.org/spec/DMN/FEEL/\". If FEEL is used in other
languages, e.g. as an expression language in a **BPMN** process model, a
version number MUST be added to the URL, i.e.
\"https://www.omg.org/spec/DMN/FEEL/1.7\". The simple expression
language S-FEEL (clause [9](#_Ref194560247)), being a subset of FEEL, is
indicated by the same URI. **DMN** provides a URI for expression
languages that are not meant to be interpreted automatically (e.g.,
pseudo-code that may resemble FEEL but is not):
\"http://www.omg.org/spec/DMN/uninterpreted/20140801[\"](http://www.omg.org/spec/DMN/uninterpreted/20140801).](https://www.omg.org/spec/SCE/1.0)

[An instance of Definitions may specify a typeLanguage, which is a URI
that identifies the default type language used in elements within the
scope of this Definitions. For example, a typeLanguage value
of](https://www.omg.org/spec/SCE/1.0)

[["](http://www.w3.org/2001/XMLSchema)http://www.w3.org/2001/XMLSchema["](http://www.w3.org/2001/XMLSchema)
indicates that the data structures defined within that Definitions are,
by default, in the form of XML Schema types. If unspecified, the default
typeLanguage is FEEL. This value may be overridden on each individual
ItemDefinition.](https://www.omg.org/spec/SCE/1.0)

[The typeLanguage SHALL be specified in a URI format (the URI for FEEL
is "https://www.omg.org/spec/DMN/20230324/FEEL/"; the
URI](https://www.omg.org/spec/SCE/1.0)

[[\"](http://www.omg.org/spec/DMN/uninterpreted/20140801)http://www.omg.org/spec/DMN/uninterpreted/20140801[\"](http://www.omg.org/spec/DMN/uninterpreted/20140801)
can be used to indicate that a type definition is not meant to be
interpreted)).](https://www.omg.org/spec/SCE/1.0)

[An instance of Definitions may specify an exporter and exporterVersion,
which are Strings naming](https://www.omg.org/spec/SCE/1.0)

[the tool and version used to create the XML serialization. In standards
such as **BPMN**, this has been found to aid in model interchange
between tools.](https://www.omg.org/spec/SCE/1.0)

[An instance of Definitions is composed of zero or more drgElements,
which are instances of](https://www.omg.org/spec/SCE/1.0)

[DRGElement, zero or more elementCollections, which are instances of
ElementCollection, zero or more itemDefinitions, which are instances of
ItemDefinition and of zero or more businessContextElements, which are
instances of BusinessContextElement.](https://www.omg.org/spec/SCE/1.0)

[It may contain any number of associated import, which are instances of
Import. Imports are used to import elements defined outside of this
Definitions, e.g., in other Definitions elements, and to make them
available for use by elements in this
Definitions.](https://www.omg.org/spec/SCE/1.0)

[Definitions inherits all the attributes and model associations from
NamedElement. [Table 5](#_Ref113629858) presents the additional
attributes and model associations of the Definitions
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)             | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=================================================================+=======================================================+
| > [**namespace**: anyURI                                        | [This attribute identifies the namespace associated   |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)                      | with this Definitions and follows the convention      |
|                                                                 | established by XML                                    |
|                                                                 | Schema.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**dmnVersion:** string                                       | [This attribute identifies the concrete DMN version   |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)                      | used in this Definitions (see clause 13.3.1 for its   |
|                                                                 | use in the XML                                        |
|                                                                 | serialization).](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**expressionLanguage**: anyURI \[0..                         | [This attribute identifies the expression language    |
| > 1\]](https://www.omg.org/spec/SCE/1.0)                        | used in LiteralExpressions within the scope of this   |
|                                                                 | Definitions. The Default is FEEL (clause 10). This    |
|                                                                 | value MAY be overridden on each individual            |
|                                                                 | LiteralExpression. The language SHALL be specified in |
|                                                                 | a URI format.](https://www.omg.org/spec/SCE/1.0)      |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**typeLanguage**: anyURI \[0..                               | [This attribute identifies the type language used     |
| > 1\]](https://www.omg.org/spec/SCE/1.0)                        | in](https://www.omg.org/spec/SCE/1.0)                 |
|                                                                 |                                                       |
|                                                                 | [LiteralExpressions within the scope of               |
|                                                                 | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                                 |                                                       |
|                                                                 | [Definitions. The Default is FEEL (clause 10). This   |
|                                                                 | value MAY be overridden on each individual            |
|                                                                 | ItemDefinition.](https://www.omg.org/spec/SCE/1.0)    |
|                                                                 |                                                       |
|                                                                 | [The language SHALL be specified in a URI             |
|                                                                 | format.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**exporter**: string                                         | [This attribute names the tool used to export the XML |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)                   | serialization.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**exporterVersion**: string \[0..                            | [This attribute names the version of the tool used to |
| > 1\]](https://www.omg.org/spec/SCE/1.0)                        | export the XML                                        |
|                                                                 | serialization.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**itemDefinition**: ItemDefinition                           | [This attribute lists the instances of ItemDefinition |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | that are contained in this                            |
|                                                                 | Definitions.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**drgElement**: DRGElement                                   | [This attribute lists the instances of DRGElement     |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | that are contained in this                            |
|                                                                 | Definitions.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------------------+-------------------------------------------------------+
| [**businessContextElement**:](https://www.omg.org/spec/SCE/1.0) | [This attribute lists the instances                   |
|                                                                 | of](https://www.omg.org/spec/SCE/1.0)                 |
| [BusinessContextElement                                         |                                                       |
| \[\*\]](https://www.omg.org/spec/SCE/1.0)                       | [BusinessContextElement that are contained in this    |
|                                                                 | Definitions.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**elementCollection:** ElementCollection                     | [This attribute lists the instances of                |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | ElementCollection that are contained in this          |
|                                                                 | Definitions.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**import**: Import \[\*\]](https://www.omg.org/spec/SCE/1.0) | [This attribute is used to import externally defined  |
|                                                                 | elements and make them available for use by elements  |
|                                                                 | in this                                               |
|                                                                 | Definitions.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**artifact:** Artifact                                       | [Artifacts include text annotations, groups, and      |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)                  | associations among DMN                                |
|                                                                 | elements.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**dmnDI**: DMNDI \[0..1\]](https://www.omg.org/spec/SCE/1.0) | [This attribute contains the Diagram Interchange      |
|                                                                 | information contained within this Definitions (see    |
|                                                                 | Clause 13 for more information on the DMN Diagram     |
|                                                                 | Interchange).](https://www.omg.org/spec/SCE/1.0)      |
+-----------------------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113629858 .anchor}Table 5: Definitions attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385143 .anchor}Import metamodel](https://www.omg.org/spec/SCE/1.0)

[The Import class is used when referencing external elements, either
**DMN** DRGElement or ItemDefinition instances contained in other
Definitions elements, or non-**DMN** elements, such as an XML Schema or
a PMML file. Imports SHALL be explicitly
defined.](https://www.omg.org/spec/SCE/1.0)

[An instance of Import has an importType, which is a String that
specifies the type of import associated with the element. For example, a
value of
"http://www.w3.org/2001/XMLSchema["](http://www.w3.org/2001/XMLSchema)
indicates that the imported element is an XML schema. The **DMN**
namespace indicates that the imported element is a **DMN** Definitions
element.](https://www.omg.org/spec/SCE/1.0)

[The location of the imported element may be specified by associating an
optional locationURI with an instance of Import. The locationURI is a
URI.](https://www.omg.org/spec/SCE/1.0)

[An instance of Import has a namespace, which is a URI that identifies
the namespace of the imported element, and also a name, inherited from
NamedElement, which is a string that serves as a prefix in
namespace-qualified names, such as typeRefs specifying imported
ItemDefinitions and expressions referencing imported InformationItems.
The namespace value should be globally unique, but the import name,
which is typically a short business-friendly name, must be distinct from
the names of other imports, decisions, input data, business knowledge
models, decision services, and item definitions within the importing
model only. Multiple imports with empty import names are allowed in the
default namespace and their precedence is resolved according to their
definition order.](https://www.omg.org/spec/SCE/1.0)

[When the import name attribute is an empty string, the elements are
imported in the default namespace of the model. When a name collision
occurs between an element in the default namespace and an imported
element, the imported element does not replace the one already in the
default namespace while the elements without name collision are
imported.](https://www.omg.org/spec/SCE/1.0)

[[Table 6](#_Ref113629949) presents the attributes and model
associations of the Import element.](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113629949 .anchor} **Table 6: Import attributes and model
associations**](https://www.omg.org/spec/SCE/1.0)

+---------------------------------------------------+-------------------------------------------------------+
| [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+===================================================+=======================================================+
| [**importType**:                                  | > [Specifies the style of import associated with this |
| anyURI](https://www.omg.org/spec/SCE/1.0)         | > Import.](https://www.omg.org/spec/SCE/1.0)          |
+---------------------------------------------------+-------------------------------------------------------+
| [**locationURI**: anyURI \[0..                    | > [Identifies the location of the imported            |
| 1\]](https://www.omg.org/spec/SCE/1.0)            | > element.](https://www.omg.org/spec/SCE/1.0)         |
+---------------------------------------------------+-------------------------------------------------------+
| [**namespace**:                                   | > [Identifies the namespace of the imported           |
| anyURI](https://www.omg.org/spec/SCE/1.0)         | > element.](https://www.omg.org/spec/SCE/1.0)         |
+---------------------------------------------------+-------------------------------------------------------+

### [[]{#_Toc231385144 .anchor}Element Collection metamodel](https://www.omg.org/spec/SCE/1.0)

[The ElementCollection class is used to define named groups of
DRGElement instances. ElementCollections may be used for any purpose
relevant to an implementation, for
example:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[To identify the requirements subgraph of a set one or more decisions
(i.e., all the elements in the closure of the requirements of the set).
To identify the elements to be depicted on a DRD. ElementCollection is a
kind of NamedElement, from which an instance of ElementCollection
inherits the name and optional id, description, and label attributes,
which are Strings. The id of an ElementCollection element SHALL be
unique within the containing instance of
Definitions.](https://www.omg.org/spec/SCE/1.0)

[An ElementCollection element has any number of associated drgElements,
which are the instances of DRGElement that this ElementCollection
defines together as a group. Notice that an ElementCollection element
must reference the instances of DRGElement that it collects, not contain
them: instances of DRGElement can only be contained in Definitions
elements.](https://www.omg.org/spec/SCE/1.0)

[ElementCollection inherits all the attributes and model associations
from NamedElement. [Table 7](#_Ref113630040) presents the additional
attributes and model associations of the ElementCollection
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**drgElement**: DRGElement                       | [This attribute lists the instances of DRGElement     |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | that this](https://www.omg.org/spec/SCE/1.0)          |
|                                                     |                                                       |
|                                                     | [ElementCollection                                    |
|                                                     | groups.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113630040 .anchor}Table 7: ElementCollection attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385145 .anchor}DRG Element metamodel](https://www.omg.org/spec/SCE/1.0)

[DRGElement is the abstract superclass for all **DMN** elements that are
contained within Definitions and that have a graphical representation in
a DRD. All the elements of a **DMN** decision model that are not
contained directly in a Definitions element (specifically: all three
kinds of requirement, bindings, clause and decision rules, import, and
objective) SHALL be contained in an instance of DRGElement, or in a
model element that is contained in an instance of DRGElement,
recursively.](https://www.omg.org/spec/SCE/1.0)

[The specializations of DRGElement are Decision, InputData, Invocable,
and KnowledgeSource. Invocable is further specialized into
BusinessKnowledgeModel and
DecisionService.](https://www.omg.org/spec/SCE/1.0)

[DRGElement is a specialization of NamedElement, from which it inherits
the name and optional id, description, and label attributes. The id of a
DRGElement element SHALL be unique within the containing instance of
Definitions.](https://www.omg.org/spec/SCE/1.0)

[A **Decision Requirements Diagram** (**DRD**) is the diagrammatic
representation of one or more instances of DRGElement and their
information, knowledge, and authority requirement relations. The
instances of DRGElement](https://www.omg.org/spec/SCE/1.0)

[are represented as the vertices in the diagram; the edges represent
instances of InformationRequirement,](https://www.omg.org/spec/SCE/1.0)

[KnowledgeRequirement or AuthorityRequirement (see clauses
[6.3.13](#_Ref123026810), [6.3.14](#_Ref123026822), and
[6.3.15](#_Ref123026831)). The connection rules are specified in
[6.2.3](#_Ref124244052)).](https://www.omg.org/spec/SCE/1.0)

[DRGElement inherits all the attributes and model associations of
NamedElement. It does not define additional attributes and model
associations of the DRGElement
element.](https://www.omg.org/spec/SCE/1.0)

### [[[[[]{#_Toc231385146 .anchor}]{#_Ref123200345 .anchor}]{#_Ref123200306 .anchor}]{#_Ref122608273 .anchor}Artifact metamodel](https://www.omg.org/spec/SCE/1.0)

[Artifacts are used to provide additional information about a Decision
Model. DMN provides two standard Artifacts: Association and Text
Annotation. Associations can be used to link Artifacts to any
DMNElement.](https://www.omg.org/spec/SCE/1.0)

#### [Association](https://www.omg.org/spec/SCE/1.0)

[An Association is used to link information and Artifacts with DMN
graphical elements. Text Annotations and other Artifacts can be
associated with the graphical elements. An arrowhead on the Association
indicates a direction of flow (e.g., data), when
appropriate.](https://www.omg.org/spec/SCE/1.0)

[The Association element inherits the attributes and model associations
of DMNElement (see [Table 3](#_Ref113630067)). [Table 8](#_Ref113630150)
presents the additional attributes and model associations for an
Association.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| [**associationDirection:** AssociationDirection =   | [associationDirection is an attribute that defines    |
| None](https://www.omg.org/spec/SCE/1.0)             | whether or not the Association shows any              |
|                                                     | directionality with an arrowhead. The default is None |
| [{None \| One \|                                    | (no arrowhead). A value of One means that the         |
| Both}](https://www.omg.org/spec/SCE/1.0)            | arrowhead SHALL be at the Target Object. A value of   |
|                                                     | Both means that there SHALL be an arrowhead at both   |
|                                                     | ends of the Association                               |
|                                                     | line.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**sourceRef:** DMNElement                        | [The DMNElement that the Association is connecting    |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | from.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**targetRef:** DMNElement                        | > [The DMNElement that the Association is connecting  |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | > to.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113630150 .anchor}Table 8: Association attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

#### [Group](https://www.omg.org/spec/SCE/1.0)

[The **Group** object is an Artifact that provides a visual mechanism to
group elements of a diagram informally. **Groups** are often used to
highlight certain sections of a Diagram without adding additional
constraints for performance. The highlighted (grouped) section of the
Diagram can be separated for reporting and analysis purposes. **Groups**
do not affect the execution of the
Decisions.](https://www.omg.org/spec/SCE/1.0)

[As an Artifact, a **Group** is not a DRGElement, and, therefore, cannot
be connected to/from an Information Requirement, Knowledge Requirement,
or Authority Requirement. It can only be connected to/from an
Association.](https://www.omg.org/spec/SCE/1.0)

[The Group element inherits the attributes and model associations of
Artifact. [Table 9](#_Ref113630213) presents the additional attributes
and model associations for a Group.](https://www.omg.org/spec/SCE/1.0)

  ---------------------------------------------------------------------------------------------------------
  [**Attribute**](https://www.omg.org/spec/SCE/1.0)   [**Description**](https://www.omg.org/spec/SCE/1.0)
  --------------------------------------------------- -----------------------------------------------------
  [**Name:** String\[0..                              [The descriptive name of the
  1\]](https://www.omg.org/spec/SCE/1.0)              element.](https://www.omg.org/spec/SCE/1.0)

  ---------------------------------------------------------------------------------------------------------

  : [[]{#_Ref113630213 .anchor}Table 9: Group model
  associations](https://www.omg.org/spec/SCE/1.0)

#### [Text Annotation](https://www.omg.org/spec/SCE/1.0)

[Text Annotations are a mechanism for a modeler to provide additional
text information for the reader of a DMN
Diagram.](https://www.omg.org/spec/SCE/1.0)

[The TextAnnotation element inherits the attributes and model
associations of DMNElement (see [Table 3](#_Ref113630067)). [Table
10](#_Ref113630313) presents the additional attributes for a
TextAnnotation.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**text:**                                        | [Text is an attribute that is text that the modeler   |
| > string](https://www.omg.org/spec/SCE/1.0)         | wishes to communicate to the reader of the            |
|                                                     | Diagram.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**textFormat:** string =                         | [This attribute identifies the format of the text. It |
| > \"text/plain\"](https://www.omg.org/spec/SCE/1.0) | SHALL follow the mime-type format. The default is     |
|                                                     | \"text/plain.\"](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113630313 .anchor} Table 10: TextAnnotation
attributes](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385147 .anchor}Decision metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image50.jpg){width="6.55in"
height="4.329862204724409in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-13: Decision Class Diagram](https://www.omg.org/spec/SCE/1.0)

[The class Decision is used to model a
decision.](https://www.omg.org/spec/SCE/1.0)

[Decision is a concrete specialization of DRGElement and it inherits the
name and optional id, description and label attributes from NamedElement
The name of a Decision must be different from the name of any other
invocable, input data, decision, or import in the decision
model.](https://www.omg.org/spec/SCE/1.0)

[In addition, it may have a question and allowedAnswers, which are all
strings. The optional description attribute is meant to contain a brief
description of the decision-making embodied in the Decision. The
optional question attribute is meant to contain a natural language
question that characterizes the Decision such that the output of the
Decision is an answer to the question. The optional allowedAnswers
attribute is meant to contain a natural language description of the
answers allowed for the question such as Yes/No, a list of allowed
values, a range of numeric values
etc.](https://www.omg.org/spec/SCE/1.0)

[In a DRD, an instance of Decision is represented by a **decision**
diagram element.](https://www.omg.org/spec/SCE/1.0)

[A Decision element is composed of an optional decisionLogic, which is
an instance of Expression, and of zero or more informationRequirement,
knowledgeRequirement and authorityRequirement elements, which are
instances of InformationRequirement, KnowledgeRequirement and
AuthorityRequirement, respectively.](https://www.omg.org/spec/SCE/1.0)

[In addition, a Decision defines an InformationItem representing its
output. This InformationItem may include an optional typeRef, which
references an ItemDefinition or other type definition specifying the
datatype of the possible outcomes of the
Decision.](https://www.omg.org/spec/SCE/1.0)

[The **requirement subgraph** of a Decision element is the directed
graph composed of the Decision element itself, its
informationRequirements, its knowledgeRequirements, and the union of the
requirement subgraphs of each requiredDecision or requiredKnowledge
element: that is, the requirement subgraph of a Decision element is the
closure of the informationRequirement, requiredInput, requiredDecision,
knowledgeRequirement and requiredKnowledge associations starting from
that Decision element.](https://www.omg.org/spec/SCE/1.0)

[An instance of Decision -- that is, the model of a decision -- is said
to be **well-formed** if and only if all of its informationRequirement
and knowledgeRequirement elements are well-formed, That condition
entails, in particular, that the requirement subgraph of a Decision
element SHALL be acyclic, that is, that a Decision element SHALL not
require itself, directly or
indirectly.](https://www.omg.org/spec/SCE/1.0)

[Besides its logical components, information requirements, decision
logic etc, the model of a decision may also document a business context
for the decision (see clause [6.3.8](#_Ref123026931) and [Figure
**6-14**](#_Ref123026967)).](https://www.omg.org/spec/SCE/1.0)

[The business context for an instance of Decision is defined by its
association with any number of supportedObjectives, which are instances
of Objective as defined in OMG BMM, any number of impactedPerformance
Indicators, which are instances of Performance Indicator, any number of
decisionMaker and any number of decisionOwner, which are instances of
OrganisationalUnit.](https://www.omg.org/spec/SCE/1.0)

[In addition, an instance of Decision may reference any number of
usingProcess, which are instances of Process as defined in OMG **BPMN
2.0**, and any number of usingTask, which are instances of Task as
defined in OMG **BPMN 2.0**, and which are the Processes and Tasks that
use the Decision element.](https://www.omg.org/spec/SCE/1.0)

[Decision inherits all the attributes and model associations from
DRGElement. [Table 11](#_Ref113630502) presents the additional
attributes and model associations of the Decision
class.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)                   | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=======================================================================+=======================================================+
| > [**question**: string \[0..1\]](https://www.omg.org/spec/SCE/1.0)   | [A natural language question that characterizes the   |
|                                                                       | Decision such that the output of the Decision is an   |
|                                                                       | answer to the                                         |
|                                                                       | question.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**allowedAnswers**: string                                         | [A natural language description of the answers        |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)                         | allowed for the question such as Yes/No, a list of    |
|                                                                       | allowed values, a range of numeric values             |
|                                                                       | etc.](https://www.omg.org/spec/SCE/1.0)               |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**variable**: InformationItem](https://www.omg.org/spec/SCE/1.0)   | [The instance of InformationItem that stores the      |
|                                                                       | result of this                                        |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**decisionLogic**: Expression                                      | [The instance of Expression that represents the       |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)                         | decision logic for this                               |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**informationRequirement**: InformationRequirement                 | [This attribute lists the instances                   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | of](https://www.omg.org/spec/SCE/1.0)                 |
|                                                                       |                                                       |
|                                                                       | [InformationRequirement that compose this             |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**knowledgeRequirement**: KnowledgeRequirement                     | [This attribute lists the instances                   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | of](https://www.omg.org/spec/SCE/1.0)                 |
|                                                                       |                                                       |
|                                                                       | [KnowledgeRequirement that compose this               |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**authorityRequirement**: AuthorityRequirement                     | [This attribute lists the instances                   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | of](https://www.omg.org/spec/SCE/1.0)                 |
|                                                                       |                                                       |
|                                                                       | [AuthorityRequirement that compose this               |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**supportedObjective**: BMM::Objective                             | [This attribute lists the instances of BMM::Objective |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | that are supported by this                            |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| [**impactedPerformanceIndicator**:](https://www.omg.org/spec/SCE/1.0) | [This attribute lists the instances                   |
|                                                                       | of](https://www.omg.org/spec/SCE/1.0)                 |
| [PerformanceIndicator \[\*\]](https://www.omg.org/spec/SCE/1.0)       |                                                       |
|                                                                       | [PerformanceIndicator that are impacted by this       |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**decisionMaker**: OrganisationalUnit                              | [The instances of OrganisationalUnit that make this   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**decisionOwner**: OrganisationalUnit                              | [The instances of OrganisationalUnit that own this    |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**usingProcesses**: **BPMN**::process                              | [This attribute lists the instances of                |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | **BPMN**::process that require this Decision to be    |
|                                                                       | made.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------------------------+-------------------------------------------------------+
| > [**usingTasks**: **BPMN**::task                                     | [This attribute lists the instances of **BPMN**::task |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                           | that make this                                        |
|                                                                       | Decision.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113630502 .anchor}Table 11: Decision attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[[[]{#_Toc231385148 .anchor}]{#_Ref123026931 .anchor}]{#_Ref122592840 .anchor}Business Context Element metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image51.jpg){width="6.763514873140857in"
height="3.6339063867016623in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123026967 .anchor} Figure 6-14: BusinessContextElement class
diagram](https://www.omg.org/spec/SCE/1.0)

[The abstract class BusinessContextElement, and its concrete
specializations PerformanceIndicator and OrganizationUnit are
placeholders, anticipating a definition to be adopted from other OMG
meta-models, such as OMG OSM when it is further
developed.](https://www.omg.org/spec/SCE/1.0)

[BusinessContextElement is a specialization of NamedElement, from which
it inherits the name and optional id, description, and label
attributes.](https://www.omg.org/spec/SCE/1.0)

[In addition, instances of BusinessContextElements may have a URI, which
is a URI, and](https://www.omg.org/spec/SCE/1.0)

- 
- 

[an instance of PerformanceIndicator references any number of
impactingDecision, which are the Decision elements that impact it; an
instance of OrganisationalUnit references any number of decisionMade and
of decisionOwned, which are the Decision elements that model the
decisions that the organization unit makes or owns.
BusinessContextElement inherits all the attributes and model
associations from NamedElement. [Table 12](#_Ref113630678) presents the
additional attributes and model associations of the
BusinessContextElement class.](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113630678 .anchor}**Table 12: BusinessContextElement attributes
and model associations**](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+------------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | [**Description**](https://www.omg.org/spec/SCE/1.0)        |
+=====================================================+============================================================+
| > [**URI**: anyURI                                  | [The URI of this                                           |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | BusinessContextElement.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+------------------------------------------------------------+

[PerformanceIndicator inherits all the attributes and model associations
from](https://www.omg.org/spec/SCE/1.0)

[BusinessContextElement. [Table 13](#_Ref113630786) presents the
additional attributes and model associations of the PerformanceIndicator
class.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+----------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0)    |
+=====================================================+==========================================================+
| > [**impactingDecision:** Decision                  | [This attribute lists the instances of Decision that     |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | impact this                                              |
|                                                     | PerformanceIndicator.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+----------------------------------------------------------+

: [[]{#_Ref113630786 .anchor}Table 13: PerformanceIndicator attributes
and model associations](https://www.omg.org/spec/SCE/1.0)

[OrganisationalUnit inherits all the attributes and model associations
from BusinessContextElement. [Table 14](#_Ref113630908) presents the
additional attributes and model associations of the OrganisationalUnit
class.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+--------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0)  |
+=====================================================+========================================================+
| > [**decisionMade**: Decision                       | [This attribute lists the instances of Decision that   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | are made by this                                       |
|                                                     | OrganisationalUnit.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+--------------------------------------------------------+
| > [**decisionOwned**: Decision                      | [This attribute lists the instances of Decision that   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | are owned by this                                      |
|                                                     | OrganisationalUnit.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+--------------------------------------------------------+

: [[]{#_Ref113630908 .anchor}Table 14: OrganisationalUnit attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385149 .anchor}]{#_Ref124325171 .anchor}Business Knowledge Model metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image52.jpg){width="5.4631944444444445in"
height="3.44375in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-15: BusinessKnowledgeModel class
diagram](https://www.omg.org/spec/SCE/1.0)

[A business knowledge model has an abstract part, representing reusable,
invocable decision logic, and a concrete part, which mandates that the
decision logic must be a single FEEL boxed function definition. A
decision service is also an invocable element and thus can be invoked as
required knowledge from other decisions and business knowledge
models.](https://www.omg.org/spec/SCE/1.0)

[The class Invocable is used to model an invocable element and the class
BusinessKnowledgeModel is used to model a business knowledge
model.](https://www.omg.org/spec/SCE/1.0)

[Invocable is a specialization of DRGElement and it inherits the name
and optional id, description, and label attributes from NamedElement.
The name of an Invocable must be different from the name of any other
invocable, input data, decision, or import in the decision model.
BusinessKnowledgeModel is a specialization of Invocable from which it
additionally inherits the variable
attribute.](https://www.omg.org/spec/SCE/1.0)

[A BusinessKnowledgeModel element may have zero or more
knowledgeRequirement, which are instance of KnowledgeRequirement, and
zero or more authorityRequirement, which are instances of
AuthorityRequirement. These model elements are described
below.](https://www.omg.org/spec/SCE/1.0)

[The **requirement subgraph** of a BusinessKnowledgeModel element is the
directed graph composed of the](https://www.omg.org/spec/SCE/1.0)

[BusinessKnowledgeModel element itself, its knowledgeRequirement
elements, and the union of the requirement subgraphs of all the
requiredKnowledge elements that are referenced by its
knowledgeRequirements.](https://www.omg.org/spec/SCE/1.0)

[An instance of BusinessKnowledgeModel is said to be **well-formed** if
and only if, either it does not have any knowledgeRequirement, or all of
its knowledgeRequirement elements are well-formed. That condition
entails, in particular, that the requirement subgraph of a
BusinessKnowledgeModel element SHALL be acyclic, that is, that a
BusinessKnowledgeModel element SHALL not require itself, directly or
indirectly.](https://www.omg.org/spec/SCE/1.0)

[At the decision logic level, a BusinessKnowledgeModel element contains
a FunctionDefinition, which is an instance of Expression containing zero
or more parameters, which are instances of Information Item. The
FunctionDefinition that is contained in a BusinessKnowledgeModel element
is the reusable module of decision logic that is represented by this
BusinessKnowledgeModel element. An Invocable element contains an
InformationItem that holds an invocable reference to the abstract
business knowledge, which allows a Decision to invoke it by name. The
name of that InformationItem SHALL be the same as the name of the
Invocable element. Invocable inherits all the attributes and model
associations from DRGElement.](https://www.omg.org/spec/SCE/1.0)

[[Table 15](#_Ref113863007) presents the additional attributes and model
associations of the Invocable class. [Table 16](#_Ref113863023) presents
the additional attributes and model associations of the
BusinessKnowledgeModel class.](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113863007 .anchor}**Table 15: Invocable attributes and model
associations**](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)  | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+======================================================+=======================================================+
| > [**variable:**                                     | [This attribute defines a variable that is bound to   |
| > InformationItem](https://www.omg.org/spec/SCE/1.0) | the function defined by the FunctionDefinition,       |
|                                                      | allowing decision logic to invoke the function by     |
|                                                      | name.](https://www.omg.org/spec/SCE/1.0)              |
+------------------------------------------------------+-------------------------------------------------------+

+-----------------------------------------------------+------------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0)      |
+=====================================================+============================================================+
| > [**encapsulatedLogic:** FunctionDefinition \[0..  | [The function that encapsulates the logic encapsulated by  |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | this                                                       |
|                                                     | BusinessKnowledgeModel.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+------------------------------------------------------------+
| > [**knowledgeRequirement**: KnowledgeRequirement   | [This attribute lists the instances of                     |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | KnowledgeRequirement that compose this                     |
|                                                     | BusinessKnowledgeModel.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+------------------------------------------------------------+
| > [**authorityRequirement**: AuthorityRequirement   | [This attribute lists the instances                        |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | of](https://www.omg.org/spec/SCE/1.0)                      |
|                                                     |                                                            |
|                                                     | [AuthorityRequirement that compose this                    |
|                                                     | BusinessKnowledgeModel.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+------------------------------------------------------------+

: [[]{#_Ref113863023 .anchor}Table 16: BusinessKnowledgeModel attributes
and model associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385150 .anchor}Decision service metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image53.jpg){width="6.753525809273841in"
height="2.85828302712161in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-16: DecisionService class
diagram](https://www.omg.org/spec/SCE/1.0)

[The DecisionService class is used to define named decision services
against the decision model contained in an instance of
Definitions.](https://www.omg.org/spec/SCE/1.0)

[DecisionService is a kind of Invocable element, from which an instance
of DecisionService inherits the name and optional id, description, and
label attributes, which are Strings, and a variable, which is an
InformationItem. The id of a DecisionService element SHALL be unique
within the containing instance of
Definitions.](https://www.omg.org/spec/SCE/1.0)

[The name of the variable and the name of the DecisionService SHALL be
the same. This name may be used to invoke a DecisionService from the
decision logic of another decision or business knowledge
model.](https://www.omg.org/spec/SCE/1.0)

[A DecisionService element has one or more associated outputDecisions,
which are the instances of Decision required to be output by this
DecisionService, i.e., the Decisions whose results the Decision Service
must return when called.](https://www.omg.org/spec/SCE/1.0)

[A DecisionService element has zero or more encapsulatedDecisions, which
are the instances of Decision required to be encapsulated by this
DecisionService, i.e., the Decisions to be evaluated by the Decision
Service when it is called.](https://www.omg.org/spec/SCE/1.0)

[A DecisionService element has zero or more inputDecisions, which are
the instances of Decision required as input by this DecisionService,
i.e., the Decisions whose results will be provided to the Decision
Service when it is called.](https://www.omg.org/spec/SCE/1.0)

[A DecisionService element has zero or more inputData, which are the
instances of InputData required as input by this DecisionService, i.e.,
the Input Data which will be provided to the Decision Service when it is
called.](https://www.omg.org/spec/SCE/1.0)

[The encapsulatedDecisions, inputDecisions and inputData attributes are
optional. At least one of the encapsulatedDecisions and inputDecisions
attributes SHALL be specified.](https://www.omg.org/spec/SCE/1.0)

[The **requirement subgraph** of a DecisionService element is the
directed graph composed of the DecisionService element itself and the
union of the requirement subgraphs of all the Decision elements that are
referenced by its encapsulatedDecisions and
outputDecisions.](https://www.omg.org/spec/SCE/1.0)

[An instance of DecisionService is said to be **well-formed** if and
only if its requirement subgraph is acyclic, that is, that a
DecisionService element SHALL not require itself, directly or
indirectly.](https://www.omg.org/spec/SCE/1.0)

[DecisionService inherits all the attributes and model associations from
Invocable. [Table 17](#_Ref113863165) presents the additional attributes
and model associations of the DecisionService
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**outputDecisions**: Decision                    | [This attribute lists the instances of Decision       |
| > \[1..\*\]](https://www.omg.org/spec/SCE/1.0)      | required to be output by this                         |
|                                                     | DecisionService.](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**encapsulatedDecisions**: Decision              | [If present, this attribute lists the instances of    |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)      | Decision to be encapsulated in this                   |
|                                                     | DecisionService](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**inputDecisions**: Decision                     | [If present, this attribute lists the instances of    |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)      | Decision required as input by this                    |
|                                                     | DecisionService.](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**inputData**: InputData                         | [If present, this attribute lists the instances of    |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)      | InputData required as input by this                   |
|                                                     | DecisionService](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863165 .anchor}Table 17: DecisionService attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385151 .anchor}]{#_Ref122592920 .anchor}Input Data metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image54.jpg){width="2.966666666666667in"
height="3.2430555555555554in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-17: InputData class diagram](https://www.omg.org/spec/SCE/1.0)

[**DMN** uses the class InputData to model the inputs of a decision
whose values are defined outside of the decision
model.](https://www.omg.org/spec/SCE/1.0)

[InputData is a concrete specialization of DRGElement and it inherits
the name and optional id, description and label attributes from
NamedElement. The name of an InputData must be
different](https://www.omg.org/spec/SCE/1.0)

[from the name of any other decision, input data, business knowledge
model, decision service, or import in the decision
model.](https://www.omg.org/spec/SCE/1.0)

[An instance of InputData defines an InformationItem that stores its
value. This InformationItem may include a typeRef that specifies the
type of data that is this InputData represents, either an
ItemDefinition, base type in the specified expressionLanguage, or
imported type.](https://www.omg.org/spec/SCE/1.0)

[In a DRD, an instance of InputData is represented by an **input data**
diagram element. An InputData element does not have a **requirement
subgraph**, and it is always
**well-formed.**](https://www.omg.org/spec/SCE/1.0)

[InputData inherits all the attributes and model associations from
DRGElement. [Table 18](#_Ref113863312) presents the additional
attributes and model associations of the InputData
class.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)  | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+======================================================+=======================================================+
| > [**variable**:                                     | [The instance of InformationItem that stores the      |
| > InformationItem](https://www.omg.org/spec/SCE/1.0) | result of this                                        |
|                                                      | InputData.](https://www.omg.org/spec/SCE/1.0)         |
+------------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863312 .anchor}Table 18: InputData attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385152 .anchor}]{#_Ref122592932 .anchor}Knowledge Source metamodel](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image55.jpg){width="6.629861111111111in"
height="2.85625in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-18: KnowledgeSource class
diagram](https://www.omg.org/spec/SCE/1.0)

[The class KnowledgeSource is used to model authoritative knowledge
sources in a decision model. In a DRD, an instance of KnowledgeSource is
represented by a **knowledge source** diagram
element.](https://www.omg.org/spec/SCE/1.0)

[KnowledgeSource is a concrete specialization of DRGElement, and thus of
NamedElement, from which it inherits the name and optional id,
description, and label attributes. In addition, a KnowledgeSource has a
locationURI, which is a URI. It has a type, which is a string, and an
owner, which is an instance of](https://www.omg.org/spec/SCE/1.0)

[OrganisationalUnit. The type is intended to identify the kind of the
authoritative source, e.g., Policy Document, Regulation, Analytic
Insight.](https://www.omg.org/spec/SCE/1.0)

[A KnowledgeSource element is also composed of zero or more
authorityRequirement elements, which are instances of
AuthorityRequirement.](https://www.omg.org/spec/SCE/1.0)

[KnowledgeSource inherits all the attributes and model associations from
DRGElement. [Table 19](#_Ref113863451) presents the attributes and model
associations of the KnowledgeSource
class.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**locationURI**: anyURI \[0..                    | [The URI where this KnowledgeSource is located. The   |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | locationURI SHALL be specified in a URI               |
|                                                     | format.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**type**: string                                 | > [The type of this Knowledge                         |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > Source.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**owner**: OrganisationalUnit                    | > [The owner of this                                  |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > KnowledgeSource.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**authorityRequirement**: AuthorityRequirement   | [This attribute lists the instances                   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | of](https://www.omg.org/spec/SCE/1.0)                 |
|                                                     |                                                       |
|                                                     | [AuthorityRequirement that contribute to this         |
|                                                     | KnowledgeSource.](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863451 .anchor}Table 19: KnowledgeSource attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385153 .anchor}]{#_Ref123026810 .anchor}Information Requirement metamodel](https://www.omg.org/spec/SCE/1.0)

[The class InformationRequirement is used to model an **information
requirement**, as represented by a plain arrow in a DRD.
InformationRequirement is a specialization of DMNElement, from which it
inherits the optional id, description, and label
attributes.](https://www.omg.org/spec/SCE/1.0)

[An InformationRequirement element is a component of a Decision element,
and it associates that requiring Decision element with a
requiredDecision element, which is an instance of Decision, or a
requiredInput element, which is an instance of
InputData.](https://www.omg.org/spec/SCE/1.0)

[An InformationRequirement element references an instance of either a
Decision or InputData, which defines a variable. That variable, which is
an instance of InformationItem, represents the InformationRequirement
element at the decision logic level.](https://www.omg.org/spec/SCE/1.0)

[Notice that an InformationRequirement element must reference the
instance of Decision or InputData that it associates with the requiring
Decision element, not contain it: instances of Decision or InputData can
only be contained in Definitions
elements.](https://www.omg.org/spec/SCE/1.0)

[An instance of InformationRequirement is said to be **well-formed** if
and only if all of the following are
true:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[It references a requiredDecision or a requiredInput element, but not
both. The referenced requiredDecision or requiredInput element is
well-formed. The Decision element that contains the instance of
InformationRequirement is not in the requirement subgraph of the
referenced requiredknowledge element, if this InformationRequirement
element references one. The referenced requiredDecision or requiredInput
element is defined in the same decision model or in an imported decision
model. [Table 20](#_Ref113863554) presents the attributes and model
associations of the InformationRequirement element.\
](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**requiredDecision**: Decision                   | [The instance of Decision that                        |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [InformationRequirement associates with its           |
|                                                     | containing Decision                                   |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**requiredInput**: InputData                     | [The instance of InputData that                       |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [InformationRequirement associates with its           |
|                                                     | containing Decision                                   |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863554 .anchor}Table 20: InformationRequirement attributes
and model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385154 .anchor}]{#_Ref123026822 .anchor}Knowledge Requirement metamodel](https://www.omg.org/spec/SCE/1.0)

[The class KnowledgeRequirement is used to model a **knowledge
requirement**, as represented by a dashed arrow in a DRD.
KnowledgeRequirement is a specialization of DMNElement, from which it
inherits the optional id, description, and label
attributes.](https://www.omg.org/spec/SCE/1.0)

[A KnowledgeRequirement element is a component of a Decision element or
of a](https://www.omg.org/spec/SCE/1.0)

[BusinessKnowledgeModel element, and it associates that requiring
Decision or BusinessKnowledgeModel element with a requiredKnowledge
element, which is an instance of
Invocable.](https://www.omg.org/spec/SCE/1.0)

[Notice that a KnowledgeRequirement element must reference the instance
of Invocable that it associates with the requiring Decision or
BusinessKnowledgeModel element, not contain it: instances of
BusinessKnowledgeModel can only be contained in Definitions
elements.](https://www.omg.org/spec/SCE/1.0)

[An instance of KnowledgeRequirement is said to be **well-formed** if
and only if all of the following are
true:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[It references a requiredKnowledge element. The referenced
requiredKnowledge element is well-formed. If the KnowledgeRequirement
element is contained in an instance of BusinessKnowledgeModel, that
BusinessKnowledgeModel element is not in the requirement subgraph of the
referenced requiredKnowledge element. The referenced requiredKnowledge
element is defined in the same decision model or in an imported decision
model. [Table 21](#_Ref113863622) presents the attributes and model
associations of the KnowledgeRequirement
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**requiredKnowledge**:                           | [The instance of Invocable that                       |
| > Invocable](https://www.omg.org/spec/SCE/1.0)      | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [KnowledgeRequirement associates with its containing  |
|                                                     | Decision or BusinessKnowledgeModel                    |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863622 .anchor}Table 21: KnowledgeRequirement attributes
and model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385155 .anchor}]{#_Ref123026831 .anchor}Authority Requirement metamodel](https://www.omg.org/spec/SCE/1.0)

[The class AuthorityRequirement is used to model an **authority
requirement**, as represented by an arrow drawn with a dashed line and a
filled circular head in a DRD. AuthorityRequirement is a specialization
of DMNElement, from which it inherits the optional id, description, and
label attributes.](https://www.omg.org/spec/SCE/1.0)

[An AuthorityRequirement element is a component of a Decision,
BusinessKnowledgeModel or](https://www.omg.org/spec/SCE/1.0)

[KnowledgeSource element, and it associates that requiring Decision,
BusinessKnowledgeModel or KnowledgeSource element with a
requiredAuthority element, which is an instance of KnowledgeSource, a
requiredDecision element, which is an instance of Decision, or a
requiredInput element, which is an instance of
InputData.](https://www.omg.org/spec/SCE/1.0)

[Notice that an AuthorityRequirement element must reference the instance
of KnowledgeSource, Decision or InputData that it associates with the
requiring element, not contain it: instances of Knowledge Source,
Decision or InputData can only be contained in Definitions
elements.](https://www.omg.org/spec/SCE/1.0)

[[Table 22](#_Ref113863699) presents the attributes and model
associations of the AuthorityRequirement
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**requiredAuthority**: KnowledgeSource \[0..     | [The instance of KnowledgeSource that                 |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [AuthorityRequirement associates with its             |
|                                                     | containing](https://www.omg.org/spec/SCE/1.0)         |
|                                                     |                                                       |
|                                                     | [KnowledgeSource, Decision                            |
|                                                     | or](https://www.omg.org/spec/SCE/1.0)                 |
|                                                     |                                                       |
|                                                     | [BusinessKnowledgeModel                               |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**requiredDecision**: Decision                   | [The instance of Decision that                        |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [AuthorityRequirement associates with its containing  |
|                                                     | KnowledgeSource                                       |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**requiredInput**: InputData \[0..               | [The instance of InputData that                       |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | this](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [AuthorityRequirement associates with its containing  |
|                                                     | KnowledgeSource                                       |
|                                                     | element.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863699 .anchor}Table 22: AuthorityRequirement attibutes
and model associations](https://www.omg.org/spec/SCE/1.0)

### [[[[]{#_Toc231385156 .anchor}]{#_Ref124243774 .anchor}]{#_Ref124243757 .anchor}Extensibility](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image56.jpg){width="2.910416666666667in"
height="2.046527777777778in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 6-19: Extensibility class
diagram](https://www.omg.org/spec/SCE/1.0)

[The **DMN** metamodel is aimed to be extensible. This allows **DMN**
adopters to extend the specified metamodel in a way that allows them to
be still **DMN**-compliant. It provides a set of extension elements,
which allows **DMN** adopters to attach additional attributes and
elements to standard and existing **DMN** elements. This approach
results in more interchangeable models because the standard elements are
still intact and can still be understood by other **DMN** adopters.
It\'s only the additional attributes and elements that MAY be lost
during interchange.](https://www.omg.org/spec/SCE/1.0)

[A **DMN** extension can be done using two different
elements:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  

[ExtensionElements ExtensionAttribute](https://www.omg.org/spec/SCE/1.0)

[ExtensionElements is a container for attaching arbitrary elements from
other metamodels to any **DMN** element. ExtensionAttribute allows these
attachments to also have name. This allows **DMN** adopters to integrate
any metamodel into the **DMN** metamodel and reuse already existing
model elements.](https://www.omg.org/spec/SCE/1.0)

#### [ExtensionElements](https://www.omg.org/spec/SCE/1.0) 

[The ExtensionElements element is a container to aggregate elements from
other metamodels inside any DMNElement. [Table 23](#_Ref113863890)
presents the attributes and model associations for the ExtensionElements
element.](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113863890 .anchor}**Table 23: ExtensionElements attributes and
model associations**](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**extensionElement:** Element                    | [The contained Element. This association is not       |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)      | applicable when the XML schema interchange is used,   |
|                                                     | since the XSD mechanism for supporting \"any\"        |
|                                                     | elements from other namespaces already satisfies this |
|                                                     | requirement.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+

[\
The ExtensionAttribute element contains an Element or a reference to an
Element from another metamodel. An ExtensionAttribute also has a name to
define the role or purpose of the associated element. This type is not
applicable when the XML schema interchange is used, since the XSD
mechanism for supporting \"anyAttribute\" from other namespaces already
satisfies this requirement. [Table 24](#_Ref113863988) presents the
model associations for the ExtensionAttribute
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**name:**                                        | > [The name of the extension                          |
| > string](https://www.omg.org/spec/SCE/1.0)         | > attribute.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**value:** Element                               | > [The contained Element. This attribute SHALL NOT be |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > used together with                                  |
|                                                     | > valueRef.](https://www.omg.org/spec/SCE/1.0)        |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**valueRef:** Element                            | [A reference to the associated Element. This          |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | attribute SHALL NOT be used together with             |
|                                                     | value.](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113863988 .anchor}Table 24: ExtensionAttribute attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385157 .anchor}Examples](https://www.omg.org/spec/SCE/1.0)

[Examples of DRDs are provided in clause
[12.1.3](#the-decision-requirements-level).](https://www.omg.org/spec/SCE/1.0)

[\
](https://www.omg.org/spec/SCE/1.0)

[The page intentionally left blank](https://www.omg.org/spec/SCE/1.0)

[\
](https://www.omg.org/spec/SCE/1.0)



# Relating Decision Logic to Decision Requirements


## [[]{#_Toc231385159 .anchor}Introduction](https://www.omg.org/spec/SCE/1.0)

[Clause [6](#_Ref152655951) described how the decision requirements
level of a decision model -- a DRG represented in one or more DRDs --
may be used to model the structure of an area of decision making.
However, the details of how each decision\'s outcome is derived from its
inputs must be modeled at the decision logic level. This section
introduces the principles by which decision logic may be associated with
elements in the DRG. Specific representations of decision logic
(decision tables and FEEL expressions) are then defined in clauses
[8](#_Ref122607333), [9](#_Ref193797978) and
[10](#_Ref122607316).](https://www.omg.org/spec/SCE/1.0)

[The decision logic level of a decision model in **DMN** consists of one
or more value expressions. The elements of decision logic modeled as
value expressions include tabular expressions such as decision tables
and invocations, and literal (text) expressions such as *age \>
30*.](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[A **literal expression** represents decision logic as text that
describes how an output value is derived from its input values. The
expression language may, but need not, be formal or executable: examples
of literal expressions include a plain English description of the logic
of a decision, a first order logic proposition, a Java computer program
and a PMML document or ONNX file. Clause[10](#_Ref122607316) specifies
an executable expression language called **FEEL**. Clause
[9](#_Ref192843996) specifies a subset of FEEL (S-FEEL) that is the
default language for literal expressions in **DMN** decision tables
(clause [8](#_Ref122607333)). A **decision table** is a tabular
representation of decision logic, based on a discretization of the
possible values of the inputs of a decision, and organized into rules
that map discretized input values onto discrete output values (see
clause [8](#_Ref122607333)). An **invocation** is a tabular
representation of how decision logic that is represented by a business
knowledge model or a decision service is invoked by a decision, or by
another business knowledge model. An invocation may also be represented
as a literal expression, but usually the tabular representation will be
more understandable. Tabular representations of decision logic are
called *boxed expressions* in the remainder of this
specification.](https://www.omg.org/spec/SCE/1.0)

[All three **DMN** conformance levels include all the above expressions.
At **DMN** Conformance Level 1, literal expressions are not interpreted
and, therefore, free. At **DMN** Conformance Level 2, literal
expressions are restricted to S-FEEL. Clause [10](#_Ref122607316)
specifies additional boxed expressions available at **DMN** Conformance
Level 3.](https://www.omg.org/spec/SCE/1.0)

[Decision logic is added to a decision model by including a value
expression component in some of the decision model elements in the
DRG:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[From a decision logic viewpoint, a decision is a piece of logic that
defines how a given question is answered, based on the input data. As a
consequence, each **decision** element in a decision model may include a
value expression that describes how a decision outcome is derived from
its required input, possibly invoking a business knowledge model; From a
decision logic viewpoint, a business knowledge model is a piece of
decision logic that is defined as a function allowing it to be re-used
in multiple decisions. As a consequence, each **business knowledge
model** element may include a value expression, which is the body of
that function. Another key component of the decision logic level is the
**variable**: Variables are used to store values of Decisions and
InputData for use in value expressions. InformationRequirements specify
variables in scope via reference to those Decisions and InputData, so
that value expressions may reference these variables. Variables link
information requirements in the DRG to the value expressions at the
decision logic level:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[From a decision logic viewpoint, an information requirement is a
requirement for an externally provided value to be assigned to a free
variable in the decision logic, so that a decision can be evaluated. As
a consequence, each **information requirement** in a decision model
points to a Decision or InputData, which in turn defines a variable that
represents the associated data input in the decision's expression. The
variables that are used in the body of the function defined by a
business knowledge model element in the DRG must be bound to the
information sources in each of the requiring decisions. As a
consequence, each **business knowledge model** includes zero or more
variables that are the parameters of the function. The third key element
of the decision logic level are the **item definitions** that describe
the types and structures of data items in a decision model: **input
data** elements in the DRG, and **variables** and **value expressions**
at the decision logic level, may reference an associated item definition
that describes the type and structure of the data expected as input,
assigned to the variable or resulting from the evaluation of the
expression.](https://www.omg.org/spec/SCE/1.0)

[Notice that **knowledge sources** are not represented at the decision
logic level: knowledge sources are part of the documentation of the
decision logic, not of the decision logic
itself.](https://www.omg.org/spec/SCE/1.0)

[The dependencies between decisions, required information sources and
business knowledge models, as represented by the information and
knowledge requirements in a DRG, constrain how the value expressions
associated with these elements relate to each
other.](https://www.omg.org/spec/SCE/1.0)

[As explained above, every decision, input data, and business knowledge
model at the DRG level is associated with a variable used at the
decision logic level. Each variable that is referenced by a decision's
expression must be associated with a required decision, required input
data, or required knowledge. Also, each variable associated with the
required decisions, required input data, and required knowledge SHOULD
be referenced in the decision's
expression.](https://www.omg.org/spec/SCE/1.0)

- 
- 

[If a decision requires another decision, the value expression of the
required decision assigns the value to the variable for use in
evaluating the requiring decision. This is the generic mechanism in
**DMN** for composing decisions at the decision logic level. If a
decision requires an input data, the value of the variable is assigned
the value of the data source attached to the input data at execution
time. This is the generic mechanism in **DMN** for instantiating the
data requirements for a decision. The input variables of a decision\'s
decision logic must not be used outside that value expression or its
component value expressions: the decision element defines the lexical
scope of the input variables for its decision logic. To avoid name
collisions and ambiguity, the name of a variable must be unique within
its scope. When DRG elements are mapped to FEEL, the name of a variable
is the same as the (possibly qualified) name of its associated input
data or decision, which guarantees its
uniqueness.](https://www.omg.org/spec/SCE/1.0)

[When DRG elements are mapped to FEEL, all the decisions and input data
in a DRG define a *context*, which is the literal expression that
represents the logic associated with the decision element and that
represents that scope (see [10.3.2.6](#_Ref123126589)). The information
requirement elements in a decision are *context entries* in the
associated context, where the *key* is the name of the variable that the
information requirement defines, and where the *expression* is the
*context* that is associated with the required decision or input data
element that the information requirement references. The value
expression that is associated with the decision as its decision logic is
the *expression* in the *context entry* that specifies what is the
result of the *context*.](https://www.omg.org/spec/SCE/1.0)

[In the same way, a business knowledge model element defines the lexical
scope of its parameters, that is, of the input variables for its
body.](https://www.omg.org/spec/SCE/1.0)

[In FEEL, the literal expression and scoping construct that represents
the logic associated with a business knowledge model element is a
*function definition* (see [10.3.2.13](#_Ref123027611)), where the
*formal parameters* are the names of the parameters in the business
knowledge model element, and the expression is the value expression that
is the body of the business knowledge model
element.](https://www.omg.org/spec/SCE/1.0)

[If a business knowledge model element requires one or more other
business knowledge models, it SHOULD have an explicit value expression
that describes how the required business knowledge models are invoked
and their results combined or otherwise
elaborated.](https://www.omg.org/spec/SCE/1.0)

## [[[[[]{#_Toc231385160 .anchor}]{#_Ref123036023 .anchor}]{#_Ref123035922 .anchor}]{#_Ref123030355 .anchor}Notation](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385161 .anchor}]{#_Ref123126551 .anchor}Expressions](https://www.omg.org/spec/SCE/1.0)

[We define a graphical notation for decision logic called **boxed
expressions**. This notation serves to decompose the decision logic
model into small pieces that can be associated with DRG artifacts. The
DRD plus the boxed expressions form a complete, mostly graphical
language that completely specifies Decision
Models.](https://www.omg.org/spec/SCE/1.0)

[In addition to the generic notation of **boxed expression**, this
section specifies two kinds of boxed
expressions:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[**boxed literal expressionboxed invocation**The boxed expression for a
decision table is defined in clause [8](#_Ref122607333). Further types
of boxed expressions are defined for FEEL, in clause
[10](#_Ref122607316).](https://www.omg.org/spec/SCE/1.0)

[Boxed expressions are defined recursively, *i.e.,* boxed expressions
can contain other boxed expressions. The top-level boxed expression
corresponds to the decision logic of a single DRG artifact. This boxed
expression SHALL have a name box that contains the name of the DRG
artifact. The name box may be attached in a single box on top, as shown
in [Figure 7-1](#_Ref113864306):](https://www.omg.org/spec/SCE/1.0)

[![A picture containing rectangle Description automatically
generated](media/image57.jpg){width="2.6599365704286964in"
height="1.2013877952755905in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113864306 .anchor}Figure 7-1: Boxed
Expression](https://www.omg.org/spec/SCE/1.0)

[Alternatively, the name box and expression box can be separated by
white space and connected on the left side with a line, as shown in
[Figure 7-2](#_Ref113864366):](https://www.omg.org/spec/SCE/1.0)

[![A picture containing table Description automatically
generated](media/image58.jpg){width="2.8333333333333335in"
height="1.4305555555555556in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113864366 .anchor}Figure 7-2: Boxed expression with separated
name and expression boxes](https://www.omg.org/spec/SCE/1.0)

[Name is the only visual link defined between DRD elements and boxed
expressions. Graphical tools are expected to support appropriate
graphical links, for example, clicking on a decision shape opens a
decision table. How the boxed expression is visually associated with the
DRD element is left to the
implementation.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385162 .anchor}Boxed literal expression](https://www.omg.org/spec/SCE/1.0)

[In a boxed expression, a literal expression is represented by its text.
However, two notational conventions are provided to improve the
readability of boxed literal expressions: typographical string literals
and typographical date and time
literals.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123038832 .anchor}Typographical string literals](https://www.omg.org/spec/SCE/1.0)

[A string literal such as \"DECLINED\" can be represented alternatively
as the italicized literal *DECLINED*. For example, [Figure
7-3](#_Ref113864493) is equivalent to [Figure
7-4](#_Ref113864518):](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image59.jpg){width="4.716270778652668in"
height="1.885411198600175in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113864493 .anchor}Figure 7-3: Decision table with italicized
literals](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image60.jpg){width="4.840412292213474in"
height="1.9957961504811899in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113864518 .anchor}Figure 7-4: Decision table with string
literals](https://www.omg.org/spec/SCE/1.0)

[To avoid having to discern whether (e.g.,) *HIGH, DECLINE* is \"HIGH,\"
\"DECLINE,\" or \"HIGH, DECLINE,\" typographical string literals SHALL
be free of commas (\",\" characters). FEEL typographical string literals
SHALL conform to grammar rule 22
(name).](https://www.omg.org/spec/SCE/1.0)

#### [Typographical date and time literals](https://www.omg.org/spec/SCE/1.0)

[A date, time, date and time, or duration expression such as
date(\"2013-08-09\") can be represented alternatively as the bold
italicized literal ***2013-08-09*.** The literal SHALL obey the syntax
specified in clauses [10.3.2.3.4](#_Ref123027748),
[10.3.2.3.5](#_Ref123027760), and
[10.3.2.3.7](#_Ref123027770).](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385163 .anchor}]{#_Ref123036337 .anchor}Boxed invocation](https://www.omg.org/spec/SCE/1.0)

[An invocation is a container for the parameter bindings that provide
the context for the evaluation of the body of a business knowledge
model.](https://www.omg.org/spec/SCE/1.0)

[The representation of an invocation is the name of the business
knowledge model with the parameters' bindings explicitly
listed.](https://www.omg.org/spec/SCE/1.0)

[As a boxed expression, an invocation is represented by a box containing
the name of the business knowledge model to be invoked, and boxes for a
list of bindings, where each binding is represented by two boxed
expressions on a row: the box on the left contains the name of a
parameter, and the box on the right contains the binding expression,
that is the expression whose value is assigned to the parameter for the
purpose of evaluating the invoked business knowledge model (see [Figure
7-5](#_Ref113864603)).](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image61.jpg){width="3.2285673665791776in"
height="2.1943755468066493in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113864603 .anchor}Figure 7-5: Boxed
invocation](https://www.omg.org/spec/SCE/1.0)

[The invoked business knowledge model is represented by the name of the
business knowledge model. Any other visual linkage is left to the
implementation.](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385164 .anchor}Metamodel](https://www.omg.org/spec/SCE/1.0)

[An important characteristic of decisions and business knowledge models
is that they may contain an expression that describes the logic by which
a modeled decision shall be made, or pieces of that
logic.](https://www.omg.org/spec/SCE/1.0)

[The class Expression is the abstract superclass for all expressions
that are used to describe complete or parts of decision logic in **DMN**
models and that return a single value when interpreted (clause
[7.3.1](#_Ref124248813)). Here "single value" possibly includes
structured data, such as a decision table with multiple output
clauses.](https://www.omg.org/spec/SCE/1.0)

[**DMN** defines three concrete kinds of Expression: LiteralExpression,
DecisionTable (see [8](#_Ref122607333)) and
Invocation.](https://www.omg.org/spec/SCE/1.0)

[An expression may reference variables, such that the value of the
expression, when interpreted, depends on the values assigned to the
referenced variables. The class InformationItem is used to model
variables in expressions.](https://www.omg.org/spec/SCE/1.0)

[The value of an expression, like the value assigned to a variable, may
have a structure and a range of allowable values. The class
ItemDefinition is used to model data structures and
ranges.](https://www.omg.org/spec/SCE/1.0)

[![](media/image63.svg){width="5.701388888888889in"
height="4.473744531933509in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 7-6: Expression class diagram](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385165 .anchor}]{#_Ref124248813 .anchor}Expression metamodel](https://www.omg.org/spec/SCE/1.0)

[An important characteristic of decisions and business knowledge models
is that they may contain an expression that describes the logic by which
a modeled decision shall be made, or pieces of that
logic.](https://www.omg.org/spec/SCE/1.0)

[Expression is an abstract specialization of DMNElement, from which it
inherits the optional id, description, and label
attributes.](https://www.omg.org/spec/SCE/1.0)

[An instance of Expression is a component of a Decision element, of a
BusinessKnowledgeModel element, or of an ItemDefinition element, or it
is a component of another instance of Expression, directly or
indirectly.](https://www.omg.org/spec/SCE/1.0)

[An Expression references zero or more variables implicitly by using
their names in its expression text. These variables, which are instances
of InformationItem, are lexically scoped, depending on the Expression
type. If the Expression is the logic of a Decision, the scope includes
that Decision\'s requirements. If the Expression is the body of the
encapsulatedLogic of a BusinessKnowledgeModel, the scope includes the
FunctionDefinition\'s parameters and the BusinessKnowledgeModel\'s
requirements. If the Expression is the value of a ContextEntry, the
scope includes the previous entries in the Context. An instance of
Expression references an optional typeRef, which points to either a base
type in the default typeLanguage, a custom type specified by an
ItemDefinition, or an imported type. The referenced type specifies the
Expression\'s range of possible values. If an instance of Expression
that defines the output of a Decision element includes a typeRef, the
referenced type SHALL be the same as the type of the containing Decision
element.](https://www.omg.org/spec/SCE/1.0)

[An instance of Expression can be interpreted to derive a single value
from the values assigned to its variables. How the value of an
Expression element is derived from the values assigned to its
variablesdepends on the concrete kind of the Expression. The
ItemDefinition element specializes NamedElement and it inherits its
attributes and model associations. [Table 26](#_Ref113865239) presents
the additional attributes and model associations of the ItemDefinition
element.\
](https://www.omg.org/spec/SCE/1.0)

[Expression inherits from the attributes and model associations of
DMNElement.](https://www.omg.org/spec/SCE/1.0)

### [[[[]{#_Toc231385166 .anchor}]{#_Ref123134115 .anchor}]{#_Ref123124739 .anchor}UnaryTests Metamodel](https://www.omg.org/spec/SCE/1.0)

[The class UnaryTests is used to model a boolean test where the argument
to be tested is implicit or denoted with a ?, and whose value is
specified by text in some specified expression
language.](https://www.omg.org/spec/SCE/1.0)

[UnaryTests is a concrete subclass of
Expression.](https://www.omg.org/spec/SCE/1.0)

[An instance of UnaryTests inherits an optional typeRef from Expression,
which SHALL NOT be used. An instance of UnaryTests also has an optional
text, which is a String, and an optional expressionLanguage, which is a
String that identifies the expression language of the text. If no
expressionLanguage is specified, the expression language of the text is
the expressionLanguage that is associated with the containing instance
of Definitions. The expressionLanguage SHALL be specified in a URI
format. The default expression language is FEEL. When the expression
language is FEEL, the text must conform to grammar rule 15 in section
[10.3.1.2](#_Ref123028648).](https://www.omg.org/spec/SCE/1.0)

[A UnaryTests is satisfied if and only if one of the following
alternatives is true:](https://www.omg.org/spec/SCE/1.0)

[a) One of the expressions in the UnaryTests evaluates to a value, and
the implicit value is equal to that
value.](https://www.omg.org/spec/SCE/1.0)

[b) One of the expressions in the UnaryTests evaluates to a list of
values, and the implicit value is equal to at least one of the values in
that list.](https://www.omg.org/spec/SCE/1.0)

[c) One of the expressions in the UnaryTests evaluates to true when the
implicit value is applied to it.](https://www.omg.org/spec/SCE/1.0)

[d) One of the expressions in the UnaryTests is a boolean expression
using the special '?' variable and that expression evaluates to true
when the implicit value is assigned to
'?'.](https://www.omg.org/spec/SCE/1.0)

[[Table 25](#_Ref113864993) presents additional attributes and model
associations of the UnaryTests
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [text:                                            | [The text of this UnaryTests. It SHALL be a valid     |
| > string\[0..1\]](https://www.omg.org/spec/SCE/1.0) | expression in the                                     |
|                                                     | expressionLanguage](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+-------------------------------------------------------+
| > [expressionLanguage:                              | [This attribute identifies the expression language    |
| > anyURI\[0..1\]](https://www.omg.org/spec/SCE/1.0) | used in this UnaryTests. This value overrides the     |
|                                                     | expression language specified for the containing      |
|                                                     | instance of](https://www.omg.org/spec/SCE/1.0)        |
|                                                     |                                                       |
|                                                     | [DecisionRequirementDiagram. The language SHALL be    |
|                                                     | specified in a URI                                    |
|                                                     | format.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113864993 .anchor}Table 25: UnaryTests attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385167 .anchor}ItemDefinition metamodel](https://www.omg.org/spec/SCE/1.0)

[The inputs and output of decisions, business knowledge models, and
decision services, and the output of input data (all DRGElements) are
data items whose value, at the logic level, is assigned to variables or
represented by](https://www.omg.org/spec/SCE/1.0)

[Expressions.](https://www.omg.org/spec/SCE/1.0)

[An important characteristic of data items in decision models is their
structure. **DMN** does not require a particular format for this data
structure, but it does designate a subset of FEEL as its
default.](https://www.omg.org/spec/SCE/1.0)

[The class ItemDefinition is used to model the structure and the range
of values of the input and the outcome of
decisions.](https://www.omg.org/spec/SCE/1.0)

[As a concrete specialization of NamedElement, an instance of
ItemDefinition has a name and an optional id and description. The name
of an ItemDefinition element SHALL be distinct from the names of other
ItemDefinitions and Imports within the same
model.](https://www.omg.org/spec/SCE/1.0)

[The default type language for all elements can be specified in the
Definitions element using the typeLanguage attribute. For example, a
typeLanguage value of
[[http://www.w3.org/2001/XMLSchema]{.underline}"](http://www.w3.org/2001/XMLSchema)
indicates that the data structures used by elements within that
Definitions are in the form of XML Schema types. If unspecified, the
default is FEEL.](https://www.omg.org/spec/SCE/1.0)

[Notice that the data types that are built-in in the typeLanguage that
is associated with an instance of Definitions need not be redefined by
ItemDefinition elements contained in that Definitions element: they are
considered imported and can be referenced in **DMN** elements within the
Definitions element.](https://www.omg.org/spec/SCE/1.0)

[The type language can be overridden locally using the typeLanguage
attribute in the ItemDefinition
element.](https://www.omg.org/spec/SCE/1.0)

[Notice, also, that the data types and structures that are defined at
the top level in a data model that is imported using an Import element
that is associated with an instance of Definitions need not be redefined
by ItemDefinition elements contained in that Definitions element: they
are considered imported and can be referenced in **DMN** elements within
the Definitions element.](https://www.omg.org/spec/SCE/1.0)

[An ItemDefinition element MAY have a typeRef, which is a string that
references, as a qualified name, either an ItemDefinition in the current
instance of Definitions or a built-in type in the specified typeLanguage
or a type defined in an imported DMN, XSD, or other document. In the
latter case, the external document SHALL be imported in the Definitions
element that contains the instance of ItemDefinition, using an Import
element specifying both the namespace value and its name when used a
qualifier. For example, in the case of data structures contributed by an
XML schema, an Import would be used to specify the file location of that
schema, and the typeRef attribute would reference the type or element
definition in the imported schema. If the type language is FEEL the
built-in types are the FEEL built-in data types: *number*, *string*,
*boolean*, *days and time duration*, *years and months duration*, *date,
time*, *date, and time* and *Any*. A typeRef referencing a built-in type
SHALL omit the prefix.\
](https://www.omg.org/spec/SCE/1.0)

[An ItemDefinition element may restrict the values that are allowed from
typeRef, using the allowedValues attribute. allowedValues is an instance
of UnaryTests that constrains the domain of the typeRef. If an
ItemDefinition element does not contain allowedValues, its range of
allowed values is the full range of the referenced typeRef. When an
ItemDefinition has sibling itemComponents, their values are available in
the evaluation context of the UnaryTests of the allowedValues. In cases
where the isCollection attribute of an ItemDefinition is true, each
element of the collection must satisfy the UnaryTests of the
allowedValues, i.e. the allowedValues are projected onto the collection
elements. The default value of isCollection is false. The allowedValues
attribute has been deprecated as of DMN 1.5 and replaced with the
typeConstraint attribute. The typeConstraint attribute differs from
allowedValues by not projecting onto collection elements but directly
constraining the collection.\
](https://www.omg.org/spec/SCE/1.0)

[An alternative way to define an instance of ItemDefinition is as a
composition of ItemDefinition elements. An instance of ItemDefinition
may contain zero or more itemComponent, which are
themselves](https://www.omg.org/spec/SCE/1.0)

[ItemDefinitions. Each itemComponent may be defined by either a typeRef,
allowedValues, and typeConstraint or a nested itemComponent. In this
way, complex types may be defined within DMN. The name of an
itemComponent (nested ItemDefinition) must be unique within its
containing ItemDefinition or
itemComponent.](https://www.omg.org/spec/SCE/1.0)

[An alternative way to define an instance of ItemDefinition is by
specifying a FunctionItem element, which defines the signature of a
function: the parameters and the output of the function. An instance of
ItemDefinition may contain at most one FunctionItem. A FunctionItem may
contain zero or more parameters defined as InformationItems and one
output type defined as a typeRef. The names of the parameters of a
FunctionItem are unique.](https://www.omg.org/spec/SCE/1.0)

[An ItemDefinition element SHALL be defined using only one of the
alternative ways:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[reference to a built-in or imported typeRef, possibly restricted with
allowedValuescomposition of ItemDefinition elements function signature
element. The ItemDefinition element specializes NamedElement and it
inherits its attributes and model associations. [Table
26](#_Ref113865239) presents the additional attributes and model
associations of the ItemDefinition
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**typeRef**: String                              | [This attribute identifies by namespace-prefixed name |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | the base type of this                                 |
|                                                     | ItemDefinition.](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**typeLanguage**: String                         | [This attribute identifies the type language used to  |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | specify the base type of this ItemDefinition. This    |
|                                                     | value overrides the type language specified in the    |
|                                                     | Definitions element. The language SHALL be specified  |
|                                                     | in a URI format.](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**allowedValues**: UnaryTests                    | [This attribute is a UnaryTests that restricts the    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | values in the base type that are allowed in this      |
|                                                     | ItemDefinition. In case of a collection, it is        |
|                                                     | projected on the collection elements.                 |
|                                                     | (deprecated)](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**itemComponent**: ItemDefinition                | [This attribute defines zero or more nested           |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | ItemDefinitions that compose this                     |
|                                                     | ItemDefinition.](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**isCollection: Boolean                          | [Setting this flag to *true* indicates that the       |
| > \[0..1\]**](https://www.omg.org/spec/SCE/1.0)     | actual values defined by this ItemDefinition are      |
|                                                     | collections of allowed values. The default is         |
|                                                     | *false*.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**isRange: Boolean                               | [Setting this flag to *true* indicates that the       |
| > \[0..1\]**](https://www.omg.org/spec/SCE/1.0)     | actual values defined by this ItemDefinition are      |
|                                                     | ranges of allowed values. The default is *false*. The |
|                                                     | attributes isCollection and isRange are mutually      |
|                                                     | exclusive](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**functionItem**: FunctionItem                   | [This attribute describes an optional FunctionItem    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | that compose this                                     |
|                                                     | ItemDefinition.](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**typeConstraint:** UnaryTests                   | [This attribute is a UnaryTests that restricts the    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | values in the base type that are allowed in this      |
|                                                     | ItemDefinition. In case of a collection, it directly  |
|                                                     | constrains the collection and is not projected on the |
|                                                     | collection                                            |
|                                                     | elements.](https://www.omg.org/spec/SCE/1.0)          |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113865239 .anchor}Table 26: ItemDefinition attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

+---------------------------------------------------+-------------------------------------------------------+
| [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+===================================================+=======================================================+
| [**outputTypeRef**: String                        | > [Reference to output type of                        |
| \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > function](https://www.omg.org/spec/SCE/1.0)         |
+---------------------------------------------------+-------------------------------------------------------+
| [**parameters**: InformationItem \[0.             | > [Function parameters as                             |
| .\*\]](https://www.omg.org/spec/SCE/1.0)          | > InformationItems](https://www.omg.org/spec/SCE/1.0) |
+---------------------------------------------------+-------------------------------------------------------+

: [Table 27: FunctionItem attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

[![](media/image65.svg){width="6.772222222222222in"
height="3.073175853018373in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 7-7: ItemDefinition class
diagram](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385168 .anchor}InformationItem metamodel](https://www.omg.org/spec/SCE/1.0)

[The class InformationItem is used to model variables at the decision
logic level in decision models.](https://www.omg.org/spec/SCE/1.0)

[InformationItem is a concrete subclass of NamedElement, from which it
inherits the id, and optional name, description, and label attributes,
except that an InformationItem element SHALL have a name attribute,
which is the name that is used to represent it in other Expression
elements. The name of an InformationItem element SHALL be unique within
its scope.](https://www.omg.org/spec/SCE/1.0)

[Variables represent values that result from a decision, are assigned to
input data by an external data source or are passed to a module of
decision logic that is defined as a function (and that is represented by
a business knowledge model element). In the first or second case, a
variable may be referenced by other dependent decisions by means of
their information requirements. In the third case, a variable is one of
the parameters of the function that is the realization, at the decision
logic level, of a business knowledge model
element.](https://www.omg.org/spec/SCE/1.0)

[A variable representing an instance of Decision or InputData referenced
by aInformationRequirement](https://www.omg.org/spec/SCE/1.0)

[SHOULD be referenced by the value expression of the decision logic in
the Decision element that contains the InformationRequirement element. A
parameter in an instance of BusinessKnowledgeModel SHOULD be a variable
in the value expression of that BusinessKnowledgeModel
element.](https://www.omg.org/spec/SCE/1.0)

[The ItemInformation elements are assigned values as
follows:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 
- 

[An InformationItem element contained in a Decision is assigned the
value of the Decision\'s value expression.An InformationItem element
that is a parameter in a FunctionDefinition is assigned a value by a
Binding element as part of an instance of Invocation.An InformationItem
element contained in an InputData is assigned a value by an external
data source that is attached at runtime. If no value is provided,
**null** is assigned to the InformationItem. When an InputData is
imported several times via transitive imports, the contained
InformationItem is assigned only once and holds the same value.An
InformationItem element contained in a ContextEntry is assigned a value
by the ContextEntry\'s value expression.An InformationItem element
contained in an Invocable can never be assigned.An InformationItem
element contained in an Invocable cannot have a defaultValue.If the
value to be assigned is not specified or is null, and the
InformationItem has a defaultValue (see Table 28), then the
corresponding InformationItem is assigned the value of Expression
specified in the defaultValue attribute.In any case, the datatype
indicated by the typeRef that is associated with an instance of
InformationItem SHALL be compatible with the datatype that is associated
with the **DMN** model element from which it takes its value.
InformationItem inherits all of the attributes and model associations of
NamedElement. [Table 28](#_Ref113865507) presents the additional
attributes and model associations of the InformationItem
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**/valueExpression**: Expression                 | [The Expression whose value is assigned to this       |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | InformationItem. This is a derived                    |
|                                                     | attribute.](https://www.omg.org/spec/SCE/1.0)         |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**typeRef**: String                              | > [Qualified name of the type of this                 |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | > InformationItem.](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**defaultValue:** Expression                     | > [This attribute specifies an instance of Expression |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > that is selected when the value of the associated   |
|                                                     | > variable is not provided. The Expression must be a  |
|                                                     | > constant                                            |
|                                                     | > expression](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113865507 .anchor}Table 28: InformationItem attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385169 .anchor}Literal expression metamodel](https://www.omg.org/spec/SCE/1.0)

[The class LiteralExpression is used to model a value expression whose
value is specified by text in some specified expression
language.](https://www.omg.org/spec/SCE/1.0)

[LiteralExpression is a concrete subclass of Expression, from which it
inherits the id and typeRef
attributes.](https://www.omg.org/spec/SCE/1.0)

[An instance of LiteralExpression has an optional text, which is a
String, and an optional expressionLanguage, which is a String that
identifies the expression language of the text. If no expressionLanguage
is specified, the expression language of the text is the
expressionLanguage that is associated with the containing instance of
Definitions. The expressionLanguage SHALL be specified in a URI format.
The default expression language is
FEEL.](https://www.omg.org/spec/SCE/1.0)

[As a subclass of Expression, each instance of LiteralExpression has a
value. The text in an instance of LiteralExpression determines its
value, according to the semantics of the LiteralExpression's
expressionLanguage. The semantics of **DMN** decision models as
described in this specification applies only if the text of all the
instances of LiteralExpression in the model are valid expressions in
their associated expression language.](https://www.omg.org/spec/SCE/1.0)

[An instance of LiteralExpression may include importedValues, which is
an instance of a subclass Import that identifies where the text of the
LiteralExpression is located. importedValues is an expression that
selects text from an imported document. An instance of LiteralExpression
SHALL NOT have both a text and importedValues. The importType of the
importedValues identifies the type of document containing the imported
text and SHALL be consistent with the expressionLanguage of the
LiteralExpression element. The expressionLanguage of the importedValues
element identifies how the imported text is selected from the imported
document. For example, if the importType indicates an XML document, the
expressionLanguage of importedValues could be XPATH
2.0.](https://www.omg.org/spec/SCE/1.0)

[LiteralExpression inherits of all the attributes and model associations
of Expression. [Table 29](#_Ref113865598) presents the additional
attributes and model associations of the LiteralExpression
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**text:** string                                 | [The text of this LiteralExpression. It SHALL be a    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | valid expression in the express                       |
|                                                     | ionLanguage.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**expressionLanguage:** anyURI \[0..             | [This attribute identifies the expression language    |
| > 1\]](https://www.omg.org/spec/SCE/1.0)            | used in this LiteralExpression. This value overrides  |
|                                                     | the expression language specified for the containing  |
|                                                     | instance of](https://www.omg.org/spec/SCE/1.0)        |
|                                                     |                                                       |
|                                                     | [DecisionRequirementDiagram. The language SHALL be    |
|                                                     | specified in a URI                                    |
|                                                     | format.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**importedValues:** ImportedValues               | [The instance of ImportedValues that specifies where  |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | the text of this LiteralExpression is                 |
|                                                     | located.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113865598 .anchor}Table 29: LiteralExpression attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385170 .anchor}Invocation metamodel](https://www.omg.org/spec/SCE/1.0)

[Invocation is a mechanism that permits the evaluation of one value
expression -- the invoked expression *--* inside another value
expression -- the invoking expression -- by binding locally the input
variables of the invoked expression to values inside the invoking
expression. In an invocation, the input variables of the invoked
expression are usually called: *parameters*. Invocation permits the same
value expression to be re-used in multiple expressions, without having
to duplicate it as a sub-expression in all the using
expressions.](https://www.omg.org/spec/SCE/1.0)

[The class Invocation is used to model invocations as a kind of
Expression: Invocation is a concrete specialization of
Expression.](https://www.omg.org/spec/SCE/1.0)

[An instance of Invocation is made of zero or more binding, which are
instances of Binding, and model how the bindingFormulas are bound to the
formalParameters of the invoked function. The formalParameters of a
FunctionDefinition are InformationItems and the parameters of the
Bindings are InformationItems. The binding is by matching the
InformationItem names.](https://www.omg.org/spec/SCE/1.0)

[An Invocation contains a calledFunction, an Expression, which must
evaluate to a function. Most commonly, it is a LiteralExpression naming
a BusinessKnowledgeModel.](https://www.omg.org/spec/SCE/1.0)

[The value of an instance of Invocation is the value of the associated
calledFunction\'s body, with its formalParameters assigned values at
runtime per the bindings in the
Invocation.](https://www.omg.org/spec/SCE/1.0)

[Invocation MAY be used to model invocations in decision models, when a
Decision element has exactly one knowledgeRequirement element, and when
the decisionLogic in the Decision element consists only in invoking the
BusinessKnowledgeModel element that is referenced by that
requiredKnowledge and a more complex value expression is not
required.](https://www.omg.org/spec/SCE/1.0)

[Using Invocation instances as the decisionLogic in Decision elements
permits the re-use of the encapsulatedLogic of a BusinessKnowledgeModel
as the logic for any instance of Decision that requires that
BusinessKnowledgeModel, where each requiring Decision element specifies
its own bindings for the encapsulatedLogic\'s
parameters.](https://www.omg.org/spec/SCE/1.0)

[The calledFunction that is associated with the Invocation element SHALL
BE the encapsultedLogic of the BusinessKnowledgeModel element that is
required by the Decision element that contains the Invocation. The
Invocation element SHALL have exactly one binding for each parameter in
the BusinessKnowledgeModel\'s
encapsulatedLogic.](https://www.omg.org/spec/SCE/1.0)

[Invocation inherits of all the attributes and model associations of
Expression. [Table 30](#_Ref113866650) presents the additional
attributes and model associations of the Invocation
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**calledFunction:** Expression                   | > [An expression whose value is a                     |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | > function.](https://www.omg.org/spec/SCE/1.0)        |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**binding:** Binding                             | [This attribute lists the instances of Binding used   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)         | to bind the formalParameters of the calledFunction in |
|                                                     | this Invocation.](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113866650 .anchor}Table 30: Invocation attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385171 .anchor}Binding metamodel](https://www.omg.org/spec/SCE/1.0)

[The class Binding is used to model, in an Invocation element, the
binding of the calledFunction\'s formalParameters to
values.](https://www.omg.org/spec/SCE/1.0)

[A Binding is made of one bindingFormula, which is an Expression, and of
one parameter, which is an
InformationItem.](https://www.omg.org/spec/SCE/1.0)

[The parameter names in the Binding elements SHALL be a subset of the
formalParameters of the
calledFunction.](https://www.omg.org/spec/SCE/1.0)

[When the Invocation element is executed, each InformationItem element
that is referenced as a parameter by a binding in the Invocation element
is assigned, at runtime, the value of the
bindingFormula.](https://www.omg.org/spec/SCE/1.0)

[[Table 31](#_Ref113866737) presents the attributes and model
associations of the Binding element.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)  | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+======================================================+=======================================================+
| > [**parameter:**                                    | [The InformationItem on which the calledFunction of   |
| > InformationItem](https://www.omg.org/spec/SCE/1.0) | the owning instance of Invocation depends that is     |
|                                                      | bound by this                                         |
|                                                      | Binding.](https://www.omg.org/spec/SCE/1.0)           |
+------------------------------------------------------+-------------------------------------------------------+
| > [**bindingFormula:** Expression                    | [The instance of Expression to which the parameter in |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)        | this Binding is bound when the owning instance of     |
|                                                      | Invocation is                                         |
|                                                      | evaluated.](https://www.omg.org/spec/SCE/1.0)         |
+------------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113866737 .anchor}Table 31: Binding attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385172 .anchor}]{#_Ref165458101 .anchor}Error Handling](https://www.omg.org/spec/SCE/1.0)

[When the evaluation of a DMN expression (see section
[7.2.1](#_Ref123126551)) encounters a semantic error (e.g. type mismatch
or duplicate keys in a context), the evaluation MUST report or log
diagnostic information and SHALL return
**null**.](https://www.omg.org/spec/SCE/1.0)

[There are two modes for error handling in DMN: lenient and strict. The
error handling mode is configured during the initiation of the decision
model evaluation. The default error handling mode is lenient. A given
DMN model can be evaluated in lenient or strict mode, i.e. the error
handling mode is not a property of a DMN
model.](https://www.omg.org/spec/SCE/1.0)

[In lenient error mode, if an error is detected, it is collected, and
the execution continues. For instance, errors detected in child DRG
Elements are accumulated for the parent
element.](https://www.omg.org/spec/SCE/1.0)

[When the error mode is set to strict, the model evaluation halts upon
detecting the first error, reports the error, and returns
**null**.](https://www.omg.org/spec/SCE/1.0)

[The configured error handling mode also applies to the handling of
errors during the evaluation of literal expressions (e.g. FEEL
expressions).](https://www.omg.org/spec/SCE/1.0)

[\
](https://www.omg.org/spec/SCE/1.0)

[This page intentionally left blank.](https://www.omg.org/spec/SCE/1.0)

[\
](https://www.omg.org/spec/SCE/1.0)



# Decision Table


## [[[]{#_Toc231385174 .anchor}]{#_Ref193111248 .anchor}Introduction](https://www.omg.org/spec/SCE/1.0)

[One of the ways to express the decision logic corresponding to the DRD
decision artifact is as a decision table. A decision table is a tabular
representation of a set of related input and output expressions,
organized into rules indicating which output entry applies to a specific
set of input entries. The decision table contains all (and only) the
inputs required to determine the output. Moreover, a complete table
contains all possible combinations of input values (all the
rules).](https://www.omg.org/spec/SCE/1.0)

[Decision tables and decision table hierarchies have a proven track
record in decision logic representation. It is one of the purposes of
**DMN** to standardize different forms and types of decision
tables.](https://www.omg.org/spec/SCE/1.0)

[A decision table consists of:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 

[An information item name: the name of an InformationItem, if any, for
which the decision table is its value expression. This will usually be
the name of the Decision or Business Knowledge Model for which the
decision table provides the decision logic. A list of input clauses
(zero or more). Each input clause is made of an input expression and
optional allowed values for the input entries that correspond to the
clause. The input entries are contained in the rules, and the *i*th
input entry corresponds to the *i*^th^ input clause. A list of output
clauses (one or more). Each output clause is made of a name and optional
allowed values for the output entries that correspond to the clause. The
output entries are contained in the rules, and the *i*^th^ output entry
corresponds to the *i*^th^ output clause. A single output clause has no
name. Two or more output clauses describe a decision table that returns
a context for each hit with an entry for each output clause. Each of the
multiple output clauses SHALL be named. A set of outputs (one or more).
A single output has no name, only a value. Two or more outputs are
called output components. Each output component SHALL be named. Each
output (component) SHALL specify an output entry for each rule. The
specification of output component name (if multiple outputs) and all
output entries is referred to as an output clause. A list of annotation
clauses (zero or more). Each annotation clause is made of a name. Each
annotation SHALL be named as part of a rule annotation clause. The
annotation entries are contained in the rules, and the ith annotation
entry corresponds to the i^th^ annotation clause. A list of rules (one
or more) in rows or columns of the table (depending on orientation),
where each rule is composed of the specific input entries, output
entries and optional rule annotations of the table row (or column). If
the rules are expressed as rows, the columns are clauses, and vice
versa.![Diagram, schematic Description automatically
generated](media/image66.jpg){width="6.754371172353456in"
height="3.483180227471566in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113883416 .anchor}Figure 8-1: Decision table example (vertical
orientations: rules as columns)](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image67.jpg){width="6.765458223972003in"
height="3.388258967629046in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113883404 .anchor}Figure 8-2: Decision table example
(horizontal orientation: rules as
rows)](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image68.jpg){width="6.758114610673665in"
height="3.2187150043744532in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 8-3: Decision table example (vertical orientation, multiple
output components)](https://www.omg.org/spec/SCE/1.0)

[![Diagram Description automatically
generated](media/image69.jpg){width="6.757624671916011in"
height="2.9832600612423446in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 8-4: Decision table example (horizontal orientation, multiple
output components)](https://www.omg.org/spec/SCE/1.0)

[The decision table shows the rules in a shorthand notation by arranging
the entries in table cells. This shorthand notation shows all inputs in
the same order in every rule and therefore has a number of readability
and verification advantages.](https://www.omg.org/spec/SCE/1.0)

[For example:](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------+-------------------------------------------------+----------------------------------------------+
| > [Customer](https://www.omg.org/spec/SCE/1.0)   | > [OrderSize](https://www.omg.org/spec/SCE/1.0) | [Discount](https://www.omg.org/spec/SCE/1.0) |
+==================================================+=================================================+==============================================+
| > [*Business*](https://www.omg.org/spec/SCE/1.0) | > [\<10](https://www.omg.org/spec/SCE/1.0)      | [0.10](https://www.omg.org/spec/SCE/1.0)     |
+--------------------------------------------------+-------------------------------------------------+----------------------------------------------+

[reads as:](https://www.omg.org/spec/SCE/1.0)

[**If** Customer = "Business" **and** OrderSize \< 10 **then** Discount
= 0.10 In general, this is expressed
as:](https://www.omg.org/spec/SCE/1.0)

+----------------------------------------+----------------------------------------+------------------------------------------+
| > [input expression                    | > [input expression                    | [Output                                  |
| > 1](https://www.omg.org/spec/SCE/1.0) | > 2](https://www.omg.org/spec/SCE/1.0) | label](https://www.omg.org/spec/SCE/1.0) |
+========================================+========================================+==========================================+
| > [input entry                         | > [input entry                         | [output entry                            |
| > a](https://www.omg.org/spec/SCE/1.0) | > b](https://www.omg.org/spec/SCE/1.0) | c](https://www.omg.org/spec/SCE/1.0)     |
+----------------------------------------+----------------------------------------+------------------------------------------+

[\
The three highlighted cells in the decision table fragment above
represent the following rule:](https://www.omg.org/spec/SCE/1.0)

[**If** the value of input expression 1 satisfies input entry
a](https://www.omg.org/spec/SCE/1.0)

[**and** the value of input expression 2 satisfies input entry
b](https://www.omg.org/spec/SCE/1.0)

[**then** the rule *matches* and the result of the decision table is
output entry c.](https://www.omg.org/spec/SCE/1.0)

[An input expression value *satisfies* an input entry if the value is
equal to the input entry or belongs to the list of values indicated by
the input entry (e.g., a list or a range), or one of the expressions in
the input entry evaluates to true. For the complete specification of the
input entry satisfaction conditions, please refer to section
[8.3.3](#_Ref123030336). If the input entry is '-' (meaning
*irrelevant*), every value of the input expression satisfies the input
entry, and that particular input is irrelevant in the specified
rule.](https://www.omg.org/spec/SCE/1.0)

[A rule *matches* if the value of every input expression satisfies the
corresponding input entry. If there are no input entries, any rule
matches.](https://www.omg.org/spec/SCE/1.0)

[The list of rules expresses the logic of the decision. For a given set
of input values, the matching rule (or rules) indicate the resulting
value for the output name. If rules *overlap*, multiple rules can match,
and a *hit policy* indicates how to handle the multiple
matches.](https://www.omg.org/spec/SCE/1.0)

[If two input entries of the same input expression share no values, the
entries (cells) are called *disjoint*. If there is an intersection, the
entries are called *overlapping* (or even equal). 'Irrelevant' ('-')
overlaps with any input entry of the input
expression.](https://www.omg.org/spec/SCE/1.0)

[Two rules are overlapping if all corresponding input entries are
*overlapping*. A specific configuration of input data may then match the
two rules.](https://www.omg.org/spec/SCE/1.0)

[Two rules are *disjoint* (non-overlapping) if at least one pair of
corresponding input expressions is disjoint. No specific configuration
of input data will match the two
rules.](https://www.omg.org/spec/SCE/1.0)

[If tables are allowed to contain overlapping rules, the table hit
policy indicates how overlapping rules have to be handled and which is
the resulting value(s) for the output name, in order to avoid
inconsistency.](https://www.omg.org/spec/SCE/1.0)

## [[[[]{#_Toc231385175 .anchor}]{#_Ref123035231 .anchor}]{#_Ref122605768 .anchor}Notation](https://www.omg.org/spec/SCE/1.0)

[This section builds on the generic notation for decision logic and
boxed expressions defined in clause [7.2](#_Ref123030355). A decision
table representation standardizes:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 

[The orientation (rules as rows, columns, or crosstab), as shown by the
table. Placement of inputs, outputs and (optional) allowed values in
standard locations on a grid of cells. Each input expression is
optionally associated with unary tests restricting the allowed input
values. In this text the optional cells with allowed values are
indicated in inverse. Each output (component) is optionally associated
with allowed values. In this text the optional allowed output values are
indicated in inverse. Line style and optional use of color. The contents
of specific rule input and output entry cells. The hit policy,
indicating how to interpret overlapping input combinations. Placement of
information item name, hit policy (H) and rule numbers as indicated in
[Figure 8-5](#_Ref123030454), [Figure 8-7](#_Ref123030479) and [Figure
8-9](#_Ref123030515). Rule numbers are consecutive natural numbers
starting at 1. Rule numbering is required for tables with hit indicator
F (first) or R (rule order) because the meaning depends on rule
sequence. Crosstab tables have no rule numbers. Rule numbering is
optional for other table types. Input expressions, input values, output
values, input entries and output entries can be any text (e.g., natural
language, formal language, pseudo-code). Implementations claiming level
2 or 3 conformance SHALL support (S-)FEEL syntax. Implementations
claiming level 1 conformance are not required to interpret the
expressions. To avoid misinterpretation (e.g., when expressions are not
meant to be valid (S-)FEEL but may conflict with the look and feel of
(S-)FEEL syntax), conformant implementations SHOULD indicate when the
input expression is not meant to be interpreted by using the URI:
\"https://www.omg.org/spec/DMN/uninterpreted/20140801[\"](http://www.omg.org/spec/DMN/uninterpreted/20140801).](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385176 .anchor}Line style and color](https://www.omg.org/spec/SCE/1.0)

[Line style is normative. There is a double line between the input
clauses and output clauses, continuing between the input entries and the
output entries. There is also a double line between the output clauses
and the annotation clauses, continuing between the output entries and
the annotation entries. These two double lines are parallel to each
other. There is a third double line, that intersects at right angles
with the previous two, between input clauses and the input entries,
continuing between the output clauses and the output entries, and
continuing between the annotation clauses and the annotation entries.
All other cells are separated by a single
line.](https://www.omg.org/spec/SCE/1.0)

[Color is suggested but does not influence the meaning. It is considered
good practice to use different colors for the input clauses, the output
clauses, and the annotation clauses, and another (or no) color for the
input, output, and annotation
entries.](https://www.omg.org/spec/SCE/1.0)

### [[[[]{#_Toc231385177 .anchor}]{#_Ref123035258 .anchor}]{#_Ref123035016 .anchor}Table orientation](https://www.omg.org/spec/SCE/1.0)

[Depending on size, a decision table can be presented horizontally
(rules as rows), vertically (rules as columns), or crosstab (rules
composed from two input dimensions). Crosstab tables can only have the
default hit policy (see later).](https://www.omg.org/spec/SCE/1.0)

[Decision table inputs and outputs should not be mixed. In a horizontal
table, all input columns SHALL be represented on the left of all output
columns. In a vertical table, all the input rows SHALL be represented
above all output rows. In a crosstab, all the output cells SHALL be in
the bottom-right part of the table.](https://www.omg.org/spec/SCE/1.0)

[The table SHALL be arranged in one of the following ways (see [Figure
8-5](#_Ref123030454), [Figure 8-7](#_Ref123030479), [Figure
8-9](#_Ref123030515)). Cells indicated in inverse are
optional.](https://www.omg.org/spec/SCE/1.0)

[The input cell entry '-' means 'irrelevant'. HC is a placeholder for
hit policy indicator (e.g., U, A, F,
\...).](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image70.jpg){width="5.173611111111111in"
height="1.4236111111111112in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123030454 .anchor}Figure 8-5: Rules as rows - schematic
layout](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image71.jpg){width="5.361287182852143in"
height="1.927823709536308in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 8-6: Rules as rows - example](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image72.jpg){width="5.311685258092738in"
height="1.744381014873141in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123030479 .anchor}Figure 8-7: Rules as columns - schematic
layout](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image73.jpg){width="5.569316491688539in"
height="1.4403324584426946in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 8-8: Rules as columns -
example](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image74.jpg){width="4.0878597987751535in"
height="1.7389129483814523in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123030515 .anchor}Figure 8-9: Rules as crosstab - schematic
layout (optional input and output values not
shown)](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image75.jpg){width="5.151896325459318in"
height="1.4200623359580054in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 8-10: Rules as crosstab - simplified example with only two
inputs](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image76.jpg){width="5.097965879265092in"
height="1.6673873578302711in"}](https://www.omg.org/spec/SCE/1.0)

[\
[]{#_Ref123030673 .anchor}Figure 8-11: Rules as crosstab - example with
three inputs](https://www.omg.org/spec/SCE/1.0)

[Crosstab tables with more than two inputs are possible (as shown in
[Figure 8-11](#_Ref123030673)).](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385178 .anchor}Input expressions](https://www.omg.org/spec/SCE/1.0)

[Input expressions are usually simple, for example, a name (e.g.,
CustomerStatus) or a test (e.g., Age\<25). The order of input
expressions is not related to any execution order in
implementation.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385179 .anchor}Input values](https://www.omg.org/spec/SCE/1.0)

[Input expressions may be expected to result in a limited number or a
limited range of values. It is important to model these expected input
values because a decision table will be considered complete if its rules
cover all combinations of expected input values for all input
expressions.](https://www.omg.org/spec/SCE/1.0)

[Regardless of how the expected input values are modeled, input values
SHOULD be exclusive and complete. Exclusive means that input values are
disjoint. Complete means that all relevant input values from the domain
are present.](https://www.omg.org/spec/SCE/1.0)

[For example, the following two input value ranges overlap: \<5, \<10.
The following two ranges are incomplete: \<5, \>5. The list of input
values is optional. If provided, it is a list of unary tests that must
be satisfied by the corresponding
input.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385180 .anchor}Information Item names, output labels, and output component names](https://www.omg.org/spec/SCE/1.0)

[A decision table with multiple output components SHALL specify a name
for each output component.](https://www.omg.org/spec/SCE/1.0)

[A decision table that is the value expression of an InformationItem
(e.g., a Decision\'s logic or a boxed Invocation\'s binding formula)
SHALL specify the name of the InformationItem as its Information Item
name. A decision table that is not contained in another boxed expression
shall place the Information Item name in a name box just above and
adjoining the table.](https://www.omg.org/spec/SCE/1.0)

[A decision table that is contained in another boxed expression may use
the containing expression for its](https://www.omg.org/spec/SCE/1.0)

[Information Item name. For example, the Information Item name for a
decision table bound to a function parameter is the name of the function
parameter. Or, to save space, the Information Item name box may be
omitted, and the Output label used
instead.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385181 .anchor}Output values](https://www.omg.org/spec/SCE/1.0) 

[The output entries of a decision table are often drawn from a list of
output values.](https://www.omg.org/spec/SCE/1.0)

[The list of output values is optional. If provided, it is a list
restricting output entries to the given list of
values.](https://www.omg.org/spec/SCE/1.0)

[When the hit policy is P (priority), meaning that multiple rules can
match, but only one hit should be returned, the ordering of the list of
output values is used to specify the (decreasing)
priority.](https://www.omg.org/spec/SCE/1.0)

[The ordering of the list of output values is also used when the hit
policy is output order.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385182 .anchor}Multiple outputs](https://www.omg.org/spec/SCE/1.0)

[The decision table can show a compound output (see [Figure
8-12](#_Ref113882084), [Figure 8-13](#_Ref113882105), and [Figure
8-14](#_Ref113882115)).](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image77.jpg){width="5.2917596237970255in"
height="1.5076202974628172in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113882084 .anchor}Figure 8-12: Horizontal table with multiple
output components](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image78.jpg){width="5.119098862642169in"
height="1.8492880577427822in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113882105 .anchor}Figure 8-13: Vertical table with multiple
output components](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image79.jpg){width="5.096513560804899in"
height="1.7729352580927384in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113882115 .anchor}Figure 8-14: Crosstab with multiple output
components](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385183 .anchor}Input entries](https://www.omg.org/spec/SCE/1.0)

[Rule input entries are unary tests (grammar rule
15).](https://www.omg.org/spec/SCE/1.0)

[A dash symbol ('-') can be used to mean any input value, *i.e.,* the
input is irrelevant for the containing
rule.](https://www.omg.org/spec/SCE/1.0)

[The input entries in a unary test SHOULD be '-' or a subset of the
input values specified. For example, if the input values for input 'Age'
are specified as *\[0..120\]*, then an input entry of *\<0* SHOULD be
reported as invalid.](https://www.omg.org/spec/SCE/1.0)

[Tables containing at least one '-' input entry are called *contracted*
tables. The others are called
*expanded*.](https://www.omg.org/spec/SCE/1.0)

[Tables where every input entry is *true, false, or '-*' are
historically called *limited-entry* tables, but there is no need to
maintain this restriction.](https://www.omg.org/spec/SCE/1.0)

[Evaluation of the input expressions in a decision table does not
produce side-effects that influence the evaluation of other input
expressions. This means that evaluating an expression or executing a
rule should not change the evaluation of other expressions or rules of
the same table. This is particularly important in first hit tables where
the rules are evaluated in a predefined sequence: evaluating or
executing a rule should not influence other
rules.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385184 .anchor}Merged input entry cells](https://www.omg.org/spec/SCE/1.0)

[Adjacent input entry cells from different rules, with the same content
and same (or no) prior cells can be merged, as shown in [Figure
8-15](#_Ref113882227) and [Figure 8-16](#_Ref113882240). Rule output
cells cannot be merged (except in
crosstabs).](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image80.jpg){width="5.083333333333333in"
height="1.4583333333333333in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113882227 .anchor}Figure 8-15: Merged rule input cells
allowed](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image81.jpg){width="5.048611111111111in"
height="1.6111111111111112in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113882240 .anchor}Figure 8-16: Merged rule input cells not
allowed](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385185 .anchor}Output entry](https://www.omg.org/spec/SCE/1.0)

[A rule output entry is an
expression.](https://www.omg.org/spec/SCE/1.0)

[Rule output cells cannot be merged (except in crosstabs, where adjacent
output cells with the same content can be
merged).](https://www.omg.org/spec/SCE/1.0)

####  [Shorthand notation](https://www.omg.org/spec/SCE/1.0) 

[In vertical (rules as columns) tables with a single output name (equal
to the information item name), a shorthand notation may be used to
indicate: output value applies ('X') or does not apply ('-'), as is
common practice in decision tables.](https://www.omg.org/spec/SCE/1.0)

[Because there can be only one output entry for an output name, every
rule must indicate no more than one 'X'. The other output entries must
contain '-'.](https://www.omg.org/spec/SCE/1.0)

[The table in [Figure 8-17](#_Ref123030758) is shorthand notation for
the table in [Figure 8-18](#_Ref123030781). It is called shorthand,
because the output entries need not be (re-)written in every column but
are indicated with a one-character notation ('X' or '-'), thereby saving
space in vertical tables, which tend to expand in width as the number of
rules increases. The output values are written only once, before the
rules, in the output expression part.](https://www.omg.org/spec/SCE/1.0)

[If an information item name is provided, and there is only one output
name (which has to be equal to the information item name), the output
name is optional.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image82.jpg){width="3.8320647419072618in"
height="1.742405949256343in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123030758 .anchor}Figure 8-17: Shorthand notation for vertical
tables (rules as columns)](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image83.jpg){width="4.622880577427821in"
height="1.3056189851268591in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123030781 .anchor}Figure 8-18: Full notation for vertical
tables (rules as columns)](https://www.omg.org/spec/SCE/1.0)

### [[[[[[[]{#_Toc231385186 .anchor}]{#_Ref123035100 .anchor}]{#_Ref123035087 .anchor}]{#_Ref123035077 .anchor}]{#_Ref123035070 .anchor}]{#_Ref123035051 .anchor}Hit policy](https://www.omg.org/spec/SCE/1.0)

[A decision table normally has several rules. As a default, rules do not
overlap. If rules overlap, meaning that more than one rule may match a
given set of input values, the hit policy indicator is required in order
to recognize the table type and unambiguously understand the decision
logic. The hit policy can be used to check correctness at
design-time.](https://www.omg.org/spec/SCE/1.0)

[The hit policy specifies what the result of the decision table is in
cases of overlapping rules, i.e., when more than one rule matches the
input data. For clarity, the hit policy is summarized using a single
character in a particular decision table cell. In horizontal tables this
is the top-left cell ([Figure 8-2](#_Ref113883404)) and in vertical
tables this is the bottom-left cell ([Figure
8-1](#_Ref113883416)).](https://www.omg.org/spec/SCE/1.0)

[The character is the initial letter of the defined hit policy
(**U**nique, **A**ny, **P**riority, **F**irst, **C**ollect, **O**utput
order or **R**ule order). Crosstab tables are always Unique and need no
indicator.](https://www.omg.org/spec/SCE/1.0)

[The hit policy SHALL default to Unique, in which case the hit indicator
is optional. Decision tables with the Unique hit policy SHALL NOT
contain overlapping rules.](https://www.omg.org/spec/SCE/1.0)

[Tools may support only a nonempty subset of hit policies, but the table
type SHALL be clear and therefore the hit policy indication is
mandatory, except for the default unique tables. Unique tables SHALL
always be supported.](https://www.omg.org/spec/SCE/1.0)

#### [Single and multiple hit tables](https://www.omg.org/spec/SCE/1.0) 

[A single hit table shall return the output of one rule only; a multiple
hit table may return the output of multiple rules (or a function of the
outputs, e.g., sum of values). If rules are allowed to overlap, the hit
policy indicates how overlapping rules have to be
interpreted.](https://www.omg.org/spec/SCE/1.0)

[The initial letter for hit policy also identifies if a table is single
hit or multiple hits.](https://www.omg.org/spec/SCE/1.0)

[A single hit table may or may not contain overlapping rules but returns
the output of one rule only. In case of overlapping rules, the hit
policy indicates which of the matching rules to select. Some
restrictions apply to tables with compound
outputs.](https://www.omg.org/spec/SCE/1.0)

[Regardless of whether a single or multiple hit policy is used, some
columns in a decision table may be designated as *rule annotations*.
Rule Annotations contain text that is not returned as part of the
expression results, and they are ignored for purposes of the hit policy
validations described below. Although there is no standard mechanism to
access the annotations of the matched rules in a decision table at
execution time, implementations may use the annotations for auditing,
debugging, logging, documentation, analytics, consumption by down-stream
systems, or for other purposes.](https://www.omg.org/spec/SCE/1.0)

[**Single hit policies** for single output decision tables
are:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  
3.  
4.  

> [**U**nique: no overlap is possible, and all rules are disjoint. Only
> a single rule can be matched. This is the default. **A**ny: there may
> be overlap, but all the matching rules show equal output entries for
> each output (ignoring rule annotations), so any match can be used. If
> the output entries are non-equal (ignoring rule annotations), the hit
> policy is incorrect, and the result is undefined. **P**riority:
> multiple rules can match, with different output entries. This policy
> returns the matching rule with the highest output priority. Output
> priorities are specified in the ordered list of output values, in
> decreasing order of priority. Note that priorities are independent
> from rule sequence. **F**irst: multiple (overlapping) rules can match,
> with different output entries. The first hit by rule order is returned
> (and evaluation can halt). This is still a common usage because it
> resolves inconsistencies by forcing the first hit. However, first hit
> tables are not considered good practice because they do not offer a
> clear overview of the decision logic. It is important to distinguish
> this type of table from others because the meaning depends on the
> order of the rules. The last rule is often the catch-remainder.
> Because of this order, the table is hard to validate manually and
> therefore has to be used with care.](https://www.omg.org/spec/SCE/1.0)

[A multiple hit table may return output entries from multiple rules. The
result will be a list of rule outputs or a simple function of the
outputs.](https://www.omg.org/spec/SCE/1.0)

[**Multiple hit policies** for single output decision tables can
be:](https://www.omg.org/spec/SCE/1.0)

5.  
6.  
7.  a)  
    b)  
    c)  
    d)  

[**O**utput order: returns all hits in decreasing output priority order.
Output priorities are specified in the ordered list of output values in
decreasing order of priority. **R**ule order: returns all hits in rule
order. Note: the meaning may depend on the sequence of the rules.
**C**ollect: returns either all hits in arbitrary order, or the result
of applying a simple function to them. An operator (\'+\', \'\<\',
\'\>\', \'#\') can be added. If no operator is present, the result is
the list of the output entries of all the rules matched.\
\
If an operator is present, the result is a singleton value resulting
from applying the function denoted by the selected operator to the list
of the output entries of all the rules matched. Collect operators are: +
(sum): the result of the decision table is the sum of all the outputs.
\< (min): the result of the decision table is the smallest value of all
the outputs. \> (max): the result of the decision table is the largest
value of all the outputs. \# (count): the result of the decision table
is the number of outputs. Other policies, such as more complex
manipulations on the outputs, can be performed by post-processing the
output list (outside the decision
table).](https://www.omg.org/spec/SCE/1.0)

[Decision tables with compound outputs support only the following hit
policies: Unique, Any, Priority, First, Output order, Rule order and
Collect without operator, because the collect operator is undefined over
multiple outputs. This restriction ignores rule annotations of which
there may be multiple regardless of the hit policy
specified.](https://www.omg.org/spec/SCE/1.0)

[For the Priority and Output order hit policies, priority is decided in
compound output tables over all the outputs for which output values have
been provided (ignoring rule annotations). The priority for each output
is specified in the ordered list of output values in decreasing order of
priority, and the overall priority is established by considering the
ordered outputs from left to right in horizontal tables (i.e., columns
to the left take precedence over columns to the right), or from top to
bottom in vertical tables. Outputs for which no output values are
provided are not considered in the ordering, although their output
entries are included in the ordered compound
output.](https://www.omg.org/spec/SCE/1.0)

[So, for example, if called with Age = 17, Risk category = "HIGH" and
Debt review = true, the Routing rules table in [Figure
8-19](#_Ref113883603) would return the outputs of all four rules, in the
order 2, 4, 3, 1.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image84.jpg){width="5.409510061242345in"
height="1.7013943569553807in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113883603 .anchor}Figure 8-19: Output order with compound
output](https://www.omg.org/spec/SCE/1.0)

[**Note 1**](https://www.omg.org/spec/SCE/1.0)

[Crosstab tables are unique and complete by definition and therefore do
not need a hit policy.](https://www.omg.org/spec/SCE/1.0)

#### 

[Note 2 The sequence of the rules in a decision table does not influence
the meaning, except in **F**irst tables (single hit) and **R**ule order
tables (multiple hit). These tables should be used with
care.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385187 .anchor}Default output values](https://www.omg.org/spec/SCE/1.0)

[Tables may specify a default output. The default value is underlined in
the list of output values.](https://www.omg.org/spec/SCE/1.0)

## [[[]{#_Toc231385188 .anchor}]{#_Ref123042593 .anchor}Metamodel](https://www.omg.org/spec/SCE/1.0)

[![](media/image86.svg){width="6.772222222222222in"
height="5.115972222222222in"}](https://www.omg.org/spec/SCE/1.0)

> [**Figure 8-20: DecisionTable class
> diagram**](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385189 .anchor}Decision Table metamodel](https://www.omg.org/spec/SCE/1.0)

[The class DecisionTable is used to model a decision
table.](https://www.omg.org/spec/SCE/1.0)

[DecisionTable is a concrete specialization of
Expression.](https://www.omg.org/spec/SCE/1.0)

[An instance of DecisionTable contains a list of rules which are
instances of DecisionRule, a list of inputs which are instances of
InputClause, a list of outputs which are instances of OutputClause, and
a list of annotations which are instances of
RuleAnnotationClause.](https://www.omg.org/spec/SCE/1.0)

[It has a preferredOrientation, which SHALL be one of the
enumerated](https://www.omg.org/spec/SCE/1.0)

[DecisionTableOrientation: Rule-as-Row, Rule-as-Column or CrossTable. An
instance of DecisionTable SHOULD BE represented as specified by its
preferredOrientation, as defined in clause
[8.2.2](#_Ref123035016).](https://www.omg.org/spec/SCE/1.0)

[An instance of DecisionTable has an associated hitPolicy, which SHALL
be one of the enumerated HitPolicy: UNIQUE, FIRST, PRIORITY, ANY,
COLLECT, RULE ORDER, OUTPUT ORDER. The default value for the hitPolicy
attribute is: UNIQUE. In the diagrammatic representation of an instance
of DecisionTable, the hitPolicy is represented as specified in clause
[8.2.11](#_Ref123035051).](https://www.omg.org/spec/SCE/1.0)

[The semantics that is associated with an instance of DecisionTable
depends on its associated hitPolicy, as specified below and in clause
[8.2.11](#_Ref123035070). The hitPolicy attribute of an instance of
DecisionTable is represented as specified in clause
[8.2.11](#_Ref123035077).](https://www.omg.org/spec/SCE/1.0)

[If the hitPolicy associated with an instance of DecisionTable is FIRST
or RULE ORDER, the rules that are associated with the DecisionTable
SHALL be ordered. The ordering is represented by the explicit numbering
of the rules in the diagrammatic representation of the
DecisionTable.](https://www.omg.org/spec/SCE/1.0)

[If the hitPolicy associated with an instance of DecisionTable is
PRIORITY or OUTPUT ORDER, the outputValue s determine the result as
specified in clause
[8.2.11](#_Ref123035087).](https://www.omg.org/spec/SCE/1.0)

[If the hitPolicy that is associated with an instance of DecisionTable
is COLLECT, the DecisionTable MAY have an associated aggregation, which
is one of the enumerated BuiltinAggregator (see clause
[8.2.11](#_Ref123035100)).](https://www.omg.org/spec/SCE/1.0)

[As a kind of Expression, an instance of DecisionTable has a value,
which depends on the outputs of the associated rules, the associated
hitPolicy and the associated aggregation, if any. The value of an
instance of DecisionTable is determined according to the specification
in clause
[10.3.2.10](#_Ref123035134).](https://www.omg.org/spec/SCE/1.0)

[DecisionTable inherits all the attributes and model associations from
Expression. [Table 32](#_Ref113884314) presents the additional
attributes and model associations of the DecisionTable
element.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)             | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=================================================================+=======================================================+
| > [**input**: InputClause                                       | [This attributes lists the instances of InputClause   |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | that compose this                                     |
|                                                                 | DecisionTable.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**output**: OutputClause                                     | [This attributes lists the instances of OutputClause  |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | that compose this                                     |
|                                                                 | DecisionTable.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**annotation**: RuleAnnotationClause                         | [This attribute lists the instances of                |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | RuleAnnotationClause that compose this                |
|                                                                 | DecisionTable.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**rule**: DecisionRule                                       | [This attributes lists the instances of DecisionRule  |
| > \[\*\]](https://www.omg.org/spec/SCE/1.0)                     | that compose this                                     |
|                                                                 | DecisionTable.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**hitPolicy:** HitPolicy](https://www.omg.org/spec/SCE/1.0)  | [The hit policy that determines the semantics of this |
|                                                                 | DecisionTable.](https://www.omg.org/spec/SCE/1.0)     |
|                                                                 |                                                       |
|                                                                 | [Default is:                                          |
|                                                                 | UNIQUE.](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**aggregation:**                                             | [If present, this attribute specifies the aggregation |
| > BuiltinAggregator](https://www.omg.org/spec/SCE/1.0)          | function to be applied to the unordered set of values |
|                                                                 | of the applicable rules to determine the value of     |
|                                                                 | this DecisionTable when the hitPolicy is              |
|                                                                 | COLLECT.](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**preferredOrientation:**](https://www.omg.org/spec/SCE/1.0) | [The preferred orientation for the diagrammatic       |
| >                                                               | representation of this DecisionTable. This            |
| > [Decis ionTableOrientation \[0..                              | DecisionTable SHOULD BE represented as specified by   |
| > 1\]](https://www.omg.org/spec/SCE/1.0)                        | this attribute.](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------------------------+-------------------------------------------------------+
| > [**outputLabel:**                                             | [This attribute gives a description of the decision   |
| > string\[0..1\]](https://www.omg.org/spec/SCE/1.0)             | table output and is often the same as the name of the |
|                                                                 | InformationItem for which the decision table is the   |
|                                                                 | value expression.](https://www.omg.org/spec/SCE/1.0)  |
+-----------------------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113884314 .anchor}Table 32: DecisionTable attributes and
model associations](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385190 .anchor}Decision Table Input and Output metamodel](https://www.omg.org/spec/SCE/1.0)

[In a DecisionTable, an input specifies an inputExpression (the subject)
and a number of inputEntries. An output specifies the name and the
domain of definition of an output value, a number of
outputEntries.](https://www.omg.org/spec/SCE/1.0)

[The class InputClause is used to model a decision table input, and the
class OutputClause is used to model a decision table output, and the
class RuleAnnotationClause is used to model a decision table
annotation.](https://www.omg.org/spec/SCE/1.0)

[An instance of InputClause is made of an optional inputExpression and
an ordered list of inputEntry, which are instances of UnaryTests. An
instance of OutputClause optionally references a typeRef, specifying its
datatype, and it is made of an ordered list of outputEntry, which are
instances of LiteralExpression, and an optional defaultOutputEntry,
which is also an instance of LiteralExpression. An instance of
RuleAnnotationClause contains a name of type
String.](https://www.omg.org/spec/SCE/1.0)

[When a DecisionTable contains more than one OutputClause, each
OutputClause SHALL have a name. When a DecisionTable has a single
OutputClause, the OutputClause SHALL NOT have a name. A
RuleAnnotationClause SHALL have a
name.](https://www.omg.org/spec/SCE/1.0)

[[Table 33](#_Ref113884483), [Table 34](#_Ref113884494) and [Table
35](#_Ref231380125) present the attributes and model associations of
InputClause, OutputClause and RuleAnnotationClause
respectively.](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**inputExpression:** Expression                  | > [The subject of this                                |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > InputClause.](https://www.omg.org/spec/SCE/1.0)     |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**inputValues:** UnaryTests                      | [This attribute contains UnaryTests that constrain    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | the result of the inputExpression of this             |
|                                                     | InputClause.](https://www.omg.org/spec/SCE/1.0)       |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113884483 .anchor}Table 33: InputClause attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**typeRef: String**                              | [The OutputClause of a single output decision table   |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | SHALL NOT specify a typeRef. OutputClauses of a       |
|                                                     | multiple output decision table MAY specify a typeRef. |
|                                                     | A typeRef is the name of the datatype of the output,  |
|                                                     | either an ItemDefinition, a base type in the          |
|                                                     | specified expressionLanguage, or an imported          |
|                                                     | type.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**name:** string                                 | [The OutputClause of a single output decision table   |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | SHALL NOT specify a name. OutputClauses of a multiple |
|                                                     | output decision table SHALL specify a                 |
|                                                     | name.](https://www.omg.org/spec/SCE/1.0)              |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**outputValues:** UnaryTests                     | [This attribute contains UnaryTests that constrain    |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | the result of the outputEntrys of the DecisionRules   |
|                                                     | corresponding to this                                 |
|                                                     | OutputClause.](https://www.omg.org/spec/SCE/1.0)      |
+-----------------------------------------------------+-------------------------------------------------------+
| > [**defaultOutputEntry: Literal**Expression        | [In an Incomplete table, this attribute lists an      |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | instance of LiteralExpression that is selected when   |
|                                                     | no rules match for the decision                       |
|                                                     | table.](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113884494 .anchor}Table 34: OutputClause attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=======================================================+
| > [**name**: string                                 | [RuleAnnotationClause SHALL specify a                 |
| > \[1\]](https://www.omg.org/spec/SCE/1.0)          | name](https://www.omg.org/spec/SCE/1.0)               |
|                                                     |                                                       |
|                                                     | [that is used as the name of the rule annotation      |
|                                                     | column of the containing decision                     |
|                                                     | table.](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref231380125 .anchor}Table 35: RuleAnnotationClause attributes
and model associations](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385191 .anchor}]{#_Ref123030336 .anchor}Decision Rule metamodel](https://www.omg.org/spec/SCE/1.0)

[The class DecisionRule is used to model the rules in a decision table
(see [8.2](#_Ref123035231)).](https://www.omg.org/spec/SCE/1.0)

[An instance of DecisionRule has an ordered list of inputEntry instances
which are instances of UnaryTests, an ordered list of outputEntry
instances, which are instances of LiteralExpression, and an ordered list
of ruleAnnotations.](https://www.omg.org/spec/SCE/1.0)

[In a tabular representation of the containing instance of
DecisionTable, the representation of an instance
of](https://www.omg.org/spec/SCE/1.0)

[DecisonRule depends on the orientation of the decision table. For
instance, if the decision table is represented horizontally (rules as
row, see [8.2.2](#_Ref123035258)), instances of DecisionRule are
represented as rows, with all the inputEntrys represented on the left of
all the outputEntrys, and all the ruleAnnotations represented to their
right.](https://www.omg.org/spec/SCE/1.0)

[By definition, a DecisionRule element that has no inputEntrys is always
applicable. Otherwise, an instance of DecisionRule is said to be
*applicable* if and only if, all of the DecisionTable's inputExpression
values satisfy their corresponding
inputEntry.](https://www.omg.org/spec/SCE/1.0)

[The inputEntrys are matched in arbitrary
order.](https://www.omg.org/spec/SCE/1.0)

[The inputEntry elements SHALL be in the same order as the containing
DecisionTable\'s inputs.](https://www.omg.org/spec/SCE/1.0)

[The *i^th^* inputExpression must satisfy the *i^th^* inputEntry for all
inputEntrys in order for the DecisionRule to *match*, as defined in
section [8.1](#_Ref193111248).](https://www.omg.org/spec/SCE/1.0)

[The outputEntry elements SHALL be in the same order as the containing
DecisionTable\'s outputs. The *i^th^* outputEntry SHALL be consistent
with the typeRef of the *i^th^*
OutputClause.](https://www.omg.org/spec/SCE/1.0)

[The ruleAnnotation elements SHALL be in the same order as the
containing DecisionTable\'s annotations. The *ith* ruleAnnotation refers
to the *i^th^* RuleAnnotationClause.](https://www.omg.org/spec/SCE/1.0)

[[Table 36](#_Ref113884580) presents the attributes and model
associations of the DecisionRule element; [Table 36](#_Ref113884580)
presents the attributes and model associations of the RuleAnnotation
element.](https://www.omg.org/spec/SCE/1.0)

+----------------------------------------------------------+------------------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0)      | [**Description**](https://www.omg.org/spec/SCE/1.0)        |
+==========================================================+============================================================+
| > [**inputEntry:**                                       | > [The instances of UnaryTests that specify the input      |
| > UnaryTests\[0..\*\]](https://www.omg.org/spec/SCE/1.0) | > conditions that this DecisionRule must match for the     |
|                                                          | > corresponding (by index)                                 |
|                                                          | > inputExpression.](https://www.omg.org/spec/SCE/1.0)      |
+----------------------------------------------------------+------------------------------------------------------------+
| > [**outputEntry:** LiteralExpression                    | > [A list of the instances of LiteralExpression that       |
| > \[1..\*\]](https://www.omg.org/spec/SCE/1.0)           | > compose the output components of this                    |
|                                                          | > DecisionRule.](https://www.omg.org/spec/SCE/1.0)         |
+----------------------------------------------------------+------------------------------------------------------------+
| > [**annotationEntry**: RuleAnnotation                   | > [A list of the instances of RuleAnnotation that compose  |
| > \[0..\*\]](https://www.omg.org/spec/SCE/1.0)           | > the annotations of this DecisionRule and match the       |
|                                                          | > corresponding (by index) instances of                    |
|                                                          | > RuleAnnotationClause.](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------+------------------------------------------------------------+

: [[]{#_Ref113884580 .anchor}Table 36: DecisionRule attributes and model
associations](https://www.omg.org/spec/SCE/1.0)

[**Table 37: RuleAnnotation attributes and model
associations**](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------------+-----------------------------------------------------+
| > [**Attribute**](https://www.omg.org/spec/SCE/1.0) | [**Description**](https://www.omg.org/spec/SCE/1.0) |
+=====================================================+=====================================================+
| > [text: string                                     | > [The text of the                                  |
| > \[0..1\]](https://www.omg.org/spec/SCE/1.0)       | > RuleAnnotation](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------------------+-----------------------------------------------------+

## [[]{#_Toc231385192 .anchor}Examples](https://www.omg.org/spec/SCE/1.0)

[[Table 38](#_Ref126935043) provides examples for the various types of
decision table discussed in this section. Further examples may be found
in clause [12.1.4](#the-decision-logic-level), in the context of a
complete example of a **DMN** decision
model.](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------+-------------------------------------------------------------+
| [Single Hit](https://www.omg.org/spec/SCE/1.0)   | [![](media/image87.PNG){width="5.08in"                      |
|                                                  | height="5.01in"}](https://www.omg.org/spec/SCE/1.0)         |
| [**U**nique](https://www.omg.org/spec/SCE/1.0)   |                                                             |
+==================================================+=============================================================+
| [Single Hit](https://www.omg.org/spec/SCE/1.0)   | [![Table Description automatically                          |
|                                                  | generated](media/image88.PNG){width="5.49in"                |
| [**A**ny](https://www.omg.org/spec/SCE/1.0)      | height="1.59in"}](https://www.omg.org/spec/SCE/1.0)         |
+--------------------------------------------------+-------------------------------------------------------------+
| [Single Hit](https://www.omg.org/spec/SCE/1.0)   | [![Table Description automatically                          |
|                                                  | generated](media/image89.PNG){width="5.55in"                |
| [**P**riority](https://www.omg.org/spec/SCE/1.0) | height="1.64in"}](https://www.omg.org/spec/SCE/1.0)         |
+--------------------------------------------------+-------------------------------------------------------------+
| [Single Hit](https://www.omg.org/spec/SCE/1.0)   | [![Table Description automatically                          |
|                                                  | generated](media/image90.PNG){width="5.54in"                |
| [**F**irst](https://www.omg.org/spec/SCE/1.0)    | height="3.19in"}](https://www.omg.org/spec/SCE/1.0)         |
+--------------------------------------------------+-------------------------------------------------------------+
| [Multiple Hit](https://www.omg.org/spec/SCE/1.0) | [![A screenshot of a computer Description automatically     |
|                                                  | generated with medium                                       |
| [**N**o order](https://www.omg.org/spec/SCE/1.0) | confidence](media/image91.PNG){width="4.89in"               |
|                                                  | height="1.33in"}](https://www.omg.org/spec/SCE/1.0)         |
+--------------------------------------------------+-------------------------------------------------------------+
| [Multiple Hit](https://www.omg.org/spec/SCE/1.0) | [![Table Description automatically                          |
|                                                  | generated](media/image92.PNG){width="3.78in"                |
| [**O**utput                                      | height="2.51in"}](https://www.omg.org/spec/SCE/1.0)         |
| order](https://www.omg.org/spec/SCE/1.0)         |                                                             |
+--------------------------------------------------+-------------------------------------------------------------+
| [Multiple Hit](https://www.omg.org/spec/SCE/1.0) | [![Table Description automatically                          |
|                                                  | generated](media/image93.PNG){width="5.27in"                |
| [**R**ule                                        | height="1.94in"}](https://www.omg.org/spec/SCE/1.0)         |
| order](https://www.omg.org/spec/SCE/1.0)         |                                                             |
+--------------------------------------------------+-------------------------------------------------------------+

: [[]{#_Ref126935043 .anchor}Table 38: Examples of decision
tables](https://www.omg.org/spec/SCE/1.0)

[This page intentionally left blank.](https://www.omg.org/spec/SCE/1.0)

[\
](https://www.omg.org/spec/SCE/1.0)



# Simple Expression Language (S-FEEL)


## [[]{#_Toc231385194 .anchor}Introduction](https://www.omg.org/spec/SCE/1.0)

[**DMN** defines the friendly enough expression language (FEEL) for the
purpose of giving standard executable semantics to many kinds of
expressions in decision model (see
[10](#_Ref123035677)).](https://www.omg.org/spec/SCE/1.0)

[This section defines a simple subset of FEEL, S-FEEL, for the purpose
of giving standard executable semantics to decision models that use only
simple expressions: in particular, decision models where the decision
logic is modeled mostly or only using decision
tables.](https://www.omg.org/spec/SCE/1.0)

[Experience with DMN since its release has shown that few if any
complete decision models can be defined using S- FEEL. Individual
decision tables can be defined using only S-FEEL but within a decision
model there is generally at least one decision that requires FEEL.
Developers and users are therefore encouraged to use and implement the
full FEEL specification rather than the S-FEEL
subset.](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385195 .anchor}S-FEEL syntax](https://www.omg.org/spec/SCE/1.0)

[The syntax for the S-FEEL expressions used in this section is specified
in the EBNF below: it is a subset of the FEEL syntax specified in clause
[10.3.1.2](#_Ref123028648).](https://www.omg.org/spec/SCE/1.0)

[**Grammar rules**:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  a.  
    b.  
    c.  
    d.  

<!-- -->

3.  
4.  
5.  a.  
    b.  
6.  
7.  
8.  
9.  
10. 
11. 
12. a.  
    b.  
    c.  
13. 
14. 
15. 
16. 
17. 
18. 
19. 
20. 
21. 
22. 
23. 
24. 
25. 
26. 
27. 
28. 
29. 
30. 
31. 
32. 
33. 
34. 
35. 
36. 
37. 

## [expression = simple expression ; arithmetic expression = addition \| subtraction \| multiplication \| division \| exponentiation \| arithmetic negation ; simple expression = arithmetic expression \| simple value \| comparison ; simple expressions = simple expression , { \",\" , simple expression } ; simple positive unary test = \[ \"\<\" \| \"\<=\" \| \"\>\" \| \"\>=\" \] , endpoint \| interval ; interval = ( open interval start \| closed interval start ) , endpoint , \"..\" , endpoint , ( open interval end \| closed interval end ) ; open interval start = \"(\" \| \"\]\" ; closed interval start = \"\[\" ; open interval end = \")\" \| \"\[\" ; closed interval end = \"\]\" ; simple positive unary tests = simple positive unary test , { \",\" , simple positive unary test } ; simple unary tests = simple positive unary tests \| \"not\", \"(\", simple positive unary tests, \")\" \| \"-\"; endpoint = simple value ; simple value = qualified name \| simple literal ; qualified name = name , { \".\" , name } ; addition = expression , \"+\" , expression ; subtraction = expression , \"-\" , expression ; multiplication = expression , \"\*\" , expression ; division = expression , \"/\" , expression ; exponentiation = expression, \"\*\*\", expression ; arithmetic negation = \"-\" , expression ; name = name start , { name part \| additional name symbols } ; name start = name start char, { name part char } ; name part = name part char , { name part char } ; name start char = \"?\" \| \[A-Z\] \| \"\_\" \| \[a-z\] \| \[\\uC0-\\uD6\] \| \[\\uD8-\\uF6\] \| \[\\uF8-\\u2FF\] \| \[\\u370-\\u37D\] \| \[\\u37F\\u1FFF\] \| \[\\u200C-\\u200D\] \| \[\\u2070-\\u218F\] \| \[\\u2C00-\\u2FEF\] \| \[\\u3001-\\uD7FF\] \| \[\\uF900-\\uFDCF\] \| \[\\uFDF0-\\uFFFD\] \| \[\\u1 0000-\\uEFFFF\] ; name part char = name start char \| digit \| \\uB7 \| \[\\u0300-\\u036F\] \| \[\\u203F-\\u2040\] ; additional name symbols = \".\" \| \"/\" \| \"-\" \| \"'\" \| \"+\" \| \"\*\" ; simple literal = numeric literal \| string literal \| boolean literal \| date time literal ; string literal = \"\"\", { character -- (\"\"\" \| vertical space) \| string escape sequence}, \"\"\" ; boolean literal = \"true\" \| \"false\" ; numeric literal = \[ \"-\" \] , ( digits , \[ \".\", digits \] \| \".\" , digits ) ; digit = \[0-9\] ; digits = digit , {digit} ; 34 date time literal = (\"date\" \| \"time\" \| \"duration\" \| \"days and time duration\" \| \"years and months duration\") , \"(\" , string literal , \")\" ;comparison = expression , ( \"=\" \| \"!=\" \| \"\<\" \| \"\<=\" \| \"\>\" \| \"\>=\" ) , expression ; white space = vertical space \| \\u0009 \| \\u0020 \| \\u0085 \| \\u00A0 \| \\u1 680 \| \\u1 80E \| \[\\u2000-\\u200B\] \| \\u2028 \| \\u2029 \| \\u202F \| \\u205F \| \\u3000 \| \\uFEFF ; vertical space = \[\\u000A-\\u000D\]; string escape sequence = \"\\\'\" \| \"\\\"\" \| \"\\\\\" \| \"\\n\" \| \"\\r\" \| \"\\t\" \| \"\\u\", hex digit, hex digit, hex digit, hex digit; []{#_Toc231385196 .anchor}S-FEEL data types](https://www.omg.org/spec/SCE/1.0)

[S-FEEL supports all FEEL data types: *number*, *string*, *boolean*,
*days and time duration*, *years and months duration*, *time,* and
*date*, although with a simplified definition for some of
them.](https://www.omg.org/spec/SCE/1.0)

[S-FEEL *number* has the same literal and values spaces as the XML
Schema decimal datatype. Implementations are allowed to limit precision
to 34 decimal digits and to round toward the nearest neighbor with ties
favoring the even neighbor. Notice that "*precision is not reflected in
this value space: the number 2.0 is not distinct from the number 2.00*"
\[XML Schema\]. Notice, also, that this value space is totally ordered.
The definition of S-FEEL *number* is a simplification over the
definition of FEEL *number*.](https://www.omg.org/spec/SCE/1.0)

[S-FEEL supports FEEL *string* and FEEL *Boolean*: FEEL *string* has the
same literal and values spaces as the Java String and XML Schema string
datatypes. FEEL *boolean* has the same literal and values spaces as the
Java Boolean and XML Schema Boolean
datatypes.](https://www.omg.org/spec/SCE/1.0)

> [S-FEEL supports the FEEL *time* data type. The lexical and value
> spaces of FEEL *time* are the literal and value spaces of the XML
> Schema time datatype. Notice that "*since the lexical representation
> allows an optional time zone indicator, time values are partially
> ordered because it may not be able to determine the order of two
> values one of which has a time zone and the other does not. Pairs of
> time values with or without time zone indicators are totally ordered*"
> \[XSD\].](https://www.omg.org/spec/SCE/1.0)

[S-FEEL does not support FEEL date and time. However, it supports the
*date* type, which is like FEEL *date and time* with hour, minute, and
second required to be absent. The lexical and value spaces of FEEL
*date* are the literal and value spaces of the XML Schema date
datatype.](https://www.omg.org/spec/SCE/1.0)

[S-FEEL supports the FEEL *days and time duration* and *years and months
duration* datatypes. FEEL *days and time duration* and *years and months
duration* have the same literal and value spaces as the XPath Data Model
dayTimeDuration and yearMonthDuration datatypes, respectively. That is,
FEEL *days and time duration* is derived from the XML Schema duration
datatype by restricting its lexical representation to contain only the
days, hours, minutes, and seconds components, and FEEL *years and months
duration* is derived from the XML Schema duration datatype by
restricting its lexical representation to contain only the year and
month components.](https://www.omg.org/spec/SCE/1.0)

[The FEEL data types are specified in detail in clause
[10.3.2.2](#_Ref123035778).](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385197 .anchor}S-FEEL semantics](https://www.omg.org/spec/SCE/1.0)

[S-FEEL contains only a limited set of basic features that are common to
most expression and programming languages, and on the semantics of which
most expression and programming languages
agree.](https://www.omg.org/spec/SCE/1.0)

[The semantics of S-FEEL expressions are defined in this section, in
terms of the semantics of the XML Schema datatypes and the XQuery 3.1
and XPath 3.1 Data Model datatypes, and in terms of the corresponding
functions and operators defined by XQuery 3.1 and XPath 3.1 Functions
and Operators (prefixed by "op:" below). A complete standalone
specification of the semantics is to be found in clause
[10.3.2](#_Ref124256621), as part of the definition of FEEL. Within the
scope of S- FEEL, the two definitions are equivalent and equally
normative.](https://www.omg.org/spec/SCE/1.0)

[Arithmetic addition and subtraction (grammar rule 2.a) have the same
semantics as:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 

[op:numeric-add and op:numeric-subtract, when its two operands are
numbers.op:add-yearMonthDurations and op:subtract-yearMonthDurations,
when the two operands are years and months
durations.op:add-dayTimeDuration and subtract:dayTimeDurations, when the
two operands are days and time
durations.op:add-yearMonthDuration-to-date and
op:subtract-yearMonthDuration-from-date, when the first operand is a
years and months duration, and the second operand is a
date.op:add-dayTimeDuration-to-date and
op:subtract-dayTimeDuration-from-date, when the first operand is a days
and time duration, and the second operand is a
date.op:add-dayTimeDuration-to-time and
op:subtract-dayTimeDuration-from-time, when the first operand is a days
and time duration, and the second operand is a time. In addition,
arithmetic subtraction has the semantics of op:subtract-dates or
op:subtract-times, when the two operands are dates or times,
respectively.](https://www.omg.org/spec/SCE/1.0)

[Arithmetic addition and subtraction are not defined in other
cases.](https://www.omg.org/spec/SCE/1.0)

[Arithmetic multiplication and division (grammar rule 2.b) have the same
semantics as defined for op:numeric-multiply and op:numeric-divide,
respectively, when the two operands are numbers. They are not defined
otherwise.](https://www.omg.org/spec/SCE/1.0)

[Arithmetic exponentiation (grammar rule 2.c) is defined as the result
of raising the first operand to the power of the second operand, when
the two operands are numbers. It is not defined in other
cases.](https://www.omg.org/spec/SCE/1.0)

[Arithmetic negation (grammar rule 2.d) is defined only when its operand
is a number: in that case, its semantics is according to the
specification of
op:numeric-unary-minus.](https://www.omg.org/spec/SCE/1.0)

[Comparison operators (grammar rule 35) between numbers are defined
according to the specification of op:numericequal, op-numeric-less-than
and op:numeric-greater-than, comparisons between dates are defined
according to the specification of op:date-equal, op:date-less-than and
op:date-greater-than; comparisons between times are defined according to
the specification of op:time-equal, op:time-less-than and
op:time-greater-than; comparisons between years and months durations are
defined according to the specification of
op:duration-equal,](https://www.omg.org/spec/SCE/1.0)

[op:yearMonthDuration-less-than and op:year-MonthDuration-greater-than;
comparisons between days and time durations are defined according to the
specification of op:duration-equal, op:dayTimeDuration-less-than and
op:dayTimeDuration-greater-than.](https://www.omg.org/spec/SCE/1.0)

[String and Booleans can only be compared for equality: the semantics of
strings and Booleans equality is as defined in the specification of
fn:codepoint-equal and op:Boolean-equal,
respectively.](https://www.omg.org/spec/SCE/1.0)

[Comparison operators are defined only when the two operands have the
same type, except for years and months duration and days and time
duration, which can be compared for equality. Notice, however, that
"*with the exception of the zero- length duration, no instance of
xs:dayTimeDuration can ever be equal to an instance of
xs:yearMonthDuration*." \[XFO\].](https://www.omg.org/spec/SCE/1.0)

[Given an expression o to be tested and two endpoint e1 and
e2:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[is in the interval (e1..e2), also notated \]e1..e2\[, if and only if o
\> e1 and o \< e1 is in the interval (e1..e2\], also notated \]e1..e2\],
if and only if o \> e1 and o ≤ e2 is in the interval \[e1..e2\] if and
only if o ≥ e1 and o ≤ e2 is in the interval \[e1..e2), also notated
\[e1..e2\[, if and only if o ≥ e1 and o \< e2 An expression to be tested
satisfies an instance of simple unary tests (grammar rule 12) if and
only if, either the expression is a list and the expression satisfies at
least one simple unitary test in the list, or the simple unitary tests
is "-".](https://www.omg.org/spec/SCE/1.0)

## [[]{#_Toc231385198 .anchor}Use of S-FEEL expressions](https://www.omg.org/spec/SCE/1.0)

[This section summarizes which kinds of S-FEEL expressions are allowed
in which role when the expression language is
S-FEEL.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385199 .anchor}Item definitions](https://www.omg.org/spec/SCE/1.0)

[The expression that defines an **allowed value** SHALL be an instance
of *simple unary tests* (grammar rule 12), where only the values in the
defined or referenced type that satisfy the test are allowed
values.](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385200 .anchor}Invocations](https://www.omg.org/spec/SCE/1.0)

[In the bindings of an invocation, the **binding formula** SHALL be a
*simple expression* (grammar rule 3).](https://www.omg.org/spec/SCE/1.0)

### [[]{#_Toc231385201 .anchor}Decision tables](https://www.omg.org/spec/SCE/1.0)

[Each **input expression** SHALL be a *simple expression* (grammar rule
3).](https://www.omg.org/spec/SCE/1.0)

[Each list of **input values** SHALL be an instance of *simple unary
tests* (grammar rule 12).](https://www.omg.org/spec/SCE/1.0)

[Each list of **output values** SHALL be an instance of *simple unary
tests* (grammar rule 12). Each **input entry** SHALL be an instance of
*simple unary tests* (grammar rule
12).](https://www.omg.org/spec/SCE/1.0)

[Each **output entry** SHALL be a *simple expression* (grammar rule
3).](https://www.omg.org/spec/SCE/1.0)

[This page intentionally left blank.](https://www.omg.org/spec/SCE/1.0)



# Expression Language (FEEL)


## [[]{#_Toc231385203 .anchor}Introduction](https://www.omg.org/spec/SCE/1.0)

[In **DMN**, all decision logic is represented as *boxed expressions*.
Clause [7.2](#_Ref123035922) introduced the concept of the boxed
expression and defined two simple kinds: boxed literal expressions and
boxed invocations. Clause [8](#_Ref122607333) defined decision tables, a
very important kind of boxed expression*.* This section completes the
graphical notation for decision logic, by defining other kinds of boxed
expressions.](https://www.omg.org/spec/SCE/1.0)

[The expressions \'in the boxes\' are FEEL expressions. FEEL stands for
Friendly Enough Expression Language, and it has the following
features:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[Side-effect free Simple data model with numbers, dates, strings, lists,
and contexts Simple syntax designed for a wide audience Three-valued
logic (**true, false, null**) This section also completely specifies the
syntax and semantics of FEEL. The syntax is specified as a grammar
([10.3.1](#_Ref124256858)). The subset of the syntax intended to be
rendered graphically as a boxed expression is also specified as a
meta-model ([10.5](#metamodel-3)).](https://www.omg.org/spec/SCE/1.0)

[FEEL has two roles in **DMN**:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  

## [As a textual notation in the boxes of boxed expressions such as decision tables. As a slightly larger language to represent the logic of expressions and DRGs for the main purpose of composing the semantics in a simple and uniform way. [[]{#_Toc231385204 .anchor}]{#_Ref122605781 .anchor}Notation](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385205 .anchor}]{#_Ref123126534 .anchor}Boxed Expressions](https://www.omg.org/spec/SCE/1.0)

[This section builds on the generic notation for decision logic and
boxed expressions defined in clause
[7.2](#_Ref123036023).](https://www.omg.org/spec/SCE/1.0)

[We define a graphical notation for decision logic called **boxed
expressions**. This notation serves to decompose the decision logic
model into small pieces that can be associated with DRG artifacts. The
DRG plus the boxed expressions form a complete, mostly graphical
language that completely specifies Decision
Models.](https://www.omg.org/spec/SCE/1.0)

[A boxed expression is either:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 
- 
- 
- 
- 

[a decision table a boxed FEEL expression a boxed invocation a boxed
context a boxed list a relation a boxed function a boxed conditional a
boxed filter, or a boxed iterator Boxed expressions are defined
recursively, i.e., boxed expressions can contain other boxed
expressions. The top-level boxed expression corresponds to the decision
logic of a single DRG artifact. This boxed expression SHALL have a name
box that contains the name of the DRG artifact. The name box may be
attached in a single box on top, as shown in [Figure
10-1](#_Ref113885129):](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image94.jpg){width="2.0994663167104113in"
height="0.6777865266841645in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113885129 .anchor}Figure 10-1: Boxed
expression](https://www.omg.org/spec/SCE/1.0)

[Alternatively, the name box and expression box can be separated by
white space and connected on the left side with a line, as shown in
[Figure 10- 2](#_Ref113885182):](https://www.omg.org/spec/SCE/1.0)

[![A picture containing table Description automatically
generated](media/image95.jpg){width="2.1310411198600177in"
height="1.1180555555555556in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113885182 .anchor}Figure 10- 2: Boxed expression with separated
name and expression boxes](https://www.omg.org/spec/SCE/1.0)

[Graphical tools are expected to support appropriate graphical links,
for example, clicking on a decision shape opens a decision
table.](https://www.omg.org/spec/SCE/1.0)

#### [Decision Tables](https://www.omg.org/spec/SCE/1.0)

[The executable decision tables defined here use the same notation as
the decision tables defined in Clause [8](#_Ref123036114). Their
execution semantics is defined in clause
[10.3.2.10](#_Ref123035134).](https://www.omg.org/spec/SCE/1.0)

#### [Boxed FEEL expression](https://www.omg.org/spec/SCE/1.0)

[A **boxed FEEL expression** is any FEEL expression *e,* as defined by
the FEEL grammar (clause [10.3.1](#_Ref123036176)), in a table cell, as
shown in [Figure
10-3](#_Ref113886574):](https://www.omg.org/spec/SCE/1.0)

[![A picture containing diagram Description automatically
generated](media/image96.jpg){width="0.5557600612423447in"
height="0.5138943569553805in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113886574 .anchor}Figure 10-3: Boxed FEEL
expression](https://www.omg.org/spec/SCE/1.0)

[The meaning of a boxed expression containing *e* is **FEEL(***e,*
**s)**, where **s** is the scope. The scope includes the context derived
from the containing DRD as described in
[10.4](#execution-semantics-of-decision-services), and any boxed
contexts containing *e*.](https://www.omg.org/spec/SCE/1.0)

[It is usually good practice to make *e* relatively simple and compose
small boxed expressions into larger boxed
expressions.](https://www.omg.org/spec/SCE/1.0)

#### [Boxed Invocation](https://www.omg.org/spec/SCE/1.0)

[The syntax for boxed invocation is described in clause
[7.2.3](#_Ref123036337). This syntax may be used to invoke any function
(e.g., business knowledge model, FEEL built-in function, boxed function
definition).](https://www.omg.org/spec/SCE/1.0)

[The box labeled \'invoked business knowledge model\' can be any boxed
expression whose value is a function, as shown in [\
Figure **10-4**](#_Ref113886639):](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------------------------+----------------------+
| > [**Name**](https://www.omg.org/spec/SCE/1.0)                     |                      |
+:========================================:+:=======================:+:====================:+
| > [function-valued expression](https://www.omg.org/spec/SCE/1.0)                          |
+------------------------------------------+------------------------------------------------+
| > [parameter                             | > [binding expression                          |
| > 1](https://www.omg.org/spec/SCE/1.0)   | > 1](https://www.omg.org/spec/SCE/1.0)         |
+------------------------------------------+------------------------------------------------+
| > [parameter                             | > [binding expression                          |
| > 2](https://www.omg.org/spec/SCE/1.0)   | > 2](https://www.omg.org/spec/SCE/1.0)         |
+------------------------------------------+------------------------------------------------+
| > [...](https://www.omg.org/spec/SCE/1.0)                                                 |
+------------------------------------------+------------------------------------------------+
| > [parameter                             | > [binding expression                          |
| > *n*](https://www.omg.org/spec/SCE/1.0) | > *n*](https://www.omg.org/spec/SCE/1.0)       |
+------------------------------------------+------------------------------------------------+

: [[]{#_Ref113886639 .anchor}\
Figure 10-4: Boxed invocation](https://www.omg.org/spec/SCE/1.0)

[The boxed syntax maps to the textual syntax defined by grammar rules
38, 39, 40, 41. Boxed invocation uses named parameters. Positional
invocation can be achieved using a boxed expression containing a textual
positional invocation.](https://www.omg.org/spec/SCE/1.0)

[The boxed syntax requires at least one parameter. A parameterless
function must be invoked using the textual syntax, e.g., as shown in
[Figure 10-5](#_Ref123036393).](https://www.omg.org/spec/SCE/1.0)

> [function-valued expression()](https://www.omg.org/spec/SCE/1.0)

[\
[]{#_Ref123036393 .anchor}Figure 10-5: Parameterless
function](https://www.omg.org/spec/SCE/1.0)

[Formally, the meaning of a boxed invocation is given by the semantics
of the equivalent textual invocation, *e.g.,* **function-valued
expression (**parameter1**: binding expression1,** parameter2**: binding
expression2, \...)**.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123126572 .anchor}Boxed Context](https://www.omg.org/spec/SCE/1.0)

[A **boxed context** is a collection of *n* (name, value) pairs with an
optional result value. The names SHALL be distinct within a context.
Each pair is called a context entry. Context entries may be separated by
whitespace and connected with a line on the left (top). The intent is
that all the entries of a context should be easily identified by looking
down the left edge of a vertical context or across the top edge of a
horizontal context. Cells SHALL be arranged in one of the following ways
(see [Figure 10-6](#_Ref113887331), [Figure
10-7](#_Ref113887341)):](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------+------------------------------------------+
| > [Name                                  | > [Value                                 |
| > 1](https://www.omg.org/spec/SCE/1.0)   | > 1](https://www.omg.org/spec/SCE/1.0)   |
+==========================================+==========================================+
|                                                                                     |
+------------------------------------------+------------------------------------------+
| > [Name                                  | > [Value                                 |
| > 2](https://www.omg.org/spec/SCE/1.0)   | > 2](https://www.omg.org/spec/SCE/1.0)   |
+------------------------------------------+------------------------------------------+
| > [Name                                  | > [Value                                 |
| > *n*](https://www.omg.org/spec/SCE/1.0) | > *n*](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------+------------------------------------------+
| > [Result](https://www.omg.org/spec/SCE/1.0)                                        |
+-------------------------------------------------------------------------------------+

[[]{#_Ref113887331 .anchor}Figure 10-6: Vertical
context](https://www.omg.org/spec/SCE/1.0)

+----------------------------------------+----------------------------------------+------------------------------------------+--+----------------------------------------------+
| > [Name                                | > [Name                                | > [Name                                  |  | > [Result](https://www.omg.org/spec/SCE/1.0) |
| > 1](https://www.omg.org/spec/SCE/1.0) | > 2](https://www.omg.org/spec/SCE/1.0) | > *n*](https://www.omg.org/spec/SCE/1.0) |  |                                              |
+----------------------------------------+----------------------------------------+------------------------------------------+--+                                              |
|                                        |                                        |                                          |  |                                              |
+:======================================:+:======================================:+:========================================:+==+==============================================+
| > [Value                               | > [Value                               | > [Value                                 |  |                                              |
| > 1](https://www.omg.org/spec/SCE/1.0) | > 2](https://www.omg.org/spec/SCE/1.0) | > *n*](https://www.omg.org/spec/SCE/1.0) |  |                                              |
+----------------------------------------+----------------------------------------+------------------------------------------+--+----------------------------------------------+

[[]{#_Ref113887341 .anchor}Figure 10-7: Horizontal
context](https://www.omg.org/spec/SCE/1.0)

[The context entries in a context are often used to decompose a complex
expression into simpler expressions, each with a name. These context
entries may be thought of as intermediate results. For example, contexts
without a final Result box are useful for representing case data (see
[Figure 10-8](#_Ref113887355)).](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------------+---------------------------+---------------------------+------------------------------------------------+
| > [**Applicant                                         |                           |                           |                                                |
| > Data**](https://www.omg.org/spec/SCE/1.0)            |                           |                           |                                                |
+========================================================+===========================+===========================+================================================+
| > [Age](https://www.omg.org/spec/SCE/1.0)              | > [51](https://www.omg.org/spec/SCE/1.0)              |                                                |
+--------------------------------------------------------+-------------------------------------------------------+------------------------------------------------+
| > [MaritalStatus](https://www.omg.org/spec/SCE/1.0)    | > [\"M\"](https://www.omg.org/spec/SCE/1.0)           |                                                |
+--------------------------------------------------------+-------------------------------------------------------+------------------------------------------------+
| > [EmploymentStatus](https://www.omg.org/spec/SCE/1.0) | > [\"EMPLOYED\"](https://www.omg.org/spec/SCE/1.0)    |                                                |
+--------------------------------------------------------+-------------------------------------------------------+------------------------------------------------+
| > [ExistingCustomer](https://www.omg.org/spec/SCE/1.0) | > [false](https://www.omg.org/spec/SCE/1.0)           |                                                |
+--------------------------------------------------------+-------------------------------------------------------+------------------------------------------------+
| > [Monthly](https://www.omg.org/spec/SCE/1.0)          | > [Income](https://www.omg.org/spec/SCE/1.0)          | > [10000.00](https://www.omg.org/spec/SCE/1.0) |
|                                                        +-------------------------------------------------------+------------------------------------------------+
|                                                        | > [Repayments](https://www.omg.org/spec/SCE/1.0)      | > [2500.00](https://www.omg.org/spec/SCE/1.0)  |
|                                                        +-------------------------------------------------------+------------------------------------------------+
|                                                        | > [Expenses](https://www.omg.org/spec/SCE/1.0)        | > [3000.00](https://www.omg.org/spec/SCE/1.0)  |
+--------------------------------------------------------+-------------------------------------------------------+------------------------------------------------+

[[]{#_Ref113887355 .anchor}Figure 10-8: Use of context
entries](https://www.omg.org/spec/SCE/1.0)

[Contexts with a final result box are useful for representing
calculations (see [Figure
10-9](#_Ref113962856)).](https://www.omg.org/spec/SCE/1.0)

+-------------------------------------------------------------------------------+--------------------------+
| > [**Eligibility**](https://www.omg.org/spec/SCE/1.0)                         |                          |
+=================================================+=============================+==========================+
| > [Age](https://www.omg.org/spec/SCE/1.0)       | > [Applicant. Age](https://www.omg.org/spec/SCE/1.0)   |
+-------------------------------------------------+--------------------------------------------------------+
| > [Monthly                                      | > [Applicant. Monthly.                                 |
| > Income](https://www.omg.org/spec/SCE/1.0)     | > Income](https://www.omg.org/spec/SCE/1.0)            |
+-------------------------------------------------+--------------------------------------------------------+
| > [Pre-Bureau Risk                              | > [Affordability. Pre-Bureau Risk                      |
| > Category](https://www.omg.org/spec/SCE/1.0)   | > Category](https://www.omg.org/spec/SCE/1.0)          |
+-------------------------------------------------+--------------------------------------------------------+
| > [Installment                                  | > [Affordability. Installment                          |
| > Affordable](https://www.omg.org/spec/SCE/1.0) | > Affordable](https://www.omg.org/spec/SCE/1.0)        |
+-------------------------------------------------+--------------------------------------------------------+
| > [if Pre-Bureau Risk Category = \"DECLINE\" or](https://www.omg.org/spec/SCE/1.0)                       |
| >                                                                                                        |
| > [Installment Affordable = false or](https://www.omg.org/spec/SCE/1.0)                                  |
| >                                                                                                        |
| > [Age \< 18 or](https://www.omg.org/spec/SCE/1.0)                                                       |
| >                                                                                                        |
| > [Monthly Income \< 100 then \"INELIGIBLE\" else \"ELIGIBLE\"](https://www.omg.org/spec/SCE/1.0)        |
+----------------------------------------------------------------------------------------------------------+

: [\
[]{#_Ref113962856 .anchor}Figure 10-9: Use of final result
box](https://www.omg.org/spec/SCE/1.0)

[When decision tables are (non-result) context entries, the output cell
can be used to name the entry, thus saving space. Any format decision
table can be used in a vertical context. A jagged right edge is allowed.
Whitespace between context entries may be helpful. See [Figure
10-10](#_Ref113962843).](https://www.omg.org/spec/SCE/1.0)

[\
[]{#_Ref113962843 .anchor}Figure 10-10: Vertical context with decision
table entry](https://www.omg.org/spec/SCE/1.0)

[Color is suggested. The names SHALL be legal FEEL names. The values and
optional result are boxed
expressions.](https://www.omg.org/spec/SCE/1.0)

[Boxed contexts may have a decision table as the result and use the
named context entries to compute the inputs and give them names. For
example (see [Figure
10-11](#_Ref113962939)):](https://www.omg.org/spec/SCE/1.0)

> [**Post-Bureau Risk Category**](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                          |                                                                                                                                                       |
+==========================================+===============================================+========================+========================+====================================================+================================================+
| > [Existing Customer](https://www.omg.org/spec/SCE/1.0)                                  |                        | > [Applicant. ExistingCustomer](https://www.omg.org/spec/SCE/1.0)                                                            |
+------------------------------------------------------------------------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------+
| > [Credit Score](https://www.omg.org/spec/SCE/1.0)                                       |                        | > [Report. CreditScore](https://www.omg.org/spec/SCE/1.0)                                                                    |
+------------------------------------------------------------------------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------+
| > [Application Risk Score](https://www.omg.org/spec/SCE/1.0)                             |                        | > [Affordability Model(Applicant, Product).](https://www.omg.org/spec/SCE/1.0)                                               |
|                                                                                          |                        | >                                                                                                                            |
|                                                                                          |                        | > [Application Risk Score](https://www.omg.org/spec/SCE/1.0)                                                                 |
+------------------------------------------------------------------------------------------+------------------------+------------------------------------------------------------------------------------------------------------------------------+
|                                                                                          |                                                                                                                                                       |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [U](https://www.omg.org/spec/SCE/1.0)  | > [Existing                                   | > [Application Risk                             | > [Credit Score](https://www.omg.org/spec/SCE/1.0) | > [Post-Bureau Risk                            |
|                                          | > Customer](https://www.omg.org/spec/SCE/1.0) | > Score](https://www.omg.org/spec/SCE/1.0)      |                                                    | > Category](https://www.omg.org/spec/SCE/1.0)  |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [1](https://www.omg.org/spec/SCE/1.0)  | > [true](https://www.omg.org/spec/SCE/1.0)    | > [\<=120](https://www.omg.org/spec/SCE/1.0)    | > [\<590](https://www.omg.org/spec/SCE/1.0)        | > ["HIGH"](https://www.omg.org/spec/SCE/1.0)   |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
|                                          |                                               |                                                 |                                                    |                                                |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [2](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\[590..610\]](https://www.omg.org/spec/SCE/1.0) | > ["MEDIUM"](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
| > [3](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\>610](https://www.omg.org/spec/SCE/1.0)        | > ["LOW"](https://www.omg.org/spec/SCE/1.0)    |
+------------------------------------------+                                               +-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [4](https://www.omg.org/spec/SCE/1.0)  |                                               | > [\>120](https://www.omg.org/spec/SCE/1.0)     | > [\<600](https://www.omg.org/spec/SCE/1.0)        | > ["HIGH"](https://www.omg.org/spec/SCE/1.0)   |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
| > [5](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\[600..625\]](https://www.omg.org/spec/SCE/1.0) | > ["MEDIUM"](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
| > [6](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\>625](https://www.omg.org/spec/SCE/1.0)        | > ["LOW"](https://www.omg.org/spec/SCE/1.0)    |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [7](https://www.omg.org/spec/SCE/1.0)  | > [false](https://www.omg.org/spec/SCE/1.0)   | > [\<=100](https://www.omg.org/spec/SCE/1.0)    | > [\<580](https://www.omg.org/spec/SCE/1.0)        | > ["HIGH"](https://www.omg.org/spec/SCE/1.0)   |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
|                                          |                                               |                                                 |                                                    |                                                |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [8](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\[580..600\]](https://www.omg.org/spec/SCE/1.0) | > ["MEDIUM"](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
| > [9](https://www.omg.org/spec/SCE/1.0)  |                                               |                                                 | > [\>600](https://www.omg.org/spec/SCE/1.0)        | > ["LOW"](https://www.omg.org/spec/SCE/1.0)    |
+------------------------------------------+                                               +-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [10](https://www.omg.org/spec/SCE/1.0) |                                               | > [\>100](https://www.omg.org/spec/SCE/1.0)     | > [\<590](https://www.omg.org/spec/SCE/1.0)        | > ["HIGH"](https://www.omg.org/spec/SCE/1.0)   |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
|                                          |                                               |                                                 |                                                    |                                                |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+
| > [11](https://www.omg.org/spec/SCE/1.0) |                                               |                                                 | > [\[590..615\]](https://www.omg.org/spec/SCE/1.0) | > ["MEDIUM"](https://www.omg.org/spec/SCE/1.0) |
+------------------------------------------+                                               |                                                 +----------------------------------------------------+------------------------------------------------+
| > [12](https://www.omg.org/spec/SCE/1.0) |                                               |                                                 | > [\>615](https://www.omg.org/spec/SCE/1.0)        | > ["LOW"](https://www.omg.org/spec/SCE/1.0)    |
+------------------------------------------+-----------------------------------------------+-------------------------------------------------+----------------------------------------------------+------------------------------------------------+

[[]{#_Ref113962939 .anchor}Figure 10-11: Use of boxed expressions with a
decision table](https://www.omg.org/spec/SCE/1.0)

[Formally, the meaning of a boxed context is { "Name 1": Value 1, "Name
2": Value 2, \..., "Name *n"*: Value *n* } if no Result is specified.
Otherwise, the meaning is { "Name 1": Value 1, "Name 2": Value 2, \...,
"Name *n"*: Value *n*, "result": Result }.result. Recall that the bold
face indicates elements in the FEEL Semantic Domain. The scope includes
the context derived from the containing DRG as described in
[10.4](#execution-semantics-of-decision-services).](https://www.omg.org/spec/SCE/1.0)

[Boxed context entries for contexts that do not have a result box are
accessible outside the context (as QNs), subject to the scope rules
defined in clause [10.3.2.11](#_Ref123036546). Boxed context entries for
contexts that have a result box are not accessible outside the
context.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123126758 .anchor}Boxed List](https://www.omg.org/spec/SCE/1.0)

[A **boxed list** is a list of *n* items. Cells SHALL be arranged in one
of the following ways (see [Figure 10-12](#_Ref113963044), [Figure
10-13](#_Ref113963052)):](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image97.jpg){width="1.5139107611548557in"
height="1.2847003499562555in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113963044 .anchor}Figure 10-12: Vertical
list](https://www.omg.org/spec/SCE/1.0)

> [Item 1**,** Item 2**,** Item *n*](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113963052 .anchor}Figure 10-13: Horizontal
list](https://www.omg.org/spec/SCE/1.0)

[Line styles are normative. The items are boxed expressions. Formally,
the meaning of a boxed list is just the meaning of the list, i.e., **\[
Item 1, Item 2, \..., Item *n* \]**. The scope includes the context
derived from the containing DRG as described in
[10.4](#execution-semantics-of-decision-services).](https://www.omg.org/spec/SCE/1.0)

#### [Relation](https://www.omg.org/spec/SCE/1.0)

[A vertical list of homogeneous horizontal contexts (with no result
cells) can be displayed with the names appearing just once at the top of
the list, like a relational table, as shown in [Figure
10-14](#_Ref113963094):](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------+-------------------------------------------+-------------------------------------------+
| > [Name                                 | > [Name                                   | [Name                                     |
| > 1](https://www.omg.org/spec/SCE/1.0)  | > 2](https://www.omg.org/spec/SCE/1.0)    | *n*](https://www.omg.org/spec/SCE/1.0)    |
+:=======================================:+:=========================================:+:=========================================:+
| > [Value                                | > [Value                                  | > [Value                                  |
| > 1a](https://www.omg.org/spec/SCE/1.0) | > 2a](https://www.omg.org/spec/SCE/1.0)   | > *n*a](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------+-------------------------------------------+-------------------------------------------+
| > [Value                                | > [Value                                  | > [Value                                  |
| > 1b](https://www.omg.org/spec/SCE/1.0) | > 2b](https://www.omg.org/spec/SCE/1.0)   | > *n*b](https://www.omg.org/spec/SCE/1.0) |
+-----------------------------------------+-------------------------------------------+-------------------------------------------+
| [Value                                  | > [Value                                  | [Value                                    |
| 1*m*](https://www.omg.org/spec/SCE/1.0) | > 2*m*](https://www.omg.org/spec/SCE/1.0) | *nm*](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------+-------------------------------------------+-------------------------------------------+

[[]{#_Ref113963094 .anchor}Figure 10-14:
Relation](https://www.omg.org/spec/SCE/1.0)

#### [Boxed Function](https://www.omg.org/spec/SCE/1.0)

[A Boxed Function Definition is the notation for parameterized boxed
expressions.](https://www.omg.org/spec/SCE/1.0)

[The boxed expression associated with a Business Knowledge Model SHALL
be a boxed function definition or a decision table whose input
expressions are assumed to be the parameter
names.](https://www.omg.org/spec/SCE/1.0)

[A boxed function has 3 cells:](https://www.omg.org/spec/SCE/1.0)

1.  - 
    - 
    - 
    - 

[**Kind**, containing the initial letter of one of the following:
**F**EEL**O**NNX**P**MML **J**ava The **Kind** box can be omitted for
FEEL functions, including decision
tables.](https://www.omg.org/spec/SCE/1.0)

2.  
3.  

[Parameters: 0 or more comma-separated names, in parentheses Body: a
boxed expression](https://www.omg.org/spec/SCE/1.0)

[The 3 cells SHALL be arranged as shown in [Figure
10-15](#_Ref113963161):](https://www.omg.org/spec/SCE/1.0)

+---------------------------------------+--------------------------------------------+
| [K](https://www.omg.org/spec/SCE/1.0) | [(Parameter1, Parameter2,                  |
|                                       | ...)](https://www.omg.org/spec/SCE/1.0)    |
+=======================================+============================================+
|                                       | > [Body](https://www.omg.org/spec/SCE/1.0) |
+---------------------------------------+--------------------------------------------+

[[]{#_Ref113963161 .anchor}Figure 10-15: Boxed function
definition](https://www.omg.org/spec/SCE/1.0)

[For FEEL functions, denoted by **Kind** FEEL or by omission of
**Kind**, the Body SHALL be a FEEL expression that references the
parameters. For externally defined functions denoted by **Kind** Java,
the Body SHALL be a context as described in
[10.3.2.13.3](#externally-defined-functions) and the form of the mapping
information SHALL be the *java* form. For externally defined functions
denoted by **Kind** PMML, the Body SHALL be a context as described in
[10.3.2.13.3](#externally-defined-functions) and the form of the mapping
information SHALL be the *pmml* form. For externally defined functions
denoted by **Kind** ONNX, the Body SHALL be a context as described in
[10.3.2.13.3](#externally-defined-functions) and the form of the mapping
information SHALL be the *onnx* form.](https://www.omg.org/spec/SCE/1.0)

[Formally, the meaning of a boxed function is just the meaning of the
function, *i.e.*, FEEL(*funcion(Parameter1, Parameter2, \...) Body*) if
the **Kind** is FEEL, and FEEL(*funcion(Parameter1, Parameter2, \...)
external Body*) otherwise. The scope includes the context derived from
the containing DRG as described in
[10.4](#execution-semantics-of-decision-services).](https://www.omg.org/spec/SCE/1.0)

#### [Boxed conditional](https://www.omg.org/spec/SCE/1.0)

[Boxed conditional offers a visual representation of an **if** statement
using three rows. The first one is labelled "if"; the second one is
labelled "then" and the last one is labelled "else". In the right part,
another FEEL expression is expected. The expression in the "if" part
MUST resolve to a boolean.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image98.jpg){width="3.3109722222222224in"
height="1.5722222222222222in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-16: Boxed conditional](https://www.omg.org/spec/SCE/1.0)

[Color is suggested.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image99.jpg){width="5.249027777777778in"
height="4.040972222222222in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-17: Use of conditional expression with decision table and
invocation](https://www.omg.org/spec/SCE/1.0)

#### [Boxed filter](https://www.omg.org/spec/SCE/1.0)

[Boxed filter offers a visual representation of collection filtering.
The top part is an expression that is the collection to be filtered. The
bottom part, between the square brackets, holds the filter expression.
The expression in the top part MUST resolve to a collection including
implicit conversion *to singleton list* as defined in section
[10.3.2.9.4](#_Ref123108316). The expression in the bottom part MUST
resolve to a Boolean.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image100.jpg){width="3.549722222222222in"
height="1.051388888888889in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 10-18: Filter expression](https://www.omg.org/spec/SCE/1.0)

[Color is suggested but it is considered a good practice to have a
different color for the square brackets, so the filtering expression is
easier to see.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image101.jpg){width="2.582638888888889in"
height="3.0720833333333335in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-19: Use of filter expression with a list
expression](https://www.omg.org/spec/SCE/1.0)

#### [Boxed iterator](https://www.omg.org/spec/SCE/1.0)

[Boxed iterator offers a visual representation of an iterator statement.
There are three flavors to it: **for** loop and quantified expression
**some** and **every**.](https://www.omg.org/spec/SCE/1.0)

[For the **for** loop, the three rows are labelled "for", "in" and
"return". The right part of the "for" displays the iterator variable
name. The second row holds an expression representing the collection
that will be iterated over. The expression in the in row MUST resolve to
a collection including implicit conversion *to singleton list* as
defined in section [10.3.2.9.4](#_Ref123108316). The last row contains
the expression that will process each element of the
collection.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image102.jpg){width="3.3109722222222224in"
height="1.551388888888889in"}](https://www.omg.org/spec/SCE/1.0)

[Figure 10-20: For expression](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image103.jpg){width="6.518611111111111in"
height="2.020138888888889in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-21: Use of for expression that returns a
context](https://www.omg.org/spec/SCE/1.0)

[**Every** and **some** expression have a similar structure. The only
difference between the two is the caption on the first line which is
"every" or "some". The second line is labelled "in" and the last one
"satisfies". The right part of the first line is the iterator variable
name. The expression defined in the second row is the collection that
will be tested. The expression in the in row MUST resolve to a
collection including implicit conversion *to singleton list* as defined
in section [10.3.2.9.4](#_Ref123108316). The last line is an expression
that will be evaluated on each item. The expression defined in the
satisfies MUST resolve to a boolean.](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image104.jpg){width="3.3109722222222224in"
height="1.551388888888889in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-22: Every expression](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image105.jpg){width="3.1527777777777777in"
height="3.4652777777777777in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-23: Use of every with a list
expression](https://www.omg.org/spec/SCE/1.0)

[![Table Description automatically
generated](media/image106.jpg){width="3.3109722222222224in"
height="1.551388888888889in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-24: Some expression](https://www.omg.org/spec/SCE/1.0)

> [![A picture containing table Description automatically
> generated](media/image107.jpg){width="4.332361111111111in"
> height="6.113194444444445in"}](https://www.omg.org/spec/SCE/1.0)

[\
Figure 10-25: Use of some with a relation and a decision
table](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385206 .anchor}]{#_Ref123126486 .anchor}FEEL](https://www.omg.org/spec/SCE/1.0)

[A subset of FEEL, defined in the next section, serves as the notation
\"in the boxes\" of boxed expressions. A FEEL object is a number, a
string, a date, a time, a duration, a function, a context, or a list of
FEEL objects (including nested
lists).](https://www.omg.org/spec/SCE/1.0)

[Note: A JSON object is a number, a string, a context (JSON calls them
maps) or a list of JSON objects. So, FEEL is an extension of JSON in
this regard. In addition, FEEL provides friendlier syntax for literal
values and does not require context keys to be
quoted.](https://www.omg.org/spec/SCE/1.0)

[Here we give a \"feel\" for the language by starting with some simple
examples.](https://www.omg.org/spec/SCE/1.0)

#### [Comparison of ranges](https://www.omg.org/spec/SCE/1.0)

[Ranges and lists of ranges appear in decision table input entry, input
value, and output value cells. In the examples in [Table
39](#_Ref113969101), this portion of the syntax is shown underlined.
Strings, dates, times, and durations also may be compared, using
typographical literals defined in section
[7.2.2.1](#_Ref123038832).](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------------------------+-----------------------------------------------+
| > [**FEEL Expression**](https://www.omg.org/spec/SCE/1.0)          | [**Value**](https://www.omg.org/spec/SCE/1.0) |
+====================================================================+===============================================+
| > [5 in ([\<=5]{.underline} )](https://www.omg.org/spec/SCE/1.0)   | [true](https://www.omg.org/spec/SCE/1.0)      |
+--------------------------------------------------------------------+-----------------------------------------------+
| > [5 in ( ([5..10]{.underline}\]                                   | [false](https://www.omg.org/spec/SCE/1.0)     |
| > )](https://www.omg.org/spec/SCE/1.0)                             |                                               |
+--------------------------------------------------------------------+-----------------------------------------------+
| > [5 in ( \[[5..10]{.underline}\]                                  | [true](https://www.omg.org/spec/SCE/1.0)      |
| > )](https://www.omg.org/spec/SCE/1.0)                             |                                               |
+--------------------------------------------------------------------+-----------------------------------------------+
| > [5 in ([4, 5, 6]{.underline})](https://www.omg.org/spec/SCE/1.0) | [true](https://www.omg.org/spec/SCE/1.0)      |
+--------------------------------------------------------------------+-----------------------------------------------+
| > [5 in (\<5, \>5)](https://www.omg.org/spec/SCE/1.0)              | [false](https://www.omg.org/spec/SCE/1.0)     |
+--------------------------------------------------------------------+-----------------------------------------------+
| > [***2012-12-31*** in (                                           | [true](https://www.omg.org/spec/SCE/1.0)      |
| > (***[2012-12-]{.underline}***](https://www.omg.org/spec/SCE/1.0) |                                               |
| >                                                                  |                                               |
| > [***[25..2013-02-14]{.underline}***)                             |                                               |
| > )](https://www.omg.org/spec/SCE/1.0)                             |                                               |
+--------------------------------------------------------------------+-----------------------------------------------+

: [[]{#_Ref113969101 .anchor}Table 39: FEEL range
comparisons](https://www.omg.org/spec/SCE/1.0)

#### [Numbers](https://www.omg.org/spec/SCE/1.0)

[FEEL numbers and calculations are exemplified in [Table
40](#_Ref113969195).](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref113969195 .anchor}**Table 40: FEEL numbers and
calculations**](https://www.omg.org/spec/SCE/1.0)

+----------------------------------------------------+--------------------------------------------------------------------------+
| [**FEEL                                            | > [**Value**](https://www.omg.org/spec/SCE/1.0)                          |
| Expression**](https://www.omg.org/spec/SCE/1.0)    |                                                                          |
+====================================================+==========================================================================+
| > [decimal(1,                                      | [1.00](https://www.omg.org/spec/SCE/1.0)                                 |
| > 2)](https://www.omg.org/spec/SCE/1.0)            |                                                                          |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [.25 + .2](https://www.omg.org/spec/SCE/1.0)     | [0.45](https://www.omg.org/spec/SCE/1.0)                                 |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [.10 \* 30.00](https://www.omg.org/spec/SCE/1.0) | [3.0000](https://www.omg.org/spec/SCE/1.0)                               |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [1 + 3/2\*2 -                                    | [-4.0](https://www.omg.org/spec/SCE/1.0)                                 |
| > 2\*\*3](https://www.omg.org/spec/SCE/1.0)        |                                                                          |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [1/3](https://www.omg.org/spec/SCE/1.0)          | [0.3333333333333333333333333333333333](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [decimal(1/3,                                    | [0.33](https://www.omg.org/spec/SCE/1.0)                                 |
| > 2)](https://www.omg.org/spec/SCE/1.0)            |                                                                          |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [1 = 1.000](https://www.omg.org/spec/SCE/1.0)    | [true](https://www.omg.org/spec/SCE/1.0)                                 |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [1.01/2](https://www.omg.org/spec/SCE/1.0)       | [0.505](https://www.omg.org/spec/SCE/1.0)                                |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [decimal(0.505,                                  | [0.50](https://www.omg.org/spec/SCE/1.0)                                 |
| > 2)](https://www.omg.org/spec/SCE/1.0)            |                                                                          |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [decimal(0.515,                                  | [0.52](https://www.omg.org/spec/SCE/1.0)                                 |
| > 2)](https://www.omg.org/spec/SCE/1.0)            |                                                                          |
+----------------------------------------------------+--------------------------------------------------------------------------+
| > [1.0\*10\*\*3](https://www.omg.org/spec/SCE/1.0) | [1000.0](https://www.omg.org/spec/SCE/1.0)                               |
+----------------------------------------------------+--------------------------------------------------------------------------+

## [[[]{#_Toc231385207 .anchor}]{#_Ref123126472 .anchor}Full FEEL Syntax and Semantics](https://www.omg.org/spec/SCE/1.0)

[Clause [9](#_Ref193191158) introduced a subset of FEEL sufficient to
support decision tables for Conformance Level 2 (see clause
[2](#conformance)). The full **DMN** friendly-enough expression language
(FEEL) required for Conformance Level 3 is specified
here.](https://www.omg.org/spec/SCE/1.0)

[FEEL is a simple language with inspiration drawn from Java, JavaScript,
XPath, SQL, PMML, Lisp, and many
others.](https://www.omg.org/spec/SCE/1.0)

[The syntax is defined using grammar rules that show how complex
expressions are composed of simpler expressions. Likewise, the semantic
rules show how the meaning of a complex expression is composed from the
meaning of constituent simper
expressions.](https://www.omg.org/spec/SCE/1.0)

[**DMN** completely defines the meaning of FEEL expressions that do not
invoke externally-defined functions. There are no implementation-defined
semantics. FEEL expressions (that do not invoke externally-defined
functions) have no side- effects and have the same interpretation in
every conformant implementation. Externally-defined functions SHOULD be
deterministic and side-effect free.](https://www.omg.org/spec/SCE/1.0)

### [[[[]{#_Toc231385208 .anchor}]{#_Ref124256858 .anchor}]{#_Ref123036176 .anchor}Syntax](https://www.omg.org/spec/SCE/1.0)

[FEEL syntax is defined as grammar here and equivalently as a UML Class
diagram in the meta-model
([10.5](#metamodel-3))](https://www.omg.org/spec/SCE/1.0)

#### [Grammar notation](https://www.omg.org/spec/SCE/1.0)

[The grammar rules use the ISO EBNF notation. Each rule defines a
non-terminal symbol *S* in terms of some other symbols *S1, S2, \...*
The following table summarizes the EBNF
notation.](https://www.omg.org/spec/SCE/1.0)

  ---------------------------------------------------------------------------------------------------
  [**Example**](https://www.omg.org/spec/SCE/1.0)   [**Meaning**](https://www.omg.org/spec/SCE/1.0)
  ------------------------------------------------- -------------------------------------------------
  [*S = S1 ;*](https://www.omg.org/spec/SCE/1.0)    [Symbol *S* is defined in terms of symbol
                                                    *S1*](https://www.omg.org/spec/SCE/1.0)

  [*S1 \| S2*](https://www.omg.org/spec/SCE/1.0)    [Either *S1* or
                                                    *S2*](https://www.omg.org/spec/SCE/1.0)

  [*S1, S2*](https://www.omg.org/spec/SCE/1.0)      [*S1* followed by
                                                    *S2*](https://www.omg.org/spec/SCE/1.0)

  [*\[S1\]*](https://www.omg.org/spec/SCE/1.0)      [*S1* occurring 0 or 1
                                                    time](https://www.omg.org/spec/SCE/1.0)

  [*{S1}*](https://www.omg.org/spec/SCE/1.0)        [*S1* repeated 0 or more
                                                    times](https://www.omg.org/spec/SCE/1.0)

  [*k \* S1*](https://www.omg.org/spec/SCE/1.0)     [*S1* repeated k
                                                    times](https://www.omg.org/spec/SCE/1.0)

  [\"and\"](https://www.omg.org/spec/SCE/1.0)       [literal terminal
                                                    symbol](https://www.omg.org/spec/SCE/1.0)
  ---------------------------------------------------------------------------------------------------

  : [Table 41: EBNF notation](https://www.omg.org/spec/SCE/1.0)

[We extend the ISO notation with character ranges for brevity, as
follows:](https://www.omg.org/spec/SCE/1.0)

[A character range has the following EBNF
syntax:](https://www.omg.org/spec/SCE/1.0)

[character range = \"\[\", low character, \"-\", high character, \"\]\"
; low character = unicode character ; high character = unicode character
; unicode character = simple character \| code point ; code point =
\"\\u\", 4 \* hexadecimal digit \| \"\\U\", 6 \* hexadecimal digit;
hexadecimal digit = \"0\" \| \"1\" \| \"2\" \| \"3\" \| \"4\" \| \"5\"
\| \"6\" \| \"7\" \| \"8\" \| \"9\"
\|](https://www.omg.org/spec/SCE/1.0)

[\"a\" \| \"A\" \| \"b\" \| \"B\" \| \"c\" \| \"C\" \| \"d\" \| \"D\" \|
\"e\" \| \"E\" \| \"f\" \| \"F\" ;](https://www.omg.org/spec/SCE/1.0)

[A simple character is a single Unicode character, *e.g.,* a, 1, \$,
*etc.* Alternatively, a character may be specified by its hexadecimal
code point value, prefixed with
*\\u*.](https://www.omg.org/spec/SCE/1.0)

[Every Unicode character has a numeric code point value. The low
character in a range must have numeric value less than the numeric value
of the high character.](https://www.omg.org/spec/SCE/1.0)

[For example, hexadecimal digit can be described more succinctly using
character ranges as follows:](https://www.omg.org/spec/SCE/1.0)

> [hexadecimal digit = \[0-9\] \| \[a-i \| \[A-F\]
> ;](https://www.omg.org/spec/SCE/1.0)

[Note that the character range that includes all Unicode characters is
*\[\\u0-\\u10FFFF\]*.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123028648 .anchor}Grammar rules](https://www.omg.org/spec/SCE/1.0)

[The complete FEEL grammar is specified below. Grammar rules are
numbered, and in some cases, alternatives are lettered, for later
reference. Boxed expression syntax (rule 53) is used to give execution
semantics to boxed expressions.](https://www.omg.org/spec/SCE/1.0)

1.  a.  
    b.  
2.  a.  
    b.  
    c.  
    d.  
    e.  
    f.  
    g.  
    h.  
3.  
4.  a.  
    b.  
    c.  
    d.  
5.  
6.  
7.  a.  
    b.  
8.  
9.  
10. 
11. 
12. 
13. 
14. 

[expression = boxed expression \| textual expression ; textual
expression = for expression \| if expression \| quantified expression \|
disjunction \| conjunction \| comparison \| arithmetic expression \|
instance of \| path expression \| descendant expression \| filter
expression \| function invocation \| literal \| simple positive unary
test \| name \| \"(\" , expression , \")\" ; textual expressions =
textual expression , { \",\" , textual expression } ; arithmetic
expression = addition \| subtraction \| multiplication \| division \|
exponentiation \| arithmetic negation ; simple expression = arithmetic
expression \| simple value ; simple expressions = simple expression , {
\",\" , simple expression } ; simple positive unary test = ( \"\<\" \|
\"\<=\" \| \"\>\" \| \"\>=\" \| \"=\" \| \"!=\" ) , endpoint \| interval
; interval = ( open interval start \| closed interval start ) , endpoint
, \"..\" , endpoint , ( open interval end \| closed interval end ) ;
open interval start = \"(\" \| \"\]\" ; closed interval start = \"\[\" ;
open interval end = \")\" \| \"\[\" ; closed interval end = \"\]\" ;
positive unary test = expression ; positive unary tests = positive unary
test , { \",\" , positive unary test }
;](https://www.omg.org/spec/SCE/1.0)

15. a.  
    b.  
    c.  
16. 
17. 
18. 
19. 
20. 
21. 
22. 
23. 
24. 
25. 
26. 
27. 
28. 

> [unary tests = positive unary tests \| \"not\", \" (\", positive unary
> tests, \")\" \| \"-\" endpoint = expression ; simple value = qualified
> name \| simple literal ; qualified name = name , { \".\" , name } ;
> addition = expression , \"+\" , expression ; subtraction = expression
> , \"-\" , expression ; multiplication = expression , \"\*\" ,
> expression ; division = expression , \"/\" , expression ;
> []{#_Ref165455713 .anchor}exponentiation = expression, \"\*\*\",
> expression ; arithmetic negation = \"-\" , expression ; name = name
> start , { name part \| additional name symbols } ; name start = name
> start char, { name part char } ; name part = name part char , { name
> part char } ; name start char = \"?\" \| \[A-Z\] \| \"\_\" \| \[a-z\]
> \| \[\\uC0-\\uD6\] \| \[\\uD8-\\uF6\] \| \[\\uF8-\\u2FF\] \|
> \[\\u370-\\u37D\] \| \[\\u37F-\\u1FFF\] \| \[\\u200C-\\u200D\] \|
> \[\\u2070-\\u21 8F\] \| \[\\u2C00-\\u2FEF\] \| \[\\u3001 -\\uD7FF\] \|
> \[\\uF900-\\uFDCF\] \| \[\\uFDF0-\\uFFFD\] \| \[\\u10000-\\uEFFFF\]
> ;](https://www.omg.org/spec/SCE/1.0)

29. 
30. 
31. 
32. 
33. 
34. 
35. 
36. 
37. 
38. 
39. 
40. 
41. 
42. 
43. 
44. 

[name part char = name start char \| digit \| \\uB7 \|
\[\\u0300-\\u036F\] \| \[\\u203F-\\u2040\] ; additional name symbols =
\".\" \| \"/\" \| \"-\" \| \"'\" \| \"+\" \| \"\*\" ; literal = simple
literal \| \"null\" ; simple literal = numeric literal \| string literal
\| boolean literal \| date time literal ; string literal = \"\"\", {
character -- (\"\"\" \| vertical space) \| string escape sequence},
\"\"\" ; boolean literal = \"true\" \| \"false\" ; numeric literal = \[
\"-\" \] , ( digits , \[ \".\", digits \] \| \".\" , digits ), \[ (
\"e\" \| \"E\" ) , \[ \"+\" \| \"-\" \] , digits \] ; digit = \[0-9\] ;
digits = digit , {digit} ; function invocation = expression , parameters
; parameters = \"(\" , ( named parameters \| positional parameters ) ,
\")\" ; named parameters = parameter name , \":\" , expression , { \",\"
, parameter name , \":\" , expression } ; parameter name = name ;
positional parameters = \[ expression , { \",\" , expression } \] ; path
expression = expression , \".\" , name ; for expression = \"for\" , name
, \"in\" , iteration context { \",\" , name , \"in\" , iteration context
} , \"return\" , expression ;](https://www.omg.org/spec/SCE/1.0)

45. 
46. 
47. 
48. 
49. a.  
    b.  
    c.  
    d.  
50. 
51. 
52. 

> [if expression = \"if\" , expression , \"then\" , expression ,
> \"else\" expression ; quantified expression = (\"some\" \| \"every\")
> , name , \"in\" , iteration context , { \",\" , name , \"in\" ,
> iteration context } , \"satisfies\", expression ; disjunction =
> expression , \"or\" , expression ; conjunction = expression , \"and\"
> , expression ; comparison = expression , ( \"=\" \| \"!=\" \| \"\<\"
> \| \"\<=\" \| \"\>\" \| \"\>=\" ) , expression \| expression ,
> \"between\" , expression , \"and\" , expression \| expression , \"in\"
> , positive unary test \| expression , \"in\" , \" (\", positive unary
> tests, \")\" ; filter expression = expression , \"\[\" , expression ,
> \"\]\" ; instance of = expression , \"instance\" , \"of\" , type \|
> expression , \"as\" , type ; type = qualified name
> \|](https://www.omg.org/spec/SCE/1.0)
>
> [\"range\" \"\<\" type \"\>\" \|](https://www.omg.org/spec/SCE/1.0)
>
> [\"list\" \"\<\" type \"\>\" \|](https://www.omg.org/spec/SCE/1.0)
>
> [\"context\" \"\<\" \[ name \":\" type { \",\" name \":\" type } \]
> \"\>\" \| \"function\" \"\<\" \[ type { \", \" type } \] \"\>\"
> \"-\>\" type](https://www.omg.org/spec/SCE/1.0)
>
> [;](https://www.omg.org/spec/SCE/1.0)

53. 
54. 
55. 
56. 
57. 
58. 
59. 
60. 
61. 

> [boxed expression = list \| function definition \| context ; list =
> \"\[\" , \[ expression , { \",\" , expression } \] , \"\]\" ; function
> definition = \"function\" , \"(\" , \[ formal parameter { \",\" ,
> formal parameter } \] , \")\" , \[ \"external\" \] , expression ;
> formal parameter = parameter name \[\":\" type \] \[ \"?\" \| \"\...\"
> \] ; context = \"{\" , \[context entry , { \",\" , context entry } \]
> , \"}\" ; context entry = key , \":\" , expression ; key = name \|
> string literal ; date time literal = at literal \| function
> invocation; white space = vertical space \| \\u0009 \| \\u0020 \|
> \\u0085 \| \\u00A0 \| \\u1 680 \| \\u1 80E \| \[\\u2000-\\u200B\] \|
> \\u2028 \| \\u2029 \| \\u202F \| \\u205F \| \\u3000 \| \\uFEFF
> ;](https://www.omg.org/spec/SCE/1.0)

62. 
63. 
64. 
65. 
66. 

> [vertical space = \[\\u000A-\\u000D\] iteration context = expression,
> \[ "..", expression \]; string escape sequence = \"\\\'\" \| \"\\\"\"
> \| \"\\\\\" \| \"\\n\" \| \"\\r\" \| \"\\t\" \| code point; at literal
> = "@", string literal []{#_Ref165543123 .anchor}range literal = a. (
> open range start \| closed range start ) , range endpoint , \"..\" ,
> range endpoint ( open range end \| closed range end )
> \|](https://www.omg.org/spec/SCE/1.0)
>
> [b. open range start , \"..\" , range endpoint ( open range end \|
> closed range end ) \|](https://www.omg.org/spec/SCE/1.0)
>
> [c. ( open range start \| closed range start ) , range endpoint ,
> \"..\" , open range end ;](https://www.omg.org/spec/SCE/1.0)

67. 
68. 

[range endpoint = numeric literal \| string literal \| date time literal
;descendant expression = expression , \"\...\" , name ;Additional syntax
rules:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 

#### [Operator precedence is given by the order of the alternatives in grammar rules 1, 2 and 4, in order from lowest to highest. *E.g.,* (boxed) invocation has higher precedence than multiplication, multiplication has higher precedence than addition, and addition has higher precedence than comparison. Addition and subtraction have equal precedence, and like all FEEL infix binary operators, are left associative. Note that FEEL's order of operations regarding arithmetic negation and exponentiation differs from standard mathematical precedence, e.g., the FEEL expression -4 \*\* 2 is interpreted as (-4)\*(-4) and evaluates to 16. In standard mathematics, -4 \*\* 2 is interpreted as -(4\*4) and evaluates to -16 instead. To avoid any ambiguity, users are recommended to use explicit parentheses, e.g., instead of -4 \*\* 2 specify -(4 \*\* 2) = -16 or (-4) \*\* 2 = 16 as appropriate. Tools MAY present a warning to users to inform about the potentially unexpected precedence of the combination of these two operators.Java-style comments can be used, *i.e.,* \'//\' to end of line and /\* \... \*/. In rule 60 (\"date time literal\"), for the \"function invocation\" alternative, the only permitted functions are the builtins *date*, *time*, *date and time*, *duration*, *days and time duration*, and *years and months duration*. The string in rule 65 must follow the date string, time string, date and time string or duration string syntax, as detailed in section [10.3.4.1](#conversion-functions).In rule 56 (\"formal parameter\"), the symbols \"?\" and \"\...\" are used to define type qualifiers. The symbol \"?\" denotes an optional parameter and \"\...\" that the enclosing function definition has a variable number of parameters. Parameters with these qualifiers must come after the ones without qualifiers. A function definition can have at most one optional parameter and at most one variable argument parameter. A function definition cannot have both optional and variable argument qualifiers.[]{#_Ref123040775 .anchor}Literals, data types, built-in functions](https://www.omg.org/spec/SCE/1.0)

[FEEL supports literal syntax for numbers, strings, booleans, date,
time, date and time, duration, and *null*. (See grammar rules, clause
[10.3.1.2](#_Ref123028648)). Literals can be mapped directly to values
in the FEEL semantic domain (clause
[10.3.2.1](#_Ref123039003)).](https://www.omg.org/spec/SCE/1.0)

[FEEL supports the following
datatypes:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 
- 
- 
- 
- 
- 
- 

#### [number string boolean days and time duration years and months duration date time date and time list range context function Tokens, Names and White space](https://www.omg.org/spec/SCE/1.0)

[A FEEL expression consists of a sequence of tokens, possibly separated
with white space (grammar rule 63). A token is a sequence of Unicode
characters, either:](https://www.omg.org/spec/SCE/1.0)

- 
- 

[A literal terminal symbol in any grammar rule other than grammar rule
30. Literal terminal symbols are enclosed in double quotes in the
grammar rules, e.g., "and", "+", "=", or A sequence conforming to
grammar rule 28, 29, 35, or 37 For backward compatibility reasons,
"list", "context" and "range" from grammar rule 52 are not considered
literal terminal symbols.](https://www.omg.org/spec/SCE/1.0)

[White space (except inside strings) acts as token separators. Most
grammar rules act on tokens and thus ignore white space (which is not a
token).](https://www.omg.org/spec/SCE/1.0)

[A name (grammar rule 27) is defined as a sequence of tokens. I.e., the
name IncomeTaxesAmount is defined as the list of tokens **\[ Income,
Taxes, Amount \]**. The name Income+Expenses is defined as the list of
tokens\
**\[ Income, + , Expenses \]**. A consequence of this is that a name
like Phone Number with one space in between the tokens is the same as
Phone Number with several spaces in between the
tokens.](https://www.omg.org/spec/SCE/1.0)

[A name start (grammar rule 26) SHALL NOT be a literal terminal
symbol.](https://www.omg.org/spec/SCE/1.0)

[A name part (grammar rule 27) MAY be a literal terminal
symbol.](https://www.omg.org/spec/SCE/1.0)

#### [Contexts, Lists, Qualified Names, and Context Lists](https://www.omg.org/spec/SCE/1.0)

[A context is a map of key-value pairs called context entries and is
written using curly braces to delimit the context, commas to separate
the entries, and a colon to separate key and value (grammar rule 57).
The key can be a string or a name. The value is an
expression.](https://www.omg.org/spec/SCE/1.0)

[A list is written using square brackets to delimit the list, and commas
to separate the list items (grammar rule
54).](https://www.omg.org/spec/SCE/1.0)

[Contexts and lists can reference other contexts and lists, giving rise
to a directed acyclic graph. Naming is path based. The *qualified name*
(QN) of a context entry is of the form *N1*.*N2 \... N~n~* where *N1* is
the name of an in-scope context.](https://www.omg.org/spec/SCE/1.0)

[Nested lists encountered in the interpretation of *N1*.*N2 \... N~n~*
are preserved. *E.g.,*](https://www.omg.org/spec/SCE/1.0)

> [*\[{a: {b: \[1\]}}, {a: {b: \[2.1, 2.2\]}}, {a: {b: \[3\]}}, {a: {b:
> \[4, 5\]}}\].a.b =*](https://www.omg.org/spec/SCE/1.0)
>
> [*\[{b: \[1\]}, {b: \[2.1,2.2\]}, {b: \[3\]}, {b: \[4, 5\]}\].b
> =*](https://www.omg.org/spec/SCE/1.0)
>
> [*\[\[1\], \[2.1, 2.2\], \[3\], \[4,
> 5\]\]*](https://www.omg.org/spec/SCE/1.0)

[Nested lists can be flattened using the *flatten()* built-in function
([10.3.4](#built-in-functions-1)).](https://www.omg.org/spec/SCE/1.0)

#### [Ambiguity](https://www.omg.org/spec/SCE/1.0)

[FEEL expressions reference InformationItems by their qualified name
(QN), in which name parts are separated by a period. For example,
variables containing components are referenced as
\[varName\].\[componentName\]. Imported elements such as
InformationItems and ItemDefinitions are referenced by
namespace-qualified name, in which the first name part is the name
specified by the Import element importing the element. For example, an
imported variable containing components is referenced as \[import
name\].\[varName\].\[componentName\].](https://www.omg.org/spec/SCE/1.0)

[Because names are a sequence of tokens, and some of those tokens can be
FEEL operators and keywords, context is required to resolve ambiguity.
For example, the following could be names or other
expressions:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[a-b a -- b what if? Profit and loss Ambiguity is resolved using the
scope. Name tokens are matched from left to right against the names
in-scope, and the longest match is preferred. In the case where the
longest match is not desired, parenthesis or other punctuation (that is
not allowed in a name) can be used to disambiguate a FEEL expression.
For example, to subtract b from a if a-b is the name of an in-scope
context entry, one could write (a)-(b). Notice that it does not help to
write a - b, using space to separate the tokens, because the space is
not part of the token sequence and thus not part of the
name.](https://www.omg.org/spec/SCE/1.0)

### [[[]{#_Toc231385209 .anchor}]{#_Ref124256621 .anchor}Semantics](https://www.omg.org/spec/SCE/1.0)

[FEEL semantics is specified by mapping syntax -fragments to values in
the FEEL semantic domain. Literals (clause [10.3.1.3](#_Ref123040775))
can be mapped directly. Expressions composed of literals are mapped to
values in the semantic domain using simple logical and arithmetic
operations on the mapped literal values. In general, the semantics of
any FEEL expression are composed from the semantics of its
sub-expressions.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123039003 .anchor}Semantic Domain](https://www.omg.org/spec/SCE/1.0)

[The FEEL semantic domain **D** consists of an infinite number of typed
values. The types are organized into a lattice called
**L**.](https://www.omg.org/spec/SCE/1.0)

[The types include:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[simple datatypes such as number, boolean, string, date, time, and
duration constructed datatypes such as functions, lists, and contexts
the Null type, which includes only the **null** value the special type
Any, which includes all values in **D** A function is a lambda
expression with lexical closure or is externally defined by Java, ONNX
or PMML. A list is an ordered collection of domain elements, and a
context is a partially ordered collection of (string, value) pairs
called context entries.](https://www.omg.org/spec/SCE/1.0)

[We use *italics* to denote syntactic elements and **boldface** to
denote semantic elements. For example, FEEL**(***\[1+ 1, 2+2\]***) is
\[2, 4\]** .](https://www.omg.org/spec/SCE/1.0)

[Note that we use bold **\[\]** to denote a list in the FEEL semantic
domain, and bold numbers **2, 4** to denote those decimal values in the
FEEL semantic domain.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123035778 .anchor}Equality, Identity and Equivalence](https://www.omg.org/spec/SCE/1.0)

[The semantics of equality are specified in the semantic mappings in
clause [10.3.2.15](#semantic-mappings). In general, the values to be
compared must be of the same kind, for example, both numbers, to obtain
a non-null result.](https://www.omg.org/spec/SCE/1.0)

[Identity simply compares whether two objects in the semantic domain are
the same object. We denote the test for identity using infix **is**, and
its negation using infix **is not**. For example, FEEL( *\"1\" = 1*)
**is null**. Note that **is** never results in
**null**.](https://www.omg.org/spec/SCE/1.0)

[Every FEEL expression *e* in scope s can be mapped to an element **e**
in the FEEL semantic domain. This mapping defines the meaning of *e* in
s. The mapping may be written **e is** FEEL(*e*,s). Two FEEL expressions
*e~1~* and *e~2~* are equivalent in scope s if and only if
FEEL(*e~1~*,s) **is** FEEL(*e~2~*,s). When s is understood from context
(or not important), we may abbreviate the equivalence as **e~1~ is
e~2~**.](https://www.omg.org/spec/SCE/1.0)

#### [Semantics of literals and datatypes](https://www.omg.org/spec/SCE/1.0)

[FEEL datatypes are described in the following sub-sections. The meaning
of the datatypes includes:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  

[A mapping from a literal form (which in some cases is a string) to a
value in the semantic domain. A precise definition of the set of
semantic domain values belonging to the datatype, and the operations on
them. Each datatype describes a (possibly infinite) set of values. The
sets for the datatypes defined below are disjoint. We use *italics* to
indicate a literal and **boldface** to indicate a value in the semantic
domain.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123108443 .anchor}number](https://www.omg.org/spec/SCE/1.0)

[FEEL Numbers are based on IEEE 754-2008 Decimal128 format, with 34
decimal digits of precision and rounding toward the nearest neighbor
with ties favoring the even neighbor.](https://www.omg.org/spec/SCE/1.0)

[Grammar rule 35 defines literal numbers. Literals consist of base 10
digits, an optional decimal point, and an optional exponent. --INF,
+INF, and NaN literals are not supported. There is no distinction
between -0 and 0. The number(from, grouping separator, decimal
separator) built-in function supports a richer literal format. E.g.,
FEEL(number(\"1.000.000,01 \", \". \", \",\")) =
**1000000.01**.](https://www.omg.org/spec/SCE/1.0)

[FEEL supports literal scientific notation, e.g., 1.2e3, which is
equivalent to 1.2\*10\*\*3.](https://www.omg.org/spec/SCE/1.0)

[A FEEL number is represented in the semantic domain as a pair of
integers **(p,s)** such that **p** is a signed 34 digit integer carrying
the precision information, and **s** is the scale, in the range \[−611
1..6176\]. Each such pair represents the number **p**/10**^s^**. To
indicate the numeric value, we write **value(p,s)**. *E.g.,*
**value(100,2) = 1.** If precision is not of concern, we may write the
value as simply **1**. Note that many different pairs have the same
value. For example, **value(1,0) = value(10,1) =
value(100,2)**.](https://www.omg.org/spec/SCE/1.0)

[There is no value for notANumber, positiveInfinity, or
negativeInfinity. Use **null**
instead.](https://www.omg.org/spec/SCE/1.0)

##### [string](https://www.omg.org/spec/SCE/1.0)

[Grammar rule 33 defines literal strings as a double-quoted sequence of
Unicode characters (see](https://www.omg.org/spec/SCE/1.0)

[[[https://unicode.org/glossary/#character),]{.underline}](https://unicode.org/glossary/#character),)
e.g., \"abc\". The supported Unicode character range is
\[\\u0-\\u10FFFF\]. The string literals are described by rule 33. The
corresponding Unicode code points are used to encode a string
literal.](https://www.omg.org/spec/SCE/1.0)

[The literal string *\"abc\"* is mapped to the semantic domain as a
sequence of three Unicode characters **a**, **b**, and **c**, written
**\"abc\"**. The literal *\"\\ U01F4 0E\"* is mapped to a sequence of
one Unicode character written **\"ὀ\"** corresponding to the code point
U+1F40E. ![](media/image108.png){width="7.0e-2in"
height="0.12in"}](https://www.omg.org/spec/SCE/1.0)

##### [boolean](https://www.omg.org/spec/SCE/1.0)

[The Boolean literals are given by grammar rule 34. The values in the
semantic domain are **true** and
**false**.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123027748 .anchor}time](https://www.omg.org/spec/SCE/1.0)

[Times in FEEL can be expressed using either a time literal (see grammar
rule 65) or the *time()* built-in function (See
[10.3.4.1](#conversion-functions)). We use boldface time literals to
represent values in the semantic
domain.](https://www.omg.org/spec/SCE/1.0)

[A time in the semantic domain is a value of the XML Schema time
datatype. It can be represented by a sequence of numbers for the hour,
minute, second, and an optional time offset from Universal Coordinated
Time (UTC). If a time offset is specified, including time offset =
00:00, the time value has a UTC form and is comparable to all time
values that have UTC forms. If no time offset is specified, the time is
interpreted as a local time of day at some location, whose relationship
to UTC time is dependent on time zone rules for that location and may
vary from day to day. A local time of day value is only sometimes
comparable to UTC time values, as described in XML Schema Part 2
Datatypes.](https://www.omg.org/spec/SCE/1.0)

[A time **t** can also be represented as the number of seconds since
midnight. We write this as **valuet(t)**. *E.g.,* **valuet(01:01:01) =
3661**.](https://www.omg.org/spec/SCE/1.0)

[The **valuet** function is one-to-one, but its range is restricted to
\[0..86400\]. So, it has an inverse function **valuet ^-1^**(x) that
returns: the corresponding time value for x, if x is in \[0..86400\];
and **valuet ^-1^**(y), where y = x -- floor(x/86400) \* 86400, if x is
not in \[0..86400\].](https://www.omg.org/spec/SCE/1.0)

[Note: That is, **valuet ^-1^**(x) is always actually applied to x
modulo 86400. For example, **valuet ^-1^**(3600) will return the time of
day that is "01:00:00", **valuet ^-1^**(90000) will also return "T01
:00:00", and **valuet ^-1^**(-3600) will return the time of day that is
"23 :00:00", treating -3600 seconds as one hour *before*
midnight.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123027760 .anchor}date](https://www.omg.org/spec/SCE/1.0)

[Dates in FEEL can be expressed using either a date literal (see grammar
rule 65) or the date() built-in function (See
[10.3.4.1](#conversion-functions)). A date in the semantic domain is a
sequence of numbers for the year, month, day of the month. The year must
be in the range \[-999,999,999. .999,999,999\]. We use boldface date
literals to represent values in the semantic
domain.](https://www.omg.org/spec/SCE/1.0)

[When a date value is subject to implicit conversions
([10.3.2.9.4](#_Ref123108316)) it is considered to be equivalent to a
date time\
value in which the time of day is UTC midnight
(00:00:00).](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123041323 .anchor}date-time](https://www.omg.org/spec/SCE/1.0)

[*Date and time* in FEEL can be expressed using either a *date time
literal* (see grammar rule 65) or the *date and time()* built-in
function (See [10.3.2.3.6](#_Ref123041323)). We use boldface *date and
time literals* to represent values in the semantic
domain.](https://www.omg.org/spec/SCE/1.0)

[A date and time in the semantic domain is a sequence of numbers for the
year, month, day, hour, minute, second, and optional time offset from
Universal Coordinated Time (UTC). The year must be in the range
\[-](https://www.omg.org/spec/SCE/1.0)

[999,999,999..999,999,999\]. If there is an associated time offset,
including 00:00, the date-time value has a UTC form and is comparable to
all other date-time values that have UTC forms. If there is no
associated time offset, the time is taken to be a local time of day at
some location, according to the time zone rules for that location. When
the time zone is specified, e.g., using the IANA tz form (see
[10.3.4.1](#conversion-functions)), the date-time value may be converted
to a UTC form using the time zone rules for that location, if
applicable.](https://www.omg.org/spec/SCE/1.0)

[Note: projecting time zone rules into the future may only be safe for
near-term date-time values.](https://www.omg.org/spec/SCE/1.0)

[A date and time **d** that has a UTC form can be represented as a
number of seconds since a reference date and time (called the epoch). We
write **valuedt(d)** to represent the number of seconds between **d**
and the epoch. The **valuedt** function is one- to-one and so it has an
inverse function **valuedt ^-1^**. *E.g.,* **valuedt^-1^(valuedt(d)) =
d. valuedt ^-1^** returns **null** rather than a date with a year
outside the legal range.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123027770 .anchor}days and time duration](https://www.omg.org/spec/SCE/1.0)

[Days and time durations in FEEL can be expressed using either a
duration literal (see grammar rule 65) or the duration() and days and
time duration() builtin functions (See
[10.3.4.1](#conversion-functions)). We use boldface days and time
duration literals to represent values in the semantic domain. The
literal format of the characters within the quotes of the string literal
is defined by the lexical space of the XPath Data Model dayTimeDuration
datatype. A days and time duration in the semantic domain is a sequence
of numbers for the days, hours, minutes, and seconds of duration,
normalized such that the sum of these numbers is minimized. For example,
FEEL(*duration(\"P0DT25H\")*) =
**P1DT1H**.](https://www.omg.org/spec/SCE/1.0)

[The value of a days and time duration can be expressed as a number of
seconds. *E.g.*, **valuedtd(P1DT1H) = 90000.** The **valuedtd** function
is one-to-one and so it has an inverse function **valuedtd ~-1~**.
*E.g.,* **valuedtd ^-1^(90000) =
P1DT1H.**](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123108493 .anchor}years and months duration](https://www.omg.org/spec/SCE/1.0)

[Years and months durations in FEEL can be expressed using either a
duration literal (see grammar rule 65) or the duration() and years and
months duration() builtin functions (See
[10.3.4.1](#conversion-functions)). We use boldface years and month
duration literals to represent values in the semantic domain. The
literal format of the characters within the quotes of the string literal
is defined by the lexical space of the XPath Data Model
yearMonthDuration datatype. A years and months duration in the semantic
domain is a pair of numbers for the years and months of duration,
normalized such that the sum of these numbers is minimized. For example,
FEEL(*duration(\"P0Y13M\")*) =
**P1Y1M**.](https://www.omg.org/spec/SCE/1.0)

[The value of a years and months duration can be expressed as a number
of months. *E.g.*, **value~ymd~(P1Y1M) = 13.** The **valueymd** function
is one-to-one and so it has an inverse function **valueymd ~-1~**.
*E.g.,* **valueymd ^-1^(13) =
P1Y1M.**](https://www.omg.org/spec/SCE/1.0)

#### [Ternary logic](https://www.omg.org/spec/SCE/1.0)

[FEEL, like SQL and PMML, uses of ternary logic for truth values. This
makes **and** and **or** complete functions from ***D** x **D** →
**D***. Ternary logic is used in Predictive Modeling Markup Language to
model missing data values.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123042379 .anchor}Lists and filters](https://www.omg.org/spec/SCE/1.0)

[Lists are immutable and may be nested. The *first* element of a list
*L* can be accessed using *L\[1\]* and the *last* element can be
accessed using *L\[-1\]*. The *n^th^* element from the beginning can be
accessed using *L\[n\],* and the *n^th^* element from the end can be
accessed using *L\[-n\]*.](https://www.omg.org/spec/SCE/1.0)

[If FEEL(*L*) = **L** is a list in the FEEL semantic domain, the first
element is FEEL(*L\[1\]*) = **L\[1\]**. If **L** does not contain **n**
items, then **L\[n\] is null**.](https://www.omg.org/spec/SCE/1.0)

[**L** can be filtered with a Boolean expression in square brackets. The
expression in square brackets can reference a list element using the
name *item*, unless the list element is a context that contains the key
**\"item\"**. If the list element is a context, then its context entries
may be referenced within the filter expression without the *\'item.\'*
prefix. For example: *\[1, 2, 3, 4\]\[item \> 2\] = \[3,
4\]*](https://www.omg.org/spec/SCE/1.0)

> [*\[ {x:1, y:2}, {x:2, y:3} \]\[x=1\] = \[{x:1,
> y:2}\]*](https://www.omg.org/spec/SCE/1.0)

[The filter expression is evaluated for each item in list, and a list
containing only items where the filter expression is **true** is
returned. E.g.:](https://www.omg.org/spec/SCE/1.0)

[\[ {x:1, y:2}, {x:null, y:3} \]\[x \< 2\] = \[{x:1,
y:2}\]](https://www.omg.org/spec/SCE/1.0)

[The expression to be filtered is subject to implicit conversions
([10.3.2.9.4](#_Ref123108316)) before the entire expression is
evaluated.](https://www.omg.org/spec/SCE/1.0)

[For convenience, a selection using the \".\" operator with a list of
contexts on its left hand side returns a list of selections, *i.e.*
FEEL(*e.f,* **c**) = **\[** FEEL(*f*, **c\'**)**,** FEEL(*f*,
**c\"**)**, \... \]** where FEEL(*e*) = **\[ e\', e\", \... \]** and
**c\'** is **c** augmented with the context entries of **e\'**, **c\"**
is **c** augmented with the context entries of **e\"**, etc. For
example:](https://www.omg.org/spec/SCE/1.0)

[*\[ {x:1, y:2}, {x:2, y:3} \].y =
\[2,3\]*](https://www.omg.org/spec/SCE/1.0)

[*\[ {x:1, y:2}, {x:2} \].y = \[ 2, null
\]*](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123126589 .anchor}Context](https://www.omg.org/spec/SCE/1.0)

[A FEEL context is a partially ordered collection of (key, expression)
pairs called context entries. In the syntax, keys can be either names or
strings. Keys are mapped to strings in the semantic domain. These
strings are distinct within a context. A context in the domain is
denoted using bold FEEL syntax with string keys, *e.g.* **{ \"key1\" :
expr1, \"key2\" : expr2, \... }**.](https://www.omg.org/spec/SCE/1.0)

[The syntax for selecting the value of the entry named *key1* from
context-valued expression *m* is
*m.key1.*](https://www.omg.org/spec/SCE/1.0)

[If *key1* is not a legal name or for whatever reason one wishes to
treat the key as a string, the following syntax is allowed: *get
value(m, \"key1 \").* Selecting a value by key from context **m** in the
semantic domain is denoted as **m.key1** or **get value(m,
\"key1\")**](https://www.omg.org/spec/SCE/1.0)

[To retrieve a list of key, value pairs from a context *m*, the
following built-in function may be used*: get entries(m).* For example,
the following is true: *get entries({key1: \"value1 \"})\[key= \"key1
\"\].value = \"value1\"*](https://www.omg.org/spec/SCE/1.0)

[An expression in a context entry may not reference the key of the same
context entry but may reference keys (as QNs) from previous context
entries in the same context, as well as other values (as QNs) in
scope.](https://www.omg.org/spec/SCE/1.0)

[These references SHALL be acyclic and form a partial order. The
expressions in a context SHALL be evaluated consistent with this partial
order.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123108337 .anchor}Ranges](https://www.omg.org/spec/SCE/1.0)

[FEEL supports a compact syntax for a range of values, useful in
decision table test cells and elsewhere. Ranges can be syntactically
represented either:](https://www.omg.org/spec/SCE/1.0)

a)  
b)  

[as a comparison operator and a single endpoint (grammar rule 7.a.) or a
pair of endpoints and endpoint inclusivity flags that indicate whether
one or both endpoints are included in the range (grammar rule 7.b.); on
this case, endpoints must be of equivalent types (see section
[10.3.2.9.1](#_Ref193887988)for the definition of type equivalence) and
the endpoints must be ordered such that range start \<= range end.
Endpoints can be expressions (grammar rule 16) of the following types:
number, string, date, time, date and time, or duration. The following
are examples of valid ranges:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 
- 

[\< 10 \>= date("2019-03-31") \>= @"2019-03-31" \<= duration("PT01H")
\<= @"PT01H" \[ 5 .. 10 \] ( birthday .. @"2019-01-01" ) Ranges are
mapped into the semantic domain as a typed instance of the *range* type.
If the syntax with a single endpoint and an operator is used, then the
other endpoint is undefined, and the inclusivity flag is set to false.
E.g.:](https://www.omg.org/spec/SCE/1.0)

+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-----------------------------------------------+
| > [**range**](https://www.omg.org/spec/SCE/1.0) | > [**start                                      | > [**start**](https://www.omg.org/spec/SCE/1.0) | > [**end**](https://www.omg.org/spec/SCE/1.0)   | [**end                                        |
|                                                 | > included**](https://www.omg.org/spec/SCE/1.0) |                                                 |                                                 | included**](https://www.omg.org/spec/SCE/1.0) |
+=================================================+=================================================+=================================================+=================================================+===============================================+
| > [\[1..10\]](https://www.omg.org/spec/SCE/1.0) | > [true](https://www.omg.org/spec/SCE/1.0)      | > [1](https://www.omg.org/spec/SCE/1.0)         | > [10](https://www.omg.org/spec/SCE/1.0)        | [true](https://www.omg.org/spec/SCE/1.0)      |
+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-----------------------------------------------+
| > [(1..10\]](https://www.omg.org/spec/SCE/1.0)  | > [false](https://www.omg.org/spec/SCE/1.0)     | > [1](https://www.omg.org/spec/SCE/1.0)         | > [10](https://www.omg.org/spec/SCE/1.0)        | [true](https://www.omg.org/spec/SCE/1.0)      |
+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-----------------------------------------------+
| > [\<= 10](https://www.omg.org/spec/SCE/1.0)    | > [false](https://www.omg.org/spec/SCE/1.0)     | > [undefined](https://www.omg.org/spec/SCE/1.0) | > [10](https://www.omg.org/spec/SCE/1.0)        | [true](https://www.omg.org/spec/SCE/1.0)      |
+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-----------------------------------------------+
| > [\> 1](https://www.omg.org/spec/SCE/1.0)      | > [false](https://www.omg.org/spec/SCE/1.0)     | > [1](https://www.omg.org/spec/SCE/1.0)         | > [undefined](https://www.omg.org/spec/SCE/1.0) | [false](https://www.omg.org/spec/SCE/1.0)     |
+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-------------------------------------------------+-----------------------------------------------+

: [Table 42: Examples of range properties
values](https://www.omg.org/spec/SCE/1.0)

[The semantics of comparison expressions involving ranges (grammar rules
49c and 49d) is defined in [Table 56](#_Ref113975217), [Table
***55***](#_Ref113975124), [Table 53](#_Ref113975103), and [Table
51](#_Ref127818995). The same rules apply when ranges are created
programmatically, e.g., using the range
function.](https://www.omg.org/spec/SCE/1.0)

#### [Functions](https://www.omg.org/spec/SCE/1.0)

[The FEEL function literal is given by grammar rule 55. Functions can
also be specified in **DMN** via Function Definitions (see
[6.3.9](#_Ref124325171)). The constructed type (*T*1, . . . , *Tn*) →
*U* contains the function values that take arguments of types *T1, . . .
, Tn* and yield results of type *U,* regardless of the way the function
syntax (e.g., FEEL literal or **DMN** Function Definition). In the case
of exactly one argument type *T* → *U* is a shorthand for (*T* ) →
*U*.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123123488 .anchor}Relations between types](https://www.omg.org/spec/SCE/1.0)

[Every FEEL expression executed in a certain context has a value in
**D**, and every value has a type. The FEEL types are organized as a
lattice (see [Figure 10-26](#_Ref123042109)), with upper type *Any* and
lower type *Null*. The lattice determines the conformance of the
different types to each other. For example, because comparison is
defined only between values with conforming types, you cannot compare a
number with a boolean or a string.](https://www.omg.org/spec/SCE/1.0)

[The FEEL lattice contains several inner abstract types (e.g.
*comparable*, *temporal*, *duration* and *context*) to represent unions
of concrete types (e.g. *number* and *string*). For example, *duration*
is the union of the *years and months duration* and *days and time
duration* types. The *context* type is the union of all context types
and is equivalent to context\<\>.](https://www.omg.org/spec/SCE/1.0)

[We define **type(***e***)** as the type of the domain element
**FEEL(***e,* **c),** where *e* is an expression defined by grammar
rule 1. Literals for numbers, strings, booleans, null, date, time, date
and time and duration literals are mapped to the corresponding node in
lattice **L**. Complex expression such as list, contexts and functions
are mapped to the corresponding parameterized nodes in lattice **L**.
For example, see [Table
43](#_Ref113969934).](https://www.omg.org/spec/SCE/1.0)

+-----------------------------------------------+---------------------------------------------------------+
| [*e*](https://www.omg.org/spec/SCE/1.0)       | > [**type(***e***)**](https://www.omg.org/spec/SCE/1.0) |
+===============================================+=========================================================+
| [*123*](https://www.omg.org/spec/SCE/1.0)     | > [number](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------+---------------------------------------------------------+
| [*true*](https://www.omg.org/spec/SCE/1.0)    | > [boolean](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------+---------------------------------------------------------+
| [*\"abc\"*](https://www.omg.org/spec/SCE/1.0) | > [string](https://www.omg.org/spec/SCE/1.0)            |
+-----------------------------------------------+---------------------------------------------------------+
| [*date(\"2017-01-01                           | > [date](https://www.omg.org/spec/SCE/1.0)              |
| \")*](https://www.omg.org/spec/SCE/1.0)       |                                                         |
+-----------------------------------------------+---------------------------------------------------------+
| [*\[\"a\", \"b\",                             | > [list\<string\>](https://www.omg.org/spec/SCE/1.0)    |
| \"c\"\]*](https://www.omg.org/spec/SCE/1.0)   |                                                         |
+-----------------------------------------------+---------------------------------------------------------+
| [*\[\"a\", true,                              | > [list\<Any\>](https://www.omg.org/spec/SCE/1.0)       |
| 123\]*](https://www.omg.org/spec/SCE/1.0)     |                                                         |
+-----------------------------------------------+---------------------------------------------------------+
| [\[1..10)](https://www.omg.org/spec/SCE/1.0)  | > [range\<number\>](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------------+---------------------------------------------------------+
| [\>= @"201                                    | > [range\<date\>](https://www.omg.org/spec/SCE/1.0)     |
| 9-01-01"](https://www.omg.org/spec/SCE/1.0)   |                                                         |
+-----------------------------------------------+---------------------------------------------------------+
| [e](https://www.omg.org/spec/SCE/1.0)         | > [type(e)](https://www.omg.org/spec/SCE/1.0)           |
+-----------------------------------------------+---------------------------------------------------------+
| [{\"name\": \"Peter\", age:                   | > [context\<"age": number,                              |
| 30}](https://www.omg.org/spec/SCE/1.0)        | > "name":string\>](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------+---------------------------------------------------------+
| [function f(x: number, y: number) x +         | > [(number, number) →                                   |
| y](https://www.omg.org/spec/SCE/1.0)          | > number](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------+---------------------------------------------------------+
| [DecisionA](https://www.omg.org/spec/SCE/1.0) | > [context\<"id":number,                                |
|                                               | > "name":string\>](https://www.omg.org/spec/SCE/1.0)    |
+-----------------------------------------------+---------------------------------------------------------+
| [BkmA](https://www.omg.org/spec/SCE/1.0)      | > [(number, number) →                                   |
|                                               | > number](https://www.omg.org/spec/SCE/1.0)             |
+-----------------------------------------------+---------------------------------------------------------+

: [[]{#_Ref113969934 .anchor}Table 43: Examples of types of domain
elements](https://www.omg.org/spec/SCE/1.0)

[A type expression *e* defined by grammar rule 54 is mapped to the nodes
in the lattice **L** by function **type(***e***)** as follows: primitive
data type names are mapped to the node with the same name (e.g.,
*string* is mapped the **string**
node)](https://www.omg.org/spec/SCE/1.0)

[• *Any* is mapped to the node
**Any**](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 

[*Null* is mapped to the node **Null** *list\< T\>* is mapped to the
**list** node with the parameter **type(***T***)** *context(k1:T1, \...,
k~n~:T~n~\> where n≥1* is mapped to the **context** node with parameters
k1: **type(***T1***)**, \..., k~n~: **type(***T~n~***)** *function\< T1,
\... T~n~\> -\> T* is mapped to the **function** node with signature
**type(***T1***)**, \..., **type(***T~n~***)** -\> **type(***T***)**
Type names defined in the *itemDefinitions* section are mapped similarly
to the context types (see rule above). If none of the above rules can be
applied (e.g., type name does not exist in the decision model) the type
expression is semantically incorrect.\
We define two relations between
types:](https://www.omg.org/spec/SCE/1.0)

- 

[Equivalence (T ≡ S): Types T and S are interchangeable in all contexts.
Conformance (T \<:S): An instance of type T can be substituted at each
place where an instance of type S is
expected.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref193887988 .anchor}Type Equivalence](https://www.omg.org/spec/SCE/1.0)

[The equivalence relationship (≡) between types is defined as
follows:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 

[Primitive datatypes are equivalent to themselves, e.g., string ≡
string. Two list types *list\< T\>* and *list\<S\>* are equivalent iff
*T* is equivalent to *S*. For example, the types of \["a", "b"\] and
\["c"\] are equivalent. Two context types *context\<k~1~: T~1~, \...,
k~n~: T~n~\>* and *context\<l~1~: S ~1~, \..., l~m~: S~m~\>* are
equivalent iff n = m and for every *k~i~ :T~i~* there is a unique *l~j~
:S~j~* such that *k~i~ = l~j~* and *T~i~* ≡ *S~j~* for i = 1, n. Context
types are the types defined via ItemDefinitions or the types associated
to FEEL context literals such as { "name": "John", "age": 25}. Two
function types (*T~1~, \..., T~n~) →U* and (*S~1~, \..., S~m~) →V* are
equivalent iff n = m, *T~i~* ≡ *S~j~* and *T~i~* and *S~j~* have the
same type qualifiers for i = 1, n and *U* ≡ *V*. Two range types
*range\< T\>* and *range\<S\>* are equivalent iff *T* is equivalent to
*S*. For example, the types of \[1..10\] and \[30..40\] are equivalent.
Type equivalence is transitive: if *type1* is equivalent to *type2*, and
*type2 is equivalent to type3*, then *type1* is equivalent to
*type3*.](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref127201378 .anchor}Type Conformance](https://www.omg.org/spec/SCE/1.0)

[The conformance relation (\<:) is defined as
follows:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 
- 
- 
- 
- 
- 
- 

[Conformance includes equivalence. If *T* ≡ *S* then *T* \<: *S* For
every type *T*, *Null* \<: *T* \<: *Any,* where *Null* is the lower type
in the lattice and *Any* the upper type in the lattice. The list type
*list\< T\>* conforms to *list\<S\>* iff *T* conforms to *S.* The
context type *context\<k~1~: T~1~, \..., k~n~: T~n~\>* conforms to
*context\<l~1~: S ~1~, \..., l~m~: S~m~\>* iff n ≥ m and for every *li :
S~i~* there is a unique *~kj:Tj~* such that *l~i~ = k~j~* and *T~j~* \<:
*S~i~* for i = 1, m The function type (*T~1~, \..., T~n~) →U* conforms
to type (*S~1~, \..., S~m~) →V* if *T~i~* has no type qualifiers for i =
1, n and one of the following is satisfied:if n = m, *S~i~* \<: *T~i~*
for i = 1, n and *U* \<: *V*.if n = m - 1 and second function type has
an optional parameter, *S~i~* \<: *T~i~* for i = 1, m-1 and *U* \<:
*V*if n \< m and second function type has a variable argument parameter,
*S~i~* \<: *T~i~* for i = 1, n-1, *S~n~* \<: *T~i~* for i = n, m and *U*
\<: *V*The FEEL functions follow the "contravariant function argument
type" and "covariant function return type" principles to provide type
safety.The range type *range\< T\>* conforms to *range\< S\>* iff T
conforms to S. Type conformance is transitive: if *type1* conforms to
*type2*, and *type2* conforms to *type3*, then *type1* conforms to
*type3*.](https://www.omg.org/spec/SCE/1.0)

[![](media/image109.png){width="5.750137795275591in"
height="4.027777777777778in"}](https://www.omg.org/spec/SCE/1.0)

[[]{#_Ref123042109 .anchor}Figure 10-26: FEEL type
lattice](https://www.omg.org/spec/SCE/1.0)

##### [Examples](https://www.omg.org/spec/SCE/1.0)

[Let us consider the following
ItemDefinitions:](https://www.omg.org/spec/SCE/1.0)

[\<itemDefinition
name=\"Employee1\"\>](https://www.omg.org/spec/SCE/1.0)

> [\<itemComponent name=\"id\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"name\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>string\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)

[\</itemDefinition\>](https://www.omg.org/spec/SCE/1.0)

[\<itemDefinition
name=\"Employee2\"\>](https://www.omg.org/spec/SCE/1.0)

> [\<itemComponent name=\"name\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>string\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"id\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemDefinition\>](https://www.omg.org/spec/SCE/1.0)

[\<itemDefinition
name=\"Employee3\"\>](https://www.omg.org/spec/SCE/1.0)

> [\<itemComponent name=\"id\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"name\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>string\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"age\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)

[\</itemDefinition\>](https://www.omg.org/spec/SCE/1.0)

[\<itemDefinition isCollection="true"
name=\"Employee3List\"\>](https://www.omg.org/spec/SCE/1.0)

> [\<itemComponent name=\"id\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"name\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>string\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<itemComponent name=\"age\"\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<typeRef\>number\</typeRef\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</itemComponent\>](https://www.omg.org/spec/SCE/1.0)

[\</itemDefinition\>](https://www.omg.org/spec/SCE/1.0)

> [and the decisions *Decision1*, *Decision2, Decision3 and Decision4*
> with corresponding *typeRefs Employee1*, *Employee2,* *Employee3* and
> *Employee3List*.](https://www.omg.org/spec/SCE/1.0)

[[Table 44](#_Ref113974256) provides examples for *equivalence to* and
*conforms to* relations.](https://www.omg.org/spec/SCE/1.0)

+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type1**](https://www.omg.org/spec/SCE/1.0)                      | > [**type2**](https://www.omg.org/spec/SCE/1.0)                    | > [**equivalent                             | > [**conforms                               |
|                                                                      |                                                                    | > to**](https://www.omg.org/spec/SCE/1.0)   | > to**](https://www.omg.org/spec/SCE/1.0)   |
+======================================================================+====================================================================+=============================================+=============================================+
| > [number](https://www.omg.org/spec/SCE/1.0)                         | > [number](https://www.omg.org/spec/SCE/1.0)                       | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [string](https://www.omg.org/spec/SCE/1.0)                         | > [string](https://www.omg.org/spec/SCE/1.0)                       | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [string](https://www.omg.org/spec/SCE/1.0)                         | > [date](https://www.omg.org/spec/SCE/1.0)                         | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [date](https://www.omg.org/spec/SCE/1.0)                           | [date and time](https://www.omg.org/spec/SCE/1.0)                  | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***Decision 1***)**](https://www.omg.org/spec/SCE/1.0)     | [**type(***Decision2***)**](https://www.omg.org/spec/SCE/1.0)      | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***Decision1***)**](https://www.omg.org/spec/SCE/1.0)      | [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)      | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)      | [**type(***Decision1***)**](https://www.omg.org/spec/SCE/1.0)      | > [False](https://www.omg.org/spec/SCE/1.0) | > [True](https://www.omg.org/spec/SCE/1.0)  |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***Decision 1***)**](https://www.omg.org/spec/SCE/1.0)     | > [**type(***{\"id\": 1,*](https://www.omg.org/spec/SCE/1.0)       | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
|                                                                      | >                                                                  |                                             |                                             |
|                                                                      | > [*\"name \" :\"Peter\"}***)**](https://www.omg.org/spec/SCE/1.0) |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***{\"id\": 1,*](https://www.omg.org/spec/SCE/1.0)         | [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)      | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
| >                                                                    |                                                                    |                                             |                                             |
| > [*\"name \" :\"Peter\"}***)**](https://www.omg.org/spec/SCE/1.0)   |                                                                    |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***{\"id\": 1,*](https://www.omg.org/spec/SCE/1.0)         | [**type(***Decision1***)**](https://www.omg.org/spec/SCE/1.0)      | > [False](https://www.omg.org/spec/SCE/1.0) | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*\"name\":\"Peter\", \"age\":                                     |                                                                    |                                             |                                             |
| > 45}***)**](https://www.omg.org/spec/SCE/1.0)                       |                                                                    |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***{\"id\": 1,*](https://www.omg.org/spec/SCE/1.0)         | [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)      | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*\"name\":\"Peter\", \"age\":                                     |                                                                    |                                             |                                             |
| > 45}***)**](https://www.omg.org/spec/SCE/1.0)                       |                                                                    |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type***(\[1, 2, 3\]**)***](https://www.omg.org/spec/SCE/1.0)    | [**type***(\[\"1\", \"2\",                                         | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
|                                                                      | \"3\"\]**)***](https://www.omg.org/spec/SCE/1.0)                   |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type***(\[1, 2, 3\]**)***](https://www.omg.org/spec/SCE/1.0)    | [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)      | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***\[{\"id\": 1,*](https://www.omg.org/spec/SCE/1.0)       | [**type(***Decision4***)**](https://www.omg.org/spec/SCE/1.0)      | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*\"name\":\"Peter\", \"age\":                                     |                                                                    |                                             |                                             |
| > 45}\]***)**](https://www.omg.org/spec/SCE/1.0)                     |                                                                    |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***Decision4***)**](https://www.omg.org/spec/SCE/1.0)      | > [**type(***Decision3***)**](https://www.omg.org/spec/SCE/1.0)    | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          | [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          | [*1 ) →Employee2***)**](https://www.omg.org/spec/SCE/1.0)          |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) | > [True](https://www.omg.org/spec/SCE/1.0)  |
| >                                                                    |                                                                    |                                             |                                             |
| > [*1 ) →Employee3***)**](https://www.omg.org/spec/SCE/1.0)          | [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | [**type(***function(x:Employee*](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
| >                                                                    |                                                                    |                                             |                                             |
| > [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          | [*1 ) →Employee1***)**](https://www.omg.org/spec/SCE/1.0)          |                                             |                                             |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type(** \[1..10\] **)**](https://www.omg.org/spec/SCE/1.0)      | > [**type(** (20..100) **)**](https://www.omg.org/spec/SCE/1.0)    | > [True](https://www.omg.org/spec/SCE/1.0)  | > [True](https://www.omg.org/spec/SCE/1.0)  |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type1**](https://www.omg.org/spec/SCE/1.0)                      | > [**type2**](https://www.omg.org/spec/SCE/1.0)                    | > [equivalent                               | > [conforms                                 |
|                                                                      |                                                                    | > to](https://www.omg.org/spec/SCE/1.0)     | > to](https://www.omg.org/spec/SCE/1.0)     |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+
| > [**type( \[1..10\] )**](https://www.omg.org/spec/SCE/1.0)          | > [**type( \["a".."x"\] )**](https://www.omg.org/spec/SCE/1.0)     | > [False](https://www.omg.org/spec/SCE/1.0) | > [False](https://www.omg.org/spec/SCE/1.0) |
+----------------------------------------------------------------------+--------------------------------------------------------------------+---------------------------------------------+---------------------------------------------+

: [[]{#_Ref113974256 .anchor}Table 44: Examples of equivalence and
conformance relations](https://www.omg.org/spec/SCE/1.0)

##### [[]{#_Ref123108316 .anchor}Type conversions](https://www.omg.org/spec/SCE/1.0)

[The type of a FEEL expression *e* is determined from the value **e** =
FEEL(*e*, ***s***) in the semantic domain, where ***s*** is a set of
variable bindings (see [10.3.2.11](#_Ref123036546)and
[10.3.2.12](#_Ref123042348)). When an expression appears in a certain
context it must be compatible with a type expected in that context,
called the *target type*. After the type of the expression is deduced,
an implicit conversion from the type of the expression to the target
type can be performed sometimes. If an implicit conversion is mandatory
but it cannot be performed the result is
**null**.](https://www.omg.org/spec/SCE/1.0)

[In implicit type conversions, the data type is converted automatically
without loss of information. There are several possible implicit type
conversions:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

> [*to singleton list*:\
> When the type of the expression is T and the target type is List\<T\>
> the expression is converted to a singleton list.*from singleton
> list*:\
> When the type of the expression is List\<T\>, the value of the
> expression is a singleton list and the target type is T, the
> expression is converted by unwrapping the first element.*from date to
> date and time*:\
> When the type of the expression is date and the target type is date
> and time, the expression is converted to a date time value in which
> the time of day is UTC midnight (00:00:00).*from decimal to
> integer*:When the type of an expression is number and the expected
> value in the context is an integer (e.g. arguments of built-in
> functions substring and decimal) any fractional part of this number
> will be discarded.](https://www.omg.org/spec/SCE/1.0)

[There is one type of conversion to handle semantic
errors:](https://www.omg.org/spec/SCE/1.0)

- 

[*conforms to* (as defined in [10.3.2.9.2](#_Ref127201378) Type
Conformance):\
When the type of the expression is S, the target type is T, and S
conforms to T the value of expression remains unchanged. Otherwise, the
result is **null**.There are several kinds of contexts in which
conversions may occur:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

###### [Filter context ([10.3.2.5](#_Ref123042379)) in which a filter expression is present. The expression to be filtered is subject to implicit conversion *to singleton list*.Invocation context ([Table 64](#_Ref114042120)) in which an actual parameter is bound to a formal parameter of a function. The actual parameter is subject to implicit conversions.Binding contexts in which the result of a DRG Element's logic is bound to the output variable. If after applying the implicit conversions the converted value and the target type do not conform, the *conforms to* conversion is applied.Examples](https://www.omg.org/spec/SCE/1.0)

[The table below contains several examples for singleton list
conversions.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------+------------------------------------------------------+--------------------------------------------------+
| > [**Expression**](https://www.omg.org/spec/SCE/1.0) | > [**Conversion**](https://www.omg.org/spec/SCE/1.0) | > [**Result**](https://www.omg.org/spec/SCE/1.0) |
+======================================================+======================================================+==================================================+
| > [*3\[item \>                                       | [*3* is converted to *\[3\]* as this a filter        | > [**\[3\]**](https://www.omg.org/spec/SCE/1.0)  |
| > 2\]*](https://www.omg.org/spec/SCE/1.0)            | context, and an *to singleton list* is               |                                                  |
|                                                      | applied](https://www.omg.org/spec/SCE/1.0)           |                                                  |
+------------------------------------------------------+------------------------------------------------------+--------------------------------------------------+
| > [*contains(\[\"foobar\"\],                         | [*\[\"foobar\"\]* is converted to *\"foobar\"*, as   | > [**false**](https://www.omg.org/spec/SCE/1.0)  |
| > \"of\")*](https://www.omg.org/spec/SCE/1.0)        | this is an invocation context and *from singleton    |                                                  |
|                                                      | list* is applied](https://www.omg.org/spec/SCE/1.0)  |                                                  |
+------------------------------------------------------+------------------------------------------------------+--------------------------------------------------+

: [Table 45: Examples of singleton list
conversions](https://www.omg.org/spec/SCE/1.0)

[In the example below, before binding variable *decision_003* to value
*\"123\"* the conversion to the target type (number) fails, hence the
variable is bound to *null*.](https://www.omg.org/spec/SCE/1.0)

[\<decision name=\"decision_003\"
id=\"\_decision_003\"\>](https://www.omg.org/spec/SCE/1.0)

> [\<variable name=\"decision_003\"
> typeRef=\"number\"/\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<literalExpression\>](https://www.omg.org/spec/SCE/1.0)
>
> [\<text\>*"123*"\</text\>](https://www.omg.org/spec/SCE/1.0)
>
> [\</literalExpression\>](https://www.omg.org/spec/SCE/1.0)

[\</decision\>](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123035134 .anchor}Decision Table](https://www.omg.org/spec/SCE/1.0)

[The normative notation for decision tables is specified in Clause
[8](#_Ref123042464). Each input expression SHALL be a textual expression
(grammar rule 2). Each list of input values SHALL be an instance of
unary tests (grammar rule 15). The value that is tested is the value of
the input expression of the containing InputClause. Each list of output
values SHALL be an instance of unary tests (grammar rule 15).\
The value that is tested is the value of a selected output entry of the
containing OutputClause. Each input entry SHALL be an instance of unary
tests (grammar rule 15). Rule annotations are ignored in the execution
semantics.](https://www.omg.org/spec/SCE/1.0)

[The decision table components are shown in [Figure
8-5](#_Ref123030454): Rules as rows -- schematic layout, and also
correspond to the metamodel in clause [8.3](#_Ref123042593) For
convenience, [Figure 8-5](#_Ref123030454) is reproduced
here.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------------------------------------------+------------------------------------------+------------------------------------------+
| [**information item name**](https://www.omg.org/spec/SCE/1.0)                      |                                          |                                          |
+:=======================================:+:========================================:+:========================================:+:========================================:+
| > [H](https://www.omg.org/spec/SCE/1.0) | > [input expression                      | > [input expression                      | [Output                                  |
|                                         | > 1](https://www.omg.org/spec/SCE/1.0)   | > 2](https://www.omg.org/spec/SCE/1.0)   | label](https://www.omg.org/spec/SCE/1.0) |
|                                         +------------------------------------------+------------------------------------------+------------------------------------------+
|                                         | [input value                             | [input value                             | > [output value 1a, output value         |
|                                         | 1a,](https://www.omg.org/spec/SCE/1.0)   | 2a,](https://www.omg.org/spec/SCE/1.0)   | > 1b](https://www.omg.org/spec/SCE/1.0)  |
|                                         |                                          |                                          |                                          |
|                                         | > [input value                           | > [input value                           |                                          |
|                                         | > 1b](https://www.omg.org/spec/SCE/1.0)  | > 2b](https://www.omg.org/spec/SCE/1.0)  |                                          |
+-----------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
| > [1](https://www.omg.org/spec/SCE/1.0) | > [input entry                           | > [input entry                           | [output entry                            |
|                                         | > 1.1](https://www.omg.org/spec/SCE/1.0) | > 2.1](https://www.omg.org/spec/SCE/1.0) | 1.1](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------+                                          +------------------------------------------+------------------------------------------+
| > [2](https://www.omg.org/spec/SCE/1.0) |                                          | > [input entry                           | [output entry                            |
|                                         |                                          | > 2.2](https://www.omg.org/spec/SCE/1.0) | 1.2](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
| > [3](https://www.omg.org/spec/SCE/1.0) | > [input entry                           | > [-](https://www.omg.org/spec/SCE/1.0)  | [output entry                            |
|                                         | > 1.2](https://www.omg.org/spec/SCE/1.0) |                                          | 1.3](https://www.omg.org/spec/SCE/1.0)   |
+-----------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+

[The semantics of a decision table is specified by first composing its
literal expressions and unary tests into Boolean expressions that are
mapped to the semantic domain and composed into rule matches then rule
hits. Finally, some of the decision table output expressions are mapped
to the semantic domain and comprise the result of the decision table
interpretation. Decision table components are detailed in [Table
46](#_Ref113974415).](https://www.omg.org/spec/SCE/1.0)

+--------------------------------------------------+-------------------------------------------------------+
| > [**Component name (\* means                    | > [**Description**](https://www.omg.org/spec/SCE/1.0) |
| > optional)**](https://www.omg.org/spec/SCE/1.0) |                                                       |
+==================================================+=======================================================+
| > [input                                         | [One of the N\>=0 input expressions, each a literal   |
| > expression](https://www.omg.org/spec/SCE/1.0)  | expression](https://www.omg.org/spec/SCE/1.0)         |
+--------------------------------------------------+-------------------------------------------------------+
| > [input                                         | [One of the N input values, corresponding to the N    |
| > values\*](https://www.omg.org/spec/SCE/1.0)    | input expressions. Each is a unary tests literal (see |
|                                                  | below).](https://www.omg.org/spec/SCE/1.0)            |
+--------------------------------------------------+-------------------------------------------------------+
| > [output                                        | [A unary tests literal for the                        |
| > values\*](https://www.omg.org/spec/SCE/1.0)    | output.](https://www.omg.org/spec/SCE/1.0)            |
|                                                  |                                                       |
|                                                  | [(In the event of M\>1 output components (see Figure  |
|                                                  | 8-12), each output component may have its own output  |
|                                                  | values)](https://www.omg.org/spec/SCE/1.0)            |
+--------------------------------------------------+-------------------------------------------------------+
| > [rules](https://www.omg.org/spec/SCE/1.0)      | [a list of R\>0 rules. A rule is a list of N input    |
|                                                  | entries followed by M output entries. An input entry  |
|                                                  | is a unary tests literal. An output entry is a        |
|                                                  | literal                                               |
|                                                  | expression.](https://www.omg.org/spec/SCE/1.0)        |
+--------------------------------------------------+-------------------------------------------------------+
| > [hit                                           | [one of: \"U\", \"A\", "P", "F", \"R\", \"O\", \"C\", |
| > policy\*](https://www.omg.org/spec/SCE/1.0)    | \"C+\", \"C#\",                                       |
|                                                  | \"C\<\",](https://www.omg.org/spec/SCE/1.0)           |
|                                                  |                                                       |
|                                                  | ["C\>" (default is                                    |
|                                                  | \"U\")](https://www.omg.org/spec/SCE/1.0)             |
+--------------------------------------------------+-------------------------------------------------------+
| > [default output                                | [The default output value is one of the output        |
| > value\*](https://www.omg.org/spec/SCE/1.0)     | values. If M\>1, then default output value is a       |
|                                                  | context with entries composed of output component     |
|                                                  | names and output                                      |
|                                                  | values.](https://www.omg.org/spec/SCE/1.0)            |
+--------------------------------------------------+-------------------------------------------------------+

: [[]{#_Ref113974415 .anchor}Table 46: Semantics of decision
table](https://www.omg.org/spec/SCE/1.0)

[Unary tests (grammar rule 15) are used to represent both input values
and input entries. An input expression *e* is said to *satisfy* an input
entry *t* (with optional input values *v*), depending on the syntax of
*t*, as follows:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[grammar rule 15.a: FEEL(*e in (t)*)**=true** grammar rule 15.b: FEEL(*e
in (t)*)**=false** grammar rule 15.c when *v* is not provided: **e !=
null** grammar rule 15.c when *v* is provided: FEEL(*e in (v)*)**=true**
A rule with input entries *t1,t2,\...,tN* is said to *match* the input
expression list *\[e1,e2,\...,eN\]* (with optional input values list
*\[v1,v2, \...vN\]*) if *ei satisfies ti* (with optional input values
*vi*) for all *i* in 1..N.](https://www.omg.org/spec/SCE/1.0)

[A rule is *hit* if it is matched, and the hit policy indicates that the
matched rule\'s output value should be included in the decision table
result. Each hit results in one output value (multiple outputs are
collected into a single context value). Therefore, multiple hits require
aggregation.](https://www.omg.org/spec/SCE/1.0)

[The hit policy is specified using the initial letter of one of the
following boldface policy names.](https://www.omg.org/spec/SCE/1.0)

[Single hit policies:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[**Unique** -- only a single rule can be matched. **Any** -- multiple
rules can match, but they all have the same output, **Priority** --
multiple rules can match, with different outputs. The output that comes
first in the supplied *output values* list is returned, **First** --
return the first match in rule order, Multiple hit
policies:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

[**Collect** -- return a list of the outputs in arbitrary order, **Rule
order** -- return a list of outputs in rule order, **Output order** --
return a list of outputs in the order of the *output values* list The
Collect policy may optionally specify an *aggregation*, as
follows:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 
- 

[**C+** -- return the sum of the outputs **C#** -- return the count of
the outputs **C\<** -- return the minimum-valued output **C\>** --
return the maximum-valued output The *aggregation* is defined using the
following built-in functions specified in clause
[10.3.4.4](#list-functions): *sum, count, minimum, maximum*. To reduce
complexity, decision tables with compound outputs do not support
aggregation and support only the following hit policies: *Unique*,
*Any*, *Priority, First*, *Collect without operator*, and *Rule
order*.](https://www.omg.org/spec/SCE/1.0)

[A decision table may have no rule hit for a set of input values. In
this case, the result is given by the default output value, or **null**
if no default output value is specified. A complete decision table SHALL
NOT specify a default output value.](https://www.omg.org/spec/SCE/1.0)

[The semantics of a decision table invocation **DTI** are as
follows:](https://www.omg.org/spec/SCE/1.0)

1.  
2.  a)  
    b)  
3.  a)  
    b)  
    c)  

#### [Every rule in the rule list is matched with the input expression list. Matching is unordered. If no rules match, if a default output value *d* is specified, **DTI=**FEEL(*d*) else **DTI=null**. Else let *m* be the sublist of rules that match the input expression list. If the hit policy is \"First\" or \"Rule order\", order *m* by rule number. Let *o* be a list of output expressions, where the expression at index *i* is the output expression from rule *m\[i\]*. The output expression of a rule in a single output decision table is simply the rule\'s output entry. The output expression of a multiple output decision table is a context with entries composed from the output names and the rule\'s corresponding output entries. If the hit policy is \"Output order\", the decision table SHALL be single output, and *o* is ordered consistent with the order of the *output values*. Rule annotations are ignored for purposes of determining the expression value of a decision table. If a multiple hit policy is specified, DTI=FEEL(aggregation(o)), where aggregation is one of the built-in functions *sum, count, minimum* as specified in clause [10.3.4.4](#list-functions). else **DTI=**FEEL(*o\[1\]*). []{#_Ref123036546 .anchor}Scope and context stack](https://www.omg.org/spec/SCE/1.0)

[A FEEL expression *e* is always evaluated in a well-defined set of name
bindings that are used to resolve QNs in *e*. This set of name bindings
is called the scope of *e*. Scope is modeled as a list of contexts. A
scope **s** contains the contexts with entries that are in scope for
*e*. The last context in **s** is the *built-in* context. Next to last
in **s** is the *global* context. The first context in **s** is the
context immediately containing *e* (if any). Next are enclosing contexts
of *e* (if any).](https://www.omg.org/spec/SCE/1.0)

[The QN of *e* is the QN of the first context in **s** appended with .N,
where N is the name of entry in the first context of **s** containing
*e.* QNs in *e* are resolved by looking through the contexts in **s**
from first to last.](https://www.omg.org/spec/SCE/1.0)

##### [Local context](https://www.omg.org/spec/SCE/1.0)

[If *e* denotes the value of a context entry of context **m**, then
**m** is the local context for *e*, and **m** is the first element of
**s.** Otherwise, *e* has no local context and the first element of
**s** is the global context, or in some cases explained later, the first
element of **s** is a special
context.](https://www.omg.org/spec/SCE/1.0)

[All of the entries of **m** are in-scope for *e*, but the *depends on*
graph SHALL be acyclic. This provides a simple solution to the problem
of the confusing definition above: if **m** is the result of evaluating
the context expression *m* that contains *e*, how can we know it in
order to evaluate *e*? Simply evaluate the context entries in *depends
on* order.](https://www.omg.org/spec/SCE/1.0)

##### [Global context](https://www.omg.org/spec/SCE/1.0)

[The global context is a context created before the evaluation of *e*
and contains names and values for the variables defined outside
expression *e* that are accessible in *e*. For example, when *e* is the
body of a decision *D*, the global context contains entries for the
information requirements and knowledge requirements of *D* (i.e., names
and logic of the business knowledge models, decisions and decision
services required by *D)*.](https://www.omg.org/spec/SCE/1.0)

##### [Built-in context](https://www.omg.org/spec/SCE/1.0)

[The built-in context contains all the built-in
functions.](https://www.omg.org/spec/SCE/1.0)

##### [Special context](https://www.omg.org/spec/SCE/1.0)

[Some FEEL expressions are interpreted in a *special* context that is
pushed on the front of **s**. For example, a filter expression is
repeatedly executed with special first context containing the name
\'item\' bound to successive list elements. A function is executed with
a special first context containing argument name-\>value
mappings.](https://www.omg.org/spec/SCE/1.0)

[Qualified names (QNs) in FEEL expressions are interpreted relative to
**s**. The meaning of a FEEL expression *e* in scope **s** is denoted as
**FEEL(***e,* **s)**. We can also say that *e* evaluates to **e** in
scope **s**, or **e** = **FEEL(***e,* **s)**. Note that **e** and **s**
are elements of the FEEL domain. **s** is a list of
contexts.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123042348 .anchor}Mapping between FEEL and other domains](https://www.omg.org/spec/SCE/1.0)

[A FEEL expression *e* denotes a value **e** in the semantic domain.
Some kinds of values can be passed between FEEL and external Java
methods, between FEEL and external PMML or ONNX models, and between FEEL
and XML, as summarized in [Table 47](#_Ref113974496). An empty cell
means that no mapping is defined.](https://www.omg.org/spec/SCE/1.0)

+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [***FEEL                                     | > [***Java***](https://www.omg.org/spec/SCE/1.0)           | > [***XML***](https://www.omg.org/spec/SCE/1.0)      | > [***PMML***](https://www.omg.org/spec/SCE/1.0)        | > [***ONNX***](https://www.omg.org/spec/SCE/1.0) |
| > value***](https://www.omg.org/spec/SCE/1.0)  |                                                            |                                                      |                                                         |                                                  |
+================================================+============================================================+======================================================+=========================================================+==================================================+
| > [number](https://www.omg.org/spec/SCE/1.0)   | > [java.math.BigDecimal](https://www.omg.org/spec/SCE/1.0) | > [decimal](https://www.omg.org/spec/SCE/1.0)        | > [decimal,                                             | > [FLOAT, UINT8, INT8, UINT16, INT16, INT32,     |
|                                                |                                                            |                                                      | > PROB-NUMBER,](https://www.omg.org/spec/SCE/1.0)       | > INT64, FLOAT16, DOUBLE, UINT32, UINT64,        |
|                                                |                                                            |                                                      | >                                                       | > COMPLEX64, COMPLEX128, BFLOAT16, FLOAT8E4M3FN, |
|                                                |                                                            |                                                      | > [PERCENTAGE-NUMBER](https://www.omg.org/spec/SCE/1.0) | > FLOAT8E4M3FNUZ, FLOAT8E5M2, FLOAT8E5M2FNUZ,    |
|                                                |                                                            |                                                      |                                                         | > UINT4, INT4](https://www.omg.org/spec/SCE/1.0) |
|                                                |                                                            +------------------------------------------------------+---------------------------------------------------------+                                                  |
|                                                |                                                            | > [integer](https://www.omg.org/spec/SCE/1.0)        | > [integer ,                                            |                                                  |
|                                                |                                                            |                                                      | > INT-NUMBER](https://www.omg.org/spec/SCE/1.0)         |                                                  |
|                                                |                                                            +------------------------------------------------------+---------------------------------------------------------+                                                  |
|                                                |                                                            | > [double](https://www.omg.org/spec/SCE/1.0)         | > [double,                                              |                                                  |
|                                                |                                                            |                                                      | > REAL-NUMBER](https://www.omg.org/spec/SCE/1.0)        |                                                  |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [string](https://www.omg.org/spec/SCE/1.0)   | > [java.lang.String](https://www.omg.org/spec/SCE/1.0)     | > [string](https://www.omg.org/spec/SCE/1.0)         | > [string,                                              | > [STRING](https://www.omg.org/spec/SCE/1.0)     |
|                                                |                                                            |                                                      | > FIELD-NAME](https://www.omg.org/spec/SCE/1.0)         |                                                  |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [date, time, date and                        | > [javax.xml.datatype.](https://www.omg.org/spec/SCE/1.0)  | > [date, dateTime, time,                             | > [date, dateTime, time conversion required for         |                                                  |
| > time](https://www.omg.org/spec/SCE/1.0)      | >                                                          | > dateTimestamp](https://www.omg.org/spec/SCE/1.0)   | > dateDaysSince, *et.                                   |                                                  |
|                                                | > [XMLGregorianCalendar](https://www.omg.org/spec/SCE/1.0) |                                                      | > al.*](https://www.omg.org/spec/SCE/1.0)               |                                                  |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [duration](https://www.omg.org/spec/SCE/1.0) | > [javax.xml.datatype.](https://www.omg.org/spec/SCE/1.0)  | > [yearMonthDuration,                                |                                                         |                                                  |
|                                                | >                                                          | > dayTimeDuration](https://www.omg.org/spec/SCE/1.0) |                                                         |                                                  |
|                                                | > [Duration](https://www.omg.org/spec/SCE/1.0)             |                                                      |                                                         |                                                  |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [boolean](https://www.omg.org/spec/SCE/1.0)  | > [java.lang.Boolean](https://www.omg.org/spec/SCE/1.0)    | > [boolean](https://www.omg.org/spec/SCE/1.0)        | > [boolean](https://www.omg.org/spec/SCE/1.0)           | > [BOOL](https://www.omg.org/spec/SCE/1.0)       |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [list](https://www.omg.org/spec/SCE/1.0)     | > [java.util.List](https://www.omg.org/spec/SCE/1.0)       | > [contain multiple child                            | > [array                                                | > [contiguous                                    |
|                                                |                                                            | > elements](https://www.omg.org/spec/SCE/1.0)        | > (homogeneous)](https://www.omg.org/spec/SCE/1.0)      | > array](https://www.omg.org/spec/SCE/1.0)       |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+
| > [context](https://www.omg.org/spec/SCE/1.0)  | > [java.util.Map](https://www.omg.org/spec/SCE/1.0)        | > [contain attributes and child                      |                                                         | > [Tensor](https://www.omg.org/spec/SCE/1.0)     |
|                                                |                                                            | > elements](https://www.omg.org/spec/SCE/1.0)        |                                                         |                                                  |
+------------------------------------------------+------------------------------------------------------------+------------------------------------------------------+---------------------------------------------------------+--------------------------------------------------+

: [[]{#_Ref113974496 .anchor}Table 47: Mapping between FEEL and other
domains](https://www.omg.org/spec/SCE/1.0)

[For ONNX, each tensor is a context consisting of a string containing an
ONNX type name, a list containing the dimension(s) of the tensor and a
list of values.](https://www.omg.org/spec/SCE/1.0)

[Some kinds of values can also be passed between FEEL and JSON, as
summarized in [Table
48](#_Ref165459798):](https://www.omg.org/spec/SCE/1.0)

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [*FEEL                                        [*JSON                                         [*Notes*](https://www.omg.org/spec/SCE/1.0)
  type*](https://www.omg.org/spec/SCE/1.0)      type*](https://www.omg.org/spec/SCE/1.0)       
  --------------------------------------------- ---------------------------------------------- ------------------------------------------------------------------------------
  [number](https://www.omg.org/spec/SCE/1.0)    [number](https://www.omg.org/spec/SCE/1.0)     [ ](https://www.omg.org/spec/SCE/1.0)

  [string](https://www.omg.org/spec/SCE/1.0)    [string](https://www.omg.org/spec/SCE/1.0)     [ ](https://www.omg.org/spec/SCE/1.0)

  [date,\                                       [string](https://www.omg.org/spec/SCE/1.0)     [A string representation conforming to an ISO 8601 Date, Time or Date and Time
  time,\                                                                                       combination.\
  date and                                                                                     If the FEEL date and time contains an IANA timezone id, the ISO 8601 Date and
  time](https://www.omg.org/spec/SCE/1.0)                                                      Time is suffixed by the IANA timezone id in rectangular brackets,\
                                                                                               e.g.
                                                                                               2007-12-03T10:15:30+01:00\[Europe/Paris\]](https://www.omg.org/spec/SCE/1.0)

  [years and months duration,\                  [string](https://www.omg.org/spec/SCE/1.0)     [A string representation conforming to an ISO 8601
  days and time                                                                                Duration](https://www.omg.org/spec/SCE/1.0)
  duration](https://www.omg.org/spec/SCE/1.0)                                                  

  [boolean](https://www.omg.org/spec/SCE/1.0)   [The JSON literal \"true\"\                    [ ](https://www.omg.org/spec/SCE/1.0)
                                                or the JSON literal                            
                                                \"false\"](https://www.omg.org/spec/SCE/1.0)   

  [list](https://www.omg.org/spec/SCE/1.0)      [array](https://www.omg.org/spec/SCE/1.0)      [ ](https://www.omg.org/spec/SCE/1.0)

  [context](https://www.omg.org/spec/SCE/1.0)   [object](https://www.omg.org/spec/SCE/1.0)     [ ](https://www.omg.org/spec/SCE/1.0)

  [range](https://www.omg.org/spec/SCE/1.0)     [string](https://www.omg.org/spec/SCE/1.0)     [A string conforming to grammar rule [66](#_Ref165543123) "range literal\" as
                                                                                               defined in chapter
                                                                                               [10.3.1.2](#_Ref123028648).](https://www.omg.org/spec/SCE/1.0)

  [null](https://www.omg.org/spec/SCE/1.0)      [The JSON literal                              [ ](https://www.omg.org/spec/SCE/1.0)
                                                \"null\"](https://www.omg.org/spec/SCE/1.0)    
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  : [[]{#_Ref165459798 .anchor}Table 48: Mapping between FEEL and JSON
  domains](https://www.omg.org/spec/SCE/1.0)

[Sometimes we do not want to evaluate a FEEL expression *e*, we just
want to know the type of **e***.* Note that if *e* has QNs, then a
context may be needed for type inference. We write **type(***e***)** as
the type of the domain element **FEEL(***e,*
**c)**.](https://www.omg.org/spec/SCE/1.0)

#### [[]{#_Ref123027611 .anchor}Functions Semantics](https://www.omg.org/spec/SCE/1.0)

[FEEL functions can be:](https://www.omg.org/spec/SCE/1.0)

- 
- 
- 

> [built-in, *e.g.*, *sum* (see clause 10.3.4.4), or user-defined,
> *e.g., function(age) age \< 21*, or externally defined, *e.g.*,
> *function(angle) external { java:
> {*](https://www.omg.org/spec/SCE/1.0)
>
> [*class: "java.lang.Math ", method signature: "cos(double)"
> }}*](https://www.omg.org/spec/SCE/1.0)

##### [Built-in Functions](https://www.omg.org/spec/SCE/1.0)

[The built-in functions are described in detail in section
[10.3.4](#built-in-functions-1). In particular, function signatures and
parameter domains are specified. Some functions have more than one
signature.](https://www.omg.org/spec/SCE/1.0)

[Built-in functions are invoked using the same syntax as other functions
(grammar rule 40). The actual parameters must conform to the parameter
domains in at least one signature before or after applying implicit
conversions, or the result of the invocation is
**null**.](https://www.omg.org/spec/SCE/1.0)

##### [User-defined functions](https://www.omg.org/spec/SCE/1.0)

[User-defined functions (grammar rule 55) have the form *function(X1,
\... Xn) body*](https://www.omg.org/spec/SCE/1.0)

[The terms *X1, \... Xn* are formal parameters. Each formal parameter
has the form *ni* or *ni* :*ti*, where the *ni* are the parameter names
and *ti* are their types. If the type isn't specified, *Any* is assumed.
The meaning of](https://www.omg.org/spec/SCE/1.0)

[FEEL(*function(X1, \... X~n~) body*, **s**) is an element in the FEEL
semantic domain that we denote as **function(argument list: \[***X1,
\... X~n~***\], body:** *body***, scope: s)** (shortened to **f**
below). FEEL functions are lexical closures, i.e.*,* the *body* is an
expression that references the formal parameters and any other names in
scope **s**.](https://www.omg.org/spec/SCE/1.0)

[User-defined functions are invoked using the same syntax as other
functions (grammar rule 38). The meaning of an invocation
*f(n1:e1,*\...*,nn:en)* in scope **s** is FEEL(*f,* **s**) applied to
arguments *n1:*FEEL(*e1,* **s**)\... *,nn:*FEEL(*en,* **s**). This can
also be written as **f(n**1:**e**1\...
*,***n**~n~:**e**~n~).](https://www.omg.org/spec/SCE/1.0)

[The arguments **n**~1~:**e**~1~\... ,**n**~m~:**e**~m~ conform to the
argument list \[*X~1~, \... X~n~*\] if the function type
(**type(e~1~)**, \..., **type(e~m~)**) → *U* conforms to (*X~1~, \...,
X~n~*) → *U* where *U* is the return type of function *f* (see
10.3.2.9.2](https://www.omg.org/spec/SCE/1.0)). The result of applying
**f** to the interpreted arguments **n**1:**e**1\...
*,***n**~n~:**e**~n~ is determined as follows. If **f** is not a
function, or if the arguments do not conform to the argument list, the
result of the invocation is **null**. Otherwise, let **c** be a context
with entries **n**1:**e**1\... *,***n**~n~:**e**~n~. The result of the
invocation is FEEL(*body, **s'***), where **s\'** = insert before(**s**,
1, **c**) (see [10.3.4.4](#list-functions)).

Invocable elements (Business Knowledge Models or Decision Services) are
invoked using the same syntax as other functions (grammar rule 38). An
Invocable is equivalent to a FEEL function whose parameters are the
invocable's inputs (see
[10.4](#execution-semantics-of-decision-services))

##### Externally-defined functions

FEEL externally-defined functions have the following form *function (X1,
\... X~n~) external mapping-information*

Mapping-information is a context that SHALL have one of the following
forms:

> *{*
>
> *java: {class: class-name, method signature: method-signature}*
>
> *}*

or

> *{*
>
> *onnx: {file: IRI, function signature: function-signature}*
>
> *}*

or

> *{*
>
> *pmml: {document: IRI, model: model-name}*
>
> *}*

The meaning of an externally defined function is an element in the
semantic domain that we denote as **function(argument list: \[***X1,
\... X~n~***\], external: mapping-information)**.

The *java* form of the mapping information indicates that the external
function is to be accessed as a method on a Java class. The *class-name*
SHALL be the string name of a Java class on the classpath. Classpath
configuration is implementation-defined. The *method-signature* SHALL be
a string consisting of the name of a public static method in the named
class, followed by an argument list containing only Java argument type
names. The argument type information SHOULD be used to resolve
overloaded methods and MAY be used to detect out-of-domain errors before
runtime.

The *pmml* form of the mapping information indicates that the external
function is to be accessed as a PMML model. The *IRI* SHALL be the
resource identifier for a PMML document. The *model-name* is optional.
If the *model-name* is specified, it SHALL be the name of a model in the
document to which the *IRI* refers. If no *model-name* is specified, the
external function SHALL be the first model in the document.

The *onnx* form of the mapping information indicates that the external
function is to be accessed as a ONNX model. The *IRI* SHALL be the
resource identifier for a ONNX file. The *function-signature* SHALL be a
string containing only one or more tensor definitions, each consisting
of a ONNX type and the tensor dimensions in the form \[a,b,c\]. The
tensor information SHOULD be passed to the ONNX implementation at
runtime along with the data and MAY be used to detect errors before
runtime.

When an externally-defined function is invoked, actual argument values
and result value are converted when possible, using the type mapping
table for Java, ONNX or PMML (see [Table 47](#_Ref113974496)). When a
conversion is not possible, **null** is substituted. If a result cannot
be obtained, *e.g.,* an exception is thrown, the result of the
invocation is **null**. If the externally-defined function is of type
PMML or ONNX, and invocation results in a single predictor output, the
result of the externally-defined function is the single predictor
output\'s value.

Passing parameter values to the external method or model requires
knowing the expected parameter types. For Java, this information is
obtained using reflection. For PMML, this information is obtained from
the mining schema and data dictionary elements associated with
independent variables of the selected model. For ONNX this is determined
by analysis of the protobuf data structure which contains a list of all
the inputs and their (tensor) types.

Note that **DMN** does not completely define the semantics of a Decision
Model that uses externally-defined functions. Externally-defined
functions SHOULD have no side-effects and be deterministic.

##### Function name

To name a function, define it as a context entry. For example:

> *{ isPositive : function(x) x \> 0,*
>
> *isNotNegative : function(x) isPositive(x+*
>
> *1), result: isNotNegative(0)*

*}*

##### Positional and named parameters

An invocation of any FEEL function (built-in, user-defined, or
externally-defined) can use positional parameters or named parameters.
If positional, all parameters SHALL be supplied. If named, unsupplied
parameters are bound to **null**.

#### For loop expression

The *for loop expression* iterates over lists of elements or ranges of
numbers or dates. The general syntax is:

> *for i~1~ in ic~1~ \[, i~2~ in ic~2~ \[, \...\]\] return e*

where:

- *ic~1~, ic~2~, \..., ic~n~* are *iteration contexts*

- *i~1~, i~2~, \..., i~n~* are variables bound to each element in the
  *iteration context*

- *e* is the **return** expression

An *iteration context* may either be an expression that returns a list
of elements, or two expressions that return integers connected by "..".
Examples of valid iteration contexts are:

- \[ 1, 2, 3\]

- a list

- 1..10

- 50..40

- x..x+10

- @"2021-01-01"..@"2022-01-01"

A *for loop expression* will iterate over each element in the *iteration
context*, binding the element to the corresponding variable *i~n~* and
evaluating the expression *e* in that scope.

When the *iteration context* is a range of numbers, the *for loop
expression* will iterate over the range incrementing or decrementing the
value of *i~n~* by 1, depending if the range is ascendant (when the
resulting integer from the first expression is lower than the second) or
descendant (when the resulting integer from the first expression is
higher than the second).

When the *iteration context* is a range of dates, the *for loop
expression* will iterate over the range incrementing or decrementing the
value of i ~n~ by 1 day, depending if the range is ascendant (when the
resulting date from the first expression is lower than the second) or
descendant (when the resulting date from the first expression is higher
than the second).

The result of the *for loop expression* is a list containing the result
of the evaluation of the expression *e* for each individual iteration in
order.

The expression *e* may also reference an implicitly defined variable
called "***partial***" that is a list containing all the results of the
previous iterations of the expression. The variable "***partial***" is
immutable. E.g.: to calculate the factorial list of numbers, from 0 to
N, where N is a non-negative integer, one may write:

> *for i in 0..N return if i = 0 then 1 else i \* partial\[-1\]*

When multiple *iteration contexts* are defined in the same *for loop
expression*, the resulting iteration is a cross product of the elements
of the *iteration contexts*. The iteration order is from the inner
*iteration context* to the outer *iteration context*.

E.g., the result of the following *for loop expression* is:

> *for i in \[i~1~,i~2~\], j in \[j~1~j~2~\] return e **= \[ r~1~, r~2~,
> r~3~, r~4~ \]***

Where:

> ***r~1~ = FEEL( e, { i: i~1~, j: j~1~, partial:\[\], \... } ) r~2~ =
> FEEL( e, { i: i~1~, j: j~2~, partial:\[r~1~\], \... ) r~3~ = FEEL( e,
> { i: i~2~, j: j~1~, partial:\[r~1~,r~2~\], \... } )***

***r~4~ = FEEL( e, { i: i~2~, j: j~2~, partial:\[r~1~,r~2~,r~3~\], \...
} )***

#### Semantic mappings

The meaning of each substantive grammar rule is given below by mapping
the syntax to a value in the semantic domain. The value may depend on
certain input values, themselves having been mapped to the semantic
domain. The input values may have to obey additional constraints. The
input domain(s) may be a subset of the semantic domain. Inputs outside
of their domain result in a **null** value unless the implicit
conversion *from singleton list* ([10.3.2.9.4](#_Ref123108316)) can be
applied.

+-------------+--------------------+-----------------------------------+
| > **Grammar | > **FEEL Syntax**  | > **Mapped to Domain**            |
| > Rule**    |                    |                                   |
+=============+====================+===================================+
| > 55        | > *function(n1,    | > **function(argument list:       |
|             | > \...nN) e*       | > \[***n1, \... nN***\], body:**  |
|             |                    | > *e***, scope: s)**              |
+-------------+--------------------+-----------------------------------+
| > 55        | > *function(n1,    | **function(argument list:         |
|             | > \...nN) external | \[***n1, \... nN***\], external:  |
|             | > e*               | e)**                              |
+-------------+--------------------+-----------------------------------+

: Table 49: Semantics of FEEL functions

See [10.3.2.7](#_Ref123108337).

+---------------+--------------------+-----------------------------------+
| > **Grammar** | > **FEEL Syntax**  | > **Mapped to Domain**            |
| >             |                    |                                   |
| > **Rule**    |                    |                                   |
+===============+====================+===================================+
| > 44          | *for i~1~ in       | > **\[ FEEL(***e*, **s\'),        |
|               | ic~1~, i~2~ in     | > FEEL(***e*, **si, \... \]**     |
|               | ic~2~, \... return |                                   |
|               | e*                 |                                   |
+---------------+--------------------+-----------------------------------+
| > 45          | > *if e1 then e2   | > **if FEEL(***e1***) is true     |
|               | > else e3*         | > then FEEL(***e2***) else        |
|               |                    | > FEEL(***e3***)**                |
+---------------+--------------------+-----------------------------------+
| > 46          | > *some n1 in e1,  | > **false or FEEL(***e,* **s\')   |
|               | > n2 in e2, \...*  | > or FEEL(***e,* **s\") or \...** |
|               | >                  |                                   |
|               | > *satisfies e*    |                                   |
+---------------+--------------------+-----------------------------------+
| > 46          | > *every n 1 in e  | > **true and FEEL(***e,* **s\')   |
|               | > 1, n2 in e2,     | > and FEEL(***e,* **s\") and      |
|               | > \...*            | > \...**                          |
|               | >                  |                                   |
|               | > *satisfies e*    |                                   |
+---------------+--------------------+-----------------------------------+
| > 47          | > *e1 or e2 or     | > **FEEL(***e1***) or             |
|               | > \...*            | > FEEL(***e2***) or** \...        |
+---------------+--------------------+-----------------------------------+
| > 48          | > *e1 and e2 and   | > **FEEL(***e1***) and            |
|               | > \...*            | > FEEL(***e2***) and** \...       |
+---------------+--------------------+-----------------------------------+
| 49.a          | > *e = null*       | > **FEEL(***e***) is null**       |
+---------------+--------------------+-----------------------------------+
| 49.a          | > *null = e*       | > **FEEL(***e***) is null**       |
+---------------+--------------------+-----------------------------------+
| 49.a          | > *e != null*      | > **FEEL(***e***) is not null**   |
+---------------+--------------------+-----------------------------------+
| 49.a          | > *null != e*      | > **FEEL(e) is not null**         |
+---------------+--------------------+-----------------------------------+

: Table 50: Semantics of other FEEL expressions

Notice that we use bold syntax to denote contexts, lists, conjunctions,
disjunctions, conditional expressions, true, false, and null in the FEEL
domain.

The meaning of the conjunction **a and b** and the disjunction **a or
b** is defined by ternary logic. Because these are total functions, the
input can be **true**, **false**, or **otherwise** (meaning any element
of **D** other than **true** or **false**).

A conditional **if a then b else c** is equal to **b** if **a** is
**true**, and equal to **c** otherwise.

**s\'** is the scope **s** with a special first context containing keys
n1, n2, etc. bound to the first element of the Cartesian product of
FEEL**(***e1***) x** FEEL**(***e2***) x \..., s\"** is **s** with a
special first context containing keys bound to the second element of the
Cartesian product, *etc*. When the Cartesian product is empty, the *some
\... satisfies* quantifier returns **false** and the *every \...
satisfies* quantifier returns **true**.

+-------------+-----------+-------+-------+
| > **a**     | **b**     | **a   | **a   |
|             |           | and   | or    |
|             |           | b**   | b**   |
+=============+===========+=======+=======+
| > true      | true      | true  | true  |
+-------------+-----------+-------+-------+
| > true      | false     | false | true  |
+-------------+-----------+-------+-------+
| > true      | otherwise | null  | true  |
+-------------+-----------+-------+-------+
| > false     | true      | false | true  |
+-------------+-----------+-------+-------+
| > false     | false     | false | false |
+-------------+-----------+-------+-------+
| > false     | otherwise | false | null  |
+-------------+-----------+-------+-------+
| > otherwise | true      | null  | true  |
+-------------+-----------+-------+-------+
| > otherwise | false     | false | null  |
+-------------+-----------+-------+-------+
| > otherwise | otherwise | null  | null  |
+-------------+-----------+-------+-------+

: []{#_Ref127818995 .anchor}Table 51: Semantics of conjunction and
disjunction

Negation is accomplished using the built-in function **not**. The
ternary logic is as shown in [Table 52](#_Ref113974866).

[]{#_Ref113974866 .anchor}**Table 52: Semantics of negation**

+-------------+------------+
| > **a**     | **not(a)** |
+=============+============+
| > true      | false      |
+-------------+------------+
| > false     | true       |
+-------------+------------+
| > otherwise | null       |
+-------------+------------+

Equality and inequality map to several kind- and datatype-specific
tests, as shown in [Table 53](#_Ref113975103), [Table
54](#_Ref113975112) and [Table 55](#_Ref113975124). By definition,
FEEL(*e1 != e2*) is FEEL(*not(e 1= e2)*). The other comparison operators
are defined only for the datatypes listed in [Table 55](#_Ref113975124).
Note that [Table 55](#_Ref113975124) defines only '\<'; '\>' is similar
to '\<' and is omitted for brevity; *e1\<=e2* is defined as *e1\< e2 or
e1= e2.*

+-------------+-------------+--------------------+----------------------+
| > **Grammar | > **FEEL    | > **Input Domain** | > **Result**         |
| > Rule**    | > Syntax**  |                    |                      |
+=============+=============+====================+======================+
| > 49.a      | > *e1 = e2* | **e1 and e2 must   | > *See below*        |
|             |             | both be of the     |                      |
|             |             | same kind/datatype |                      |
|             |             | -- both numbers,   |                      |
|             |             | both strings,      |                      |
|             |             | etc.**             |                      |
+-------------+-------------+--------------------+----------------------+
| > 49.a      | > *e1 \<    | **e1** and **e2**  | > *See below*        |
|             | > e2*       | must both be of    |                      |
|             |             | the same           |                      |
|             |             | kind/datatype --   |                      |
|             |             | both numbers, both |                      |
|             |             | strings, *etc.*    |                      |
+-------------+-------------+--------------------+----------------------+

: []{#_Ref113975103 .anchor} Table 53: General semantics of equality and
inequality

+----------------------+--------------------------------------+
| > **kind/datatype**  | ***e1 = e2***                        |
+======================+======================================+
| > list               | lists must be same length N and      |
|                      | **e1\[i\] = e2\[i\]** for 1 ≤ **i**  |
|                      | ≤ N.                                 |
+----------------------+--------------------------------------+
| > context            | contexts must have same set of keys  |
|                      | K and **e1.k = e2.k** for every k in |
|                      | K                                    |
+----------------------+--------------------------------------+
| > range              | the ranges must specify the same     |
|                      | endpoint(s) and the same comparison  |
|                      | operator or endpoint inclusivity     |
|                      | flag.                                |
+----------------------+--------------------------------------+
| > function           | internal functions must have the     |
|                      | same parameters, body, and scope.    |
|                      | Externally defined functions must    |
|                      | have the same parameters and         |
|                      | external mapping information.        |
+----------------------+--------------------------------------+
| > number             | **value(e1) = value(e2)**. Value is  |
|                      | defined in                           |
|                      | [10.3.2.3.1](#_Ref123108443).        |
|                      | Precision is not considered.         |
+----------------------+--------------------------------------+
| > string             | > **e1** is the same sequence of     |
|                      | > characters as **e2**               |
+----------------------+--------------------------------------+
| > date               | > **value(e1) = value(e2)**. Value   |
|                      | > is defined in                      |
|                      | > [10.3.2.3.5](#_Ref123027760)       |
+----------------------+--------------------------------------+
| > date and time      | > **value(e1) = value(e2)**. Value   |
|                      | > is defined in                      |
|                      | > [10.3.2.3.6](#_Ref123041323)       |
+----------------------+--------------------------------------+
| > time               | > **value(e1) = value(e2)**. Value   |
|                      | > is defined in                      |
|                      | > [10.3.2.3.4](#_Ref123027748).      |
+----------------------+--------------------------------------+
| > days and time      | > **value(e1) = value(e2)**. Value   |
| > duration           | > is defined in                      |
|                      | > [10.3.2.3.7](#_Ref123027770)       |
+----------------------+--------------------------------------+
| > years and months   | > **value(e1) = value(e2)**. Value   |
| > duration           | > is defined in                      |
|                      | > [10.3.2.3.8](#_Ref123108493).      |
+----------------------+--------------------------------------+
| > boolean            | > **e1** and **e2** must both be     |
|                      | > **true** or both be **false**      |
+----------------------+--------------------------------------+

: []{#_Ref113975112 .anchor} Table 54: Specific semantics of equality

+----------------------+--------------------------------------+
| > **datatype**       | > ***e1 \< e2***                     |
+======================+======================================+
| number               | > **value(e1) \< value(e2)**.        |
|                      | > **value** is defined in            |
|                      | > [10.3.2.3.1](#_Ref123108443).      |
|                      | > Precision is not considered.       |
+----------------------+--------------------------------------+
| string               | > sequence of characters **e1** is   |
|                      | > lexicographically less than the    |
|                      | > sequence of characters **e2**.     |
|                      | > *I.e.,* the sequences are padded   |
|                      | > to the same length if needed with  |
|                      | > *\\u0* characters, stripped of     |
|                      | > common prefix characters, and then |
|                      | > the first character in each        |
|                      | > sequence is compared.              |
+----------------------+--------------------------------------+
| > date               | > e1 \< e2 if the year value of e1   |
|                      | > \< the year value of e2 e1 \< e2   |
|                      | > if the year values are equal and   |
|                      | > the month value of e1 \< the month |
|                      | > value of e2 e1 \< e2 if the year   |
|                      | > and month values are equal and the |
|                      | > day value of e1 \< the day value   |
|                      | > of e2                              |
+----------------------+--------------------------------------+
| > date and time      | > **valuedt(e1) \< valuedt(e2)**.    |
|                      | > **valuedt** is defined in          |
|                      | > [10.3.2.3.5](#_Ref123027760). If   |
|                      | > one input has a null timezone      |
|                      | > offset, that input uses the        |
|                      | > timezone offset of the other       |
|                      | > input.                             |
+----------------------+--------------------------------------+
| > time               | > **valuet(e1) \< valuet(e2)**.      |
|                      | > **valuet** is defined in           |
|                      | > [10.3.2.3.4](#_Ref123027748). If   |
|                      | > one input has a null timezone      |
|                      | > offset, that input uses the        |
|                      | > timezone offset of the other       |
|                      | > input.                             |
+----------------------+--------------------------------------+
| > days and time      | > **valuedtd(e1) \< valuedtd(e2)**.  |
| > duration           | > **valuedtd** is defined in         |
|                      | > [10.3.2.3.7](#_Ref123027770).      |
+----------------------+--------------------------------------+
| > years and months   | > **valueymd(e1) \< valueymd(e2)**.  |
| > duration           | > **valueymd** is defined in         |
|                      | > [10.3.2.3.8](#_Ref123108493).      |
+----------------------+--------------------------------------+

: []{#_Ref113975124 .anchor} Table 55: Specific semantics of inequality

FEEL supports additional syntactic sugar for comparison. Note that
Grammar Rules (clause [10.3.1.2](#_Ref123028648)) are used in decision
table condition cells. These decision table syntaxes are defined in
[Table 56](#_Ref113975217).

+---------------+----------------+---------------------+---------------------+
| > **Grammar** | > **FEEL       | > **Equivalent FEEL | > **applicability** |
| >             | > Syntax**     | > Syntax**          |                     |
| > **Rule**    |                |                     |                     |
+===============+================+=====================+=====================+
| 49.b          | > *e1 between  | > *e1 \>= e2 and e1 |                     |
|               | > e2 and e3*   | > \<= e3*           |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 = e2 or e1 =  | > e2 and e3 are     |
|               | > \[e2,e3,     | > e3 or\...*        | > endpoints         |
|               | > \... \]*     |                     |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 in e2 or e1   | > e2 and e3 are     |
|               | > \[e2,e3,     | > in e3 or\...*     | > ranges            |
|               | > \... \]*     |                     |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \<= e2*       |                     |
|               | > \<=e2*       |                     |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in \<e2* | > *e1 \< e2*        |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \>= e2*       |                     |
|               | > \>=e2*       |                     |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in \>e2* | > *e1 \> e2*        |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \> e2 and     |                     |
|               | > (e2..e3)*    | > e1\<e3*           |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \> e2 and     |                     |
|               | > (e2..e3\]*   | > e1\<=e3*          |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \>= e2 and    |                     |
|               | > \[e2..e3)*   | > e1\<e3*           |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in       | > *e1 \>= e2 and    |                     |
|               | > \[e2..e3\]*  | > e1\<=e3*          |                     |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in e2*   | > *e1 = e2*         | > e2 is a qualified |
|               |                |                     | > name that does    |
|               |                |                     | > *not* evaluate to |
|               |                |                     | > a list            |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in e2*   | > *list contains(   | > e1 is a simple    |
|               |                | > e2, e1 )*         | > value that is not |
|               |                |                     | > a list and e2 is  |
|               |                |                     | > a qualified name  |
|               |                |                     | > that evaluates to |
|               |                |                     | > a list            |
+---------------+----------------+---------------------+---------------------+
| 49.c          | > *e1 in e2*   | > *{ ? : e1, r : e2 | > e2 is a boolean   |
|               |                | > }.r*              | > expression that   |
|               |                |                     | > uses the special  |
+---------------+----------------+---------------------+---------------------+

: []{#_Ref113975217 .anchor}Table 56: Semantics of decision table syntax

Addition and subtraction are defined in [Table 57](#_Ref113975324) and
[Table 58](#_Ref113975334). Note that if input values are not of the
listed types, the result is **null**.

+-------------+-----------------+--------------------------+
| > **Grammar | > **FEEL**      | > **Input Domain and     |
| > Rule**    |                 | > Result**               |
+=============+=================+==========================+
| > 19        | *e1 + e2*       | > *See below*            |
+-------------+-----------------+--------------------------+
| > 20        | > *e1 -- e2*    | > *See below*            |
+-------------+-----------------+--------------------------+

: []{#_Ref113975324 .anchor}Table 57: General semantics of addition and
subtraction

+----------------+----------------+-------------------------------------+------------+
| > **type(e1)** | > **type(e2)** | > ***e1 + e2, e1 -- e2***           | > **result |
|                |                |                                     | > type**   |
+================+================+=====================================+============+
| > number       | > number       | > Let **e1=(p1,s1)** and            | > number   |
|                |                | > **e2=(p2,s2)** as defined in      |            |
|                |                | > [10.3.2.3.1](#_Ref123108443). If  |            |
|                |                | > **value(p1,s1) +/- value(p2,s2)** |            |
|                |                | > requires a scale outside the      |            |
|                |                | > range of valid scales, the result |            |
|                |                | > is **null**. Else the result is   |            |
|                |                | > **(p,s)** such that               |            |
|                |                |                                     |            |
|                |                | - **value(p,s) = value(p1,s1) +/-   |            |
|                |                |   value(p2,s2) + ε**                |            |
|                |                |                                     |            |
|                |                | - **s ≤ max(s1,s2)**                |            |
|                |                |                                     |            |
|                |                | - **s** is maximized subject to the |            |
|                |                |   limitation that **p** has 34      |            |
|                |                |   digits or less                    |            |
|                |                |                                     |            |
|                |                | - **ε** is a possible rounding      |            |
|                |                |   error.                            |            |
+----------------+----------------+-------------------------------------+------------+
| > date and     | > date and     | > Addition is undefined.            | > days and |
| > time         | > time         | > Subtraction is defined as         | > time     |
|                |                | > **valuedtj^1^                     | > duration |
|                |                | > (valuedt(e1)-valuedt(e2))**,      |            |
|                |                | > where **valuedt** is defined in   |            |
|                |                | > [10.3.2.3.5](#_Ref123027760) and  |            |
|                |                | > **valuedtj^1^** is defined in     |            |
|                |                | >                                   |            |
|                |                | > [10.3.2.3.7](#_Ref123027770). In  |            |
|                |                | > case either value is of type      |            |
|                |                | > date, it is implicitly converted  |            |
|                |                | > into a date and time with time of |            |
|                |                | > day of UTC midnight               |            |
|                |                | > (\"00:00:00\") as defined in      |            |
|                |                | > [10.3.2.3.6](#_Ref123041323).     |            |
|                |                | > Subtraction requires either both  |            |
|                |                | > values to have a timezone or both |            |
|                |                | > not to have a timezone.           |            |
|                |                | > Subtraction is undefined for the  |            |
|                |                | > case where only one of the values |            |
|                |                | > has a timezone.                   |            |
+----------------+----------------+-------------------------------------+------------+
| > time         | > time         | Addition is undefined. Subtraction  | days and   |
|                |                | is defined as **valuedtd^-1^        | time       |
|                |                | (valuet(e1)-valuet(e2))** where     | duration   |
|                |                | **valuet** is defined in            |            |
|                |                | [10.3.2.3.4](#_Ref123027748) and    |            |
|                |                | **valuedtd ~-1~** is defined in     |            |
|                |                | [10.3.2.3.7](#_Ref123027770).       |            |
+----------------+----------------+-------------------------------------+------------+
| years and      | years and      | **valueymd^-1^(valueymd(e1) +/-     | years and  |
| months         | months         | valueymd(e2))** where **valueymd**  | months     |
| duration       | duration       | and **valueymd ~-1~** is defined in | duration   |
|                |                | [10.3.2.3.8](#_Ref123108493).       |            |
+----------------+----------------+-------------------------------------+------------+
| days and time  | days and time  | **valuedtd ^-1^(valuedtd(e1) +/-    | days and   |
| duration       | duration       | valuedtd(e2))** where **valuedtd**  | time       |
|                |                | and **valuedtd^-1^** is defined in  | duration   |
|                |                | [10.3.2.3.7](#_Ref123027770).       |            |
+----------------+----------------+-------------------------------------+------------+
| > date and     | years and      | date and time (date(**e1**.year     | > date and |
| > time         | months         | +/-- **e2**.years +                 | > time     |
|                | duration       | floor((**e1**.month +/--            |            |
|                |                | **e2**.months)/12),                 |            |
|                |                |                                     |            |
|                |                | **e1**.month +/-- **e2**.months --  |            |
|                |                | floor((**e1**.month +/--            |            |
|                |                | **e2**.months)/12) \* 12,           |            |
|                |                | **e1**.day), time(**e1**)),         |            |
|                |                |                                     |            |
|                |                | where the named properties are as   |            |
|                |                | defined in **[Table                 |            |
|                |                | 66](#_Ref114042266)** below, and    |            |
|                |                | the date, date and time, time and   |            |
|                |                | floor functions are as defined in   |            |
|                |                | [10.3.4](#built-in-functions-1),    |            |
|                |                | **valuedt** and **valuedt ^-1^** is |            |
|                |                | defined in                          |            |
|                |                | [10.3.2.3.5](#_Ref123027760) and    |            |
|                |                | **valueymd** is defined in          |            |
|                |                | [10.3.2.3.8](#_Ref123108493).       |            |
+----------------+----------------+-------------------------------------+------------+
| years and      | > date and     | Subtraction is undefined. Addition  | > date and |
| months         | > time         | is commutative and is defined by    | > time     |
| duration       |                | the previous rule.                  |            |
+----------------+----------------+-------------------------------------+------------+
| > date and     | days and time  | **valuedt ^-1^(valuedt(e1) +/-      | > date and |
| > time         | duration       | valuedtd(e2))** where **valuedt**   | > time     |
|                |                | and **valuedt ^-1^** is defined in  |            |
|                |                | [10.3.2.3.5](#_Ref123027760) and    |            |
|                |                | **valuedtd** is defined in          |            |
|                |                | [10.3.2.3.7](#_Ref123027770).       |            |
+----------------+----------------+-------------------------------------+------------+
| days and time  | > date and     | Subtraction is undefined. Addition  | > date and |
| duration       | > time         | is commutative and is defined by    | > time     |
|                |                | the previous rule.                  |            |
+----------------+----------------+-------------------------------------+------------+
| > time         | days and time  | **valuet ^-1^(valuet(e1) +/-        | > time     |
|                | duration       | valuedtd(e2))** where **valuet**    |            |
|                |                | and **valuet ^-1^** are defined in  |            |
|                |                | [10.3.2.3.4](#_Ref123027748) and    |            |
|                |                | **valuedtd** is defined in          |            |
|                |                | [10.3.2.3.7](#_Ref123027770).       |            |
+----------------+----------------+-------------------------------------+------------+
| days and time  | > time         | Subtraction is undefined. Addition  | > time     |
| duration       |                | is commutative and is defined by    |            |
|                |                | the previous rule.                  |            |
+----------------+----------------+-------------------------------------+------------+
| > string       | > string       | Subtraction is undefined. Addition  | > string   |
|                |                | concatenates the strings. The       |            |
|                |                | result is a string containing the   |            |
|                |                | sequence of characters in e1        |            |
|                |                | followed by the sequence of         |            |
|                |                | characters in e2.                   |            |
+----------------+----------------+-------------------------------------+------------+
| > date         | years and      | **date( e1.year +/-- e2.years +     | > date     |
|                | months         | floor((e1.month +/--                |            |
|                | duration       | e2.months)/12), e1.month +/--       |            |
|                |                | e2.months -- floor((e1.month +/--   |            |
|                |                | e2.months)/12) \* 12, e1.day )**,   |            |
|                |                | where the named properties are as   |            |
|                |                | defined in **[Table                 |            |
|                |                | 66](#_Ref114042266)** below, and    |            |
|                |                | the date and floor functions are as |            |
|                |                | defined in                          |            |
|                |                | [10.3.4](#built-in-functions-1).    |            |
+----------------+----------------+-------------------------------------+------------+
| years and      | > date         | Subtraction is undefined. Addition  | > date     |
| months         |                | is commutative and is defined by    |            |
| duration       |                | the previous rule.                  |            |
+----------------+----------------+-------------------------------------+------------+
| > date         | days and time  | date(valuedt^-1^ (valuedt(e1) +/-   | > date     |
|                | duration       | valuedtd(e2))) where valuedt and    |            |
|                |                | valuedt^-1^ is defined in           |            |
|                |                | [10.3.2.3.5](#_Ref123027760) and    |            |
|                |                | valuedtd is defined in              |            |
|                |                | [10.3.2.3.7](#_Ref123027770).       |            |
+----------------+----------------+-------------------------------------+------------+
| days and time  | > date         | Subtraction is undefined. Addition  | > date     |
| duration       |                | is commutative and is defined by    |            |
|                |                | the previous rule.                  |            |
+----------------+----------------+-------------------------------------+------------+

: []{#_Ref113975334 .anchor}Table 58: Specific semantics of addition and
subtraction

Multiplication and division are defined in [Table 59](#_Ref114041416)
and [Table 60](#_Ref114041432). Note that if input values are not of the
listed types, the result is **null**.

[]{#_Ref114041416 .anchor}**Table 59: General semantics of
multiplication and division**

+-------------+-----------------+-------------------+
| > **Grammar | > **FEEL**      | > **Input Domain  |
| > Rule**    |                 | > and Result**    |
+=============+=================+===================+
| > 21        | *e1 \* e2*      | > *See below*     |
+-------------+-----------------+-------------------+
| > 22        | > *e1 / e2*     | > *See below*     |
+-------------+-----------------+-------------------+

+------------------+------------------+---------------------------------+---------------------------------+------------+
| > **type(e1)**   | > **type(e2)**   | ***e1 \* e2***                  | ***e1 / e2***                   | > **result |
|                  |                  |                                 |                                 | > type**   |
+==================+==================+=================================+=================================+============+
| > number         | > number         | > If **value(p1,s1) \*          | > If **value(p2,s2)=0** or      | > number   |
| >                | >                | > value(p2,s2)** requires a     | > **value(p1,s1) /              |            |
| > **e1=(p1,s1)** | > **e2=(p2,s2)** | > scale outside the range of    | > value(p2,s2)** requires a     |            |
|                  |                  | > valid scales, the result is   | > scale outside the range of    |            |
|                  |                  | > **null**. Else the result is  | > valid scales, the result is   |            |
|                  |                  | > **(p,s)** such that           | > **null**. Else the result is  |            |
|                  |                  |                                 | > **(p,s)** such that           |            |
|                  |                  | - **value(p,s) = value(p1,s1)** |                                 |            |
|                  |                  |                                 | - **value(p,s) = value(p1,s1) / |            |
|                  |                  | > **\* value(p2,s2) + ε**       |   value(p2,s2) + ε**            |            |
|                  |                  |                                 |                                 |            |
|                  |                  | - **s ≤ s1+s2**                 | - **s ≤ s1-s2**                 |            |
|                  |                  |                                 |                                 |            |
|                  |                  | - **s** is maximized subject to | - **s** is maximized subject to |            |
|                  |                  |   the limitation that **p** has |   the limitation that **p** has |            |
|                  |                  |   34 digits or less             |   34                            |            |
|                  |                  |                                 |                                 |            |
|                  |                  | - **ε** is a possible rounding  | > digits or less                |            |
|                  |                  |   error                         |                                 |            |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| > years and      | > number         | > **valueymd ^-1^(valueymd(e1)  | > If **value(e2)=0**, the       | > years    |
| > months         |                  | > \* value(e2))** where         | > result is **null**.           | > and      |
| > duration       |                  | > **valueymd** and **valueymd   | >                               | > months   |
|                  |                  | > ~-1~** are defined in         | > Else the result is            | > duration |
|                  |                  | > [10.3.2.3.8](#_Ref123108493)  | > **valueymd^-^                 |            |
|                  |                  |                                 | > ^1^(valueymd(e1) /            |            |
|                  |                  |                                 | > value(e2))** where            |            |
|                  |                  |                                 | > **valueymd** and              |            |
|                  |                  |                                 | > **valueymd^-1^** are defined  |            |
|                  |                  |                                 | > in                            |            |
|                  |                  |                                 | > [10.3.2.3.8](#_Ref123108493). |            |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| > number         | > years and      | > *See above, reversing e1 and  | > *Not allowed*                 | > years    |
|                  | > months         | > e2*                           |                                 | > and      |
|                  | > duration       |                                 |                                 | > months   |
|                  |                  |                                 |                                 | > duration |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| > years and      | > years and      | > *Not allowed*                 | > If **valueymd(e2)=0**, the    | > number   |
| > months         | > months         |                                 | > result is **null**. Else the  |            |
| > duration       | > duration       |                                 | > result is **valueymd(e1) /    |            |
|                  |                  |                                 | > valueymd(e2)** where          |            |
|                  |                  |                                 | > **valueymd** is defined in    |            |
|                  |                  |                                 | > [10.3.2.3.8](#_Ref123108493). |            |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| days and time    | > number         | > **valuedtd^-1^(valuedtd(e1)   | > If **value(e2)=0**, the       | days and   |
| duration         |                  | > \* value(e2))** where         | > result is **null**.           | time       |
|                  |                  | > **valuedtd** and **valuedtd   | >                               | duration   |
|                  |                  | > ~-1~** are defined in         | > Else the result is **valuedtd |            |
|                  |                  | > [10.3.2.3.7](#_Ref123027770). | > ^1^(valuedtd(e1) \*           |            |
|                  |                  |                                 | > value(e2))** where            |            |
|                  |                  |                                 | > **valuedtd** and **valuedtd   |            |
|                  |                  |                                 | > ~-1~** are defined in         |            |
|                  |                  |                                 | > [10.3.2.3.7](#_Ref123027770). |            |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| > number         | > days and time  | > *See above, reversing e1 and  | > *Not allowed*                 | days and   |
|                  | > duration       | > e2*                           |                                 | time       |
|                  |                  |                                 |                                 | duration   |
+------------------+------------------+---------------------------------+---------------------------------+------------+
| days and time    | > days and time  | > *Not allowed*                 | > If **valuedtd(e2)=0**, the    | > number   |
| duration         | > duration       |                                 | > result is **null**. Else the  |            |
|                  |                  |                                 | > result is **valuedtd(e1) /    |            |
|                  |                  |                                 | > valuedtd(e2)** where          |            |
|                  |                  |                                 | > **~valuedtd~** is defined in  |            |
|                  |                  |                                 | >                               |            |
|                  |                  |                                 | > [10.3.2.3.7](#_Ref123027770). |            |
+------------------+------------------+---------------------------------+---------------------------------+------------+

: []{#_Ref114041432 .anchor}Table 60: Specific semantics of
multiplication and division

+-------------+------------+--------------------------------+------------------------------+
| **Grammar** | **FEEL**   | > **Input Domain**             | > **Result**                 |
|             |            |                                |                              |
| **Rule**    | **Syntax** |                                |                              |
+=============+============+================================+==============================+
| > 23        | > *e1 \*\* | **type(e1)** is number.        | If **value(e1)value(e2 )**   |
|             | > e2*      | **value(e2)** is a number in   | requires a scale that is out |
|             |            | the range                      | of range, the result is      |
|             |            |                                | **null**. Else the result is |
|             |            | \[-999,999,999..999,999,999\]. | **(p,s)** such that          |
|             |            |                                |                              |
|             |            |                                | - **value(p,s)=              |
|             |            |                                |   value(e1)^value(e^~2~^)^ + |
|             |            |                                |   ε**                        |
|             |            |                                |                              |
|             |            |                                | - **p** is limited to 34     |
|             |            |                                |   digits                     |
|             |            |                                |                              |
|             |            |                                | - **ε** is rounding error    |
+-------------+------------+--------------------------------+------------------------------+

: []{#_Ref165455666 .anchor}Table 61: Semantics of exponentiation

Type-checking is defined in [Table 62](#_Ref114042034). Note that *type*
is not mapped to the domain, and **null** is the only value in the Null
type (see [10.3.2.1](#_Ref123039003)).

Before evaluating the *instance of* operator both operands are mapped to
the type lattice **L** (see [10.3.2.9](#_Ref123123488)).

[]{#_Ref114042034 .anchor}**Table 62: Semantics of type-checking**

+-------------+------------+-------------------------------+----------------------------+
| **Grammar** | > **FEEL   | > **Mapped to Domain**        | > **Examples**             |
|             | > Syntax** |                               |                            |
| **Rule**    |            |                               |                            |
+=============+============+===============================+============================+
| > 51        | > *e1      | > If ***e~2~*** cannot be     | > *\[123\] instance of     |
|             | > instance | > mapped to a node in the     | > list\<number\>* is       |
|             | > of e2*   | > lattice L, the result is    | > **true**                 |
|             |            | > **null.**                   | >                          |
|             |            | >                             | > *\"abc\" instance of     |
|             |            | > If **e~1~** is **null** and | > string* is **true**      |
|             |            | > **type(***e~2~***)** is     | >                          |
|             |            | > *Null*, the result is       | > *123 instance of string* |
|             |            | > **true**.                   | > is **false**             |
|             |            | >                             | >                          |
|             |            | > If **type(***e~1~***)**     | > *123 instance of list*   |
|             |            | > conforms to                 | > is **null** as a list    |
|             |            | > **type(***e~2~***)** (see   | > type requires parameters |
|             |            | > section                     | > (see rule 54).           |
|             |            | > [10.3.2.9](#_Ref123123488)) |                            |
|             |            | > and **e~1~** is not         |                            |
|             |            | > **null,** the result is     |                            |
|             |            | > **true**.                   |                            |
|             |            | >                             |                            |
|             |            | > Otherwise, the result is    |                            |
|             |            | > **false**.                  |                            |
+-------------+------------+-------------------------------+----------------------------+
| > 51        | > *e1 as   | > If **e~1~** instance of     | > *\"abc\" as string =*    |
|             | > e2*      | > **e~2~** is **false** or    | > \"abc\"\                 |
|             |            | > **null**, the result is     | > *123 as string =*        |
|             |            | > **null.**                   | > **null**\                |
|             |            | >                             | > *\[1, 2, 3\] as          |
|             |            | > Otherwise the result is     | > list\<number\>* = \[1,   |
|             |            | > **e~1~** and **type(**e~1~  | > 2, 3\]\                  |
|             |            | > instance of e~2~**)** is    | > *abs(x as number)* where |
|             |            | > **type(**e~2~**)**          | > x is a variable of type  |
|             |            |                               | > Any*.* If x is a number, |
|             |            |                               | > the function is invoked  |
|             |            |                               | > with that number as      |
|             |            |                               | > argument; otherwise, the |
|             |            |                               | > function is invoked with |
|             |            |                               | > null as argument.        |
+-------------+------------+-------------------------------+----------------------------+

Negative numbers and negation of durations are defined in [Table
63](#_Ref114042070).

+-------------+-----------------+-------------------+
| > **Grammar | **FEEL Syntax** | > **Equivalent    |
| > Rule**    |                 | > FEEL Syntax**   |
+=============+=================+===================+
| > 24        | *-e*            | > *e\*-1*         |
+-------------+-----------------+-------------------+

: []{#_Ref114042070 .anchor}Table 63: Semantics of negative numbers and
negation of durations

Invocation is defined in [Table 64](#_Ref114042120). An invocation can
use positional arguments or named arguments. If positional, all
arguments must be supplied. If named, unsupplied arguments are bound to
**null**. Note that **e** can be a user-defined function, a user-defined
external function, or a built-in function. The arguments are subject to
implicit conversions ([10.3.2.9.4](#_Ref123108316)). If the argument
types before or after conversion do not conform to the corresponding
parameter types, the result of the invocation is **null**.

+-------------+-------------------+---------------------------+---------------------+
| > **Grammar | > **FEEL**        | > **Mapped to Domain**    | > **Applicability** |
| > Rule**    |                   |                           |                     |
+=============+===================+===========================+=====================+
| > 38, 39,   | > *e(e1,..)*      | > **e(e1**,\...**)**      | **e** is a function |
| > 42        |                   |                           | with matching arity |
|             |                   |                           | and conforming      |
|             |                   |                           | parameter types     |
+-------------+-------------------+---------------------------+---------------------+
| > 38, 39,   | > *e(n1:e1,\...)* | > **e(***n1***:e1,\...)** | **e** is a function |
| > 40, 41    |                   |                           | with matching       |
|             |                   |                           | parameter names and |
|             |                   |                           | conforming          |
|             |                   |                           | parameter types     |
+-------------+-------------------+---------------------------+---------------------+

: []{#_Ref114042120 .anchor}Table 64: Semantics of invocation

Properties are defined in [Table 65](#_Ref114042257) and [Table
66](#_Ref114042266). If **type(***e***)** is date and time, time, or
duration, and **name** is a property name, then the meaning is given by
[Table 66](#_Ref114042266) and [Table 67](#_Ref114042352). For example,
FEEL(*date and time(\"2012-0307Z\").year*) = **2012**.

[]{#_Ref114042257 .anchor}**Table 65: General semantics of properties**

+-------------+-------------+------------------+--------------------+
| > **Grammar | > **FEEL**  | > **Mapped to    | **Applicability**  |
| > Rule**    |             | > Domain**       |                    |
+=============+=============+==================+====================+
| > 18        | > *e.name*  | > **e.\"name\"** | **type(e)** is a   |
|             |             |                  | context            |
+-------------+-------------+------------------+--------------------+
| > 18        | > *e.name*  | > *see below*    | **type(e)** is a   |
|             |             |                  | date/time/duration |
+-------------+-------------+------------------+--------------------+

[]{#_Ref114042266 .anchor}**Table 66: List of properties per type**

+-----------------+--------------------------------+---------------------+
| > **type(*e*)** | > ***e .* name**               | > **name =**        |
+=================+================================+=====================+
| > date          | result is the **name**d        | > year, month, day, |
|                 | component of the date object   | > weekday, value    |
|                 | **e**. Valid names are shown   |                     |
|                 | to the right.                  |                     |
+-----------------+--------------------------------+---------------------+
| > date and time | result is the **name**d        | year, month, day,   |
|                 | component of the date and time | weekday, hour,      |
|                 | object **e**. Valid names are  | minute, second,     |
|                 | shown to the right.            | time offset,        |
|                 |                                | timezone, value     |
+-----------------+--------------------------------+---------------------+
| > time          | result is the **name**d        | hour, minute,       |
|                 | component of the time object   | second, time        |
|                 | **e**.                         | offset, timezone,   |
|                 |                                | value               |
|                 | Valid names are shown to the   |                     |
|                 | right                          |                     |
+-----------------+--------------------------------+---------------------+
| years and       | result is the **name**d        | > years, months,    |
| months duration | component of the years and     | > value             |
|                 | months duration object **e**.  |                     |
|                 | Valid names are shown to the   |                     |
|                 | right.                         |                     |
+-----------------+--------------------------------+---------------------+
| days and time   | result is the **name**d        | > days, hours,      |
| duration        | component of the days and time | > minutes, seconds, |
|                 | duration object **e**. Valid   | > value             |
|                 | names are shown to the right.  |                     |
+-----------------+--------------------------------+---------------------+
| > range         | result is the **name**d        | start, end, start   |
|                 | component of the range object  | included, end       |
|                 | **e**. Valid names are shown   | included            |
|                 | to the right.                  |                     |
+-----------------+--------------------------------+---------------------+

+-------------+--------------------+-----------------------------------------------+
| > **name**  | > ***type*(name)** | > **description**                             |
+=============+====================+===============================================+
| > year      | > number           | The year number as an integer in the interval |
|             |                    | \[-999,999,999 ..                             |
|             |                    |                                               |
|             |                    | 999,999,999\]                                 |
+-------------+--------------------+-----------------------------------------------+
| > month     | > number           | The month number as an integer in the         |
|             |                    | interval \[1..12\], where 1 is                |
|             |                    |                                               |
|             |                    | January and 12 is December                    |
+-------------+--------------------+-----------------------------------------------+
| > day       | > number           | > The day of the month as an integer in the   |
|             |                    | > interval \[1..31\]                          |
+-------------+--------------------+-----------------------------------------------+
| > weekday   | > number           | The day of the week as an integer in the      |
|             |                    | interval \[1. .7\] where 1 is                 |
|             |                    |                                               |
|             |                    | Monday and 7 is Sunday (compliant with the    |
|             |                    | definition in ISO 8601)                       |
+-------------+--------------------+-----------------------------------------------+
| > hour      | > number           | > The hour of the day as an integer in the    |
|             |                    | > interval \[0..23\]                          |
+-------------+--------------------+-----------------------------------------------+
| > minute    | > number           | > The minute of the hour as an integer in the |
|             |                    | > interval \[0..59\]                          |
+-------------+--------------------+-----------------------------------------------+
| > second    | > number           | > The second of the minute as a decimal in    |
|             |                    | > the interval \[0. .60)                      |
+-------------+--------------------+-----------------------------------------------+
| > time      | > days and time    | The duration offset corresponding to the      |
| > offset    | > duration         | timezone the date or date and time value      |
|             |                    | represents. The time offset duration must be  |
|             |                    | in the interval                               |
|             |                    | **\[duration("-PT14H")..duration("PT14H")\]** |
|             |                    | as per the XML Schema Part 2 dateTime         |
|             |                    | datatype. The **time offset** property        |
|             |                    | returns null when the object does not have a  |
|             |                    | time offset set.                              |
+-------------+--------------------+-----------------------------------------------+
| > timezone  | > string           | The timezone identifier as defined in the     |
|             |                    | IANA Time Zones database. The **timezone**    |
|             |                    | property returns null when the object does    |
|             |                    | not have an IANA timezone defined.            |
+-------------+--------------------+-----------------------------------------------+
| > **name**  | > ***type*(name)** | **description**                               |
+-------------+--------------------+-----------------------------------------------+
| > years     | > number           | The normalized years component of a years and |
|             |                    | months duration value as an integer. This     |
|             |                    | property returns null when invoked on a days  |
|             |                    | and time duration value.                      |
+-------------+--------------------+-----------------------------------------------+
| > months    | > number           | The normalized months component of a years    |
|             |                    | and months duration value. Since the value is |
|             |                    | normalized, this property must return an      |
|             |                    | integer in the interval \[0.. 11\]. This      |
|             |                    | property returns null when invoked on a days  |
|             |                    | and time duration value.                      |
+-------------+--------------------+-----------------------------------------------+
| > days      | > number           | The normalized days component of a days and   |
|             |                    | time duration value as an integer. This       |
|             |                    | property returns null when invoked on a years |
|             |                    | and months duration value.                    |
+-------------+--------------------+-----------------------------------------------+
| > hours     | > number           | The normalized hours component of a days and  |
|             |                    | time duration value. Since the value is       |
|             |                    | normalized, this property must return an      |
|             |                    | integer in the interval \[0..23\]. This       |
|             |                    | property returns null when invoked on a years |
|             |                    | and months duration value.                    |
+-------------+--------------------+-----------------------------------------------+
| > minutes   | > number           | The normalized minutes component of a days    |
|             |                    | and time duration value. Since the value is   |
|             |                    | normalized, this property must return an      |
|             |                    | integer in the interval \[0..59\]. This       |
|             |                    | property returns null when invoked on a years |
|             |                    | and months duration value.                    |
+-------------+--------------------+-----------------------------------------------+
| > seconds   | > number           | The normalized minutes component of a days    |
|             |                    | and time duration value. Since the value is   |
|             |                    | normalized, this property must return a       |
|             |                    | decimal in the interval \[0..60). This        |
|             |                    | property returns null when invoked on a years |
|             |                    | and months duration value.                    |
+-------------+--------------------+-----------------------------------------------+
| > value     | > number           | The value returned by the value function      |
|             |                    | corresponding to the type as defined in       |
|             |                    | [10.3.2.3.4](#_Ref123027748),                 |
|             |                    | [10.3.2.3.5](#_Ref123027760),                 |
|             |                    | [10.3.2.3.6](#_Ref123041323),                 |
|             |                    | [10.3.2.3.7](#_Ref123027770) and              |
|             |                    | [10.3.2.3.8](#_Ref123108493).                 |
+-------------+--------------------+-----------------------------------------------+

: []{#_Ref114042352 .anchor}Table 67: Specific semantics of date, time,
and duration properties

+-----------------------+-----------------------+---------------------+
| > **name**            | > **type(name)**      | > **description**   |
+=======================+=======================+=====================+
| > start               | > Type of the start   | > the start         |
|                       | > endpoint of the     | > endpoint of the   |
|                       | > range               | > range             |
+-----------------------+-----------------------+---------------------+
| > end                 | > Type of the end     | > the end endpoint  |
|                       | > endpoint of the     | > of the range      |
|                       | > range               |                     |
+-----------------------+-----------------------+---------------------+
| > start included      | > boolean             | true if the start   |
|                       |                       | endpoint is         |
|                       |                       | included in the     |
|                       |                       | range               |
+-----------------------+-----------------------+---------------------+
| > end included        | > boolean             | true if the end     |
|                       |                       | endpoint is         |
|                       |                       | included in the     |
|                       |                       | range               |
+-----------------------+-----------------------+---------------------+

: Table 68: Specific semantics of range properties

In the case of nested contexts, the descendant expression can be used to
access a property name recursively throughout the nested context. For
example:

{ a: { b: { b: 1 } } }\...b

is evaluated to:

\[ { b: 1 }, 1 \]

because each key contained in the context and all of its nested contexts
are returned as a list of associated values.

+-------------+--------------+------------------------+-------------------------+
| **Grammar** | **FEEL**     | > **Mapped to Domain** | > **Applicability**     |
|             |              |                        |                         |
| **Rule**    |              |                        |                         |
+=============+==============+========================+=========================+
| > 68        | > *e...name* | > **e..."name"**       | **type e is a context** |
+-------------+--------------+------------------------+-------------------------+

Lists are defined in [Table 69](#_Ref114042452).

+-------------+--------------+------------------------+-------------------------+
| **Grammar** | **FEEL**     | > **Mapped to Domain   | > **Applicability**     |
|             |              | > (scope s)**          |                         |
| **Rule**    | **Syntax**   |                        |                         |
+=============+==============+========================+=========================+
| > 54        | > *e1\[e2\]* | > **e1\[e2\]**         | **e1** is a list and    |
|             |              |                        | **e2** is an integer (0 |
|             |              |                        | scale number)           |
+-------------+--------------+------------------------+-------------------------+
| > 54        | > *e1\[e2\]* | > **e 1**              | **e1** is not a list    |
|             |              |                        | and not **null** and    |
|             |              |                        | **value(e2)**           |
|             |              |                        |                         |
|             |              |                        | = **1**                 |
+-------------+--------------+------------------------+-------------------------+
| > 54        | > *e1\[e2\]* | > list of items **e**  | **e1** is a list and    |
|             |              | > such that **i** is   | **type(**FEEL(*e2,*     |
|             |              | > in **e** iff **i**   | **s\'**)**)** is        |
|             |              | > is in **e1** and     | boolean                 |
|             |              | > FEEL(*e2,* **s\'**)  |                         |
|             |              | > is **true**, where   |                         |
|             |              | > **s\'** is the scope |                         |
|             |              | > **s** with a special |                         |
|             |              | > first context        |                         |
|             |              | > containing the       |                         |
|             |              | > context entry        |                         |
|             |              | > (\"**item**\",       |                         |
|             |              | > **i**) and if **i**  |                         |
|             |              | > is a context, the    |                         |
|             |              | > special context also |                         |
|             |              | > contains all the     |                         |
|             |              | > context entries of   |                         |
|             |              | > **i**.               |                         |
+-------------+--------------+------------------------+-------------------------+
| > 54        | > *e1\[e2\]* | > **\[e1\]** if        | **e1** is not a list    |
|             |              | > FEEL(*e2,* **s\'**)  | and not **null** and    |
|             |              | > is **true**, where   | **type(**FEEL(*e2,*     |
|             |              | > **s\'** is the scope | **s\'**)**)** is        |
|             |              | > **s** with a special | boolean                 |
|             |              | > first context        |                         |
|             |              | > containing the       |                         |
|             |              | > context entry        |                         |
|             |              | > (\"**item**\",       |                         |
|             |              | > **e1**) and if       |                         |
|             |              | > **e1** is a context, |                         |
|             |              | > the special context  |                         |
|             |              | > also contains all    |                         |
|             |              | > the context entries  |                         |
|             |              | > of **e1**.           |                         |
|             |              | >                      |                         |
|             |              | > Else **\[\]**.       |                         |
+-------------+--------------+------------------------+-------------------------+

: []{#_Ref114042452 .anchor}Table 69: Semantics of lists

Contexts are defined in [Table 70](#_Ref114042493).

[]{#_Ref114042493 .anchor}**Table 70: Semantics of contexts**

+-------------+-------------------+-----------------------------------+
| > **Grammar | > **FEEL Syntax** | > **Mapped to Domain (scope s)**  |
| > Rule**    |                   |                                   |
+=============+===================+===================================+
|             | > *{ n1 : e1, n2  | > **{** \"**n1**\"**:**           |
|             | > : e2, \...}*    | > FEEL(*e1*, **s1**)**,**         |
|             |                   | > \"**n2**\"**:** FEEL(*e2*,      |
|             |                   | > **s2**)**, \...}** such that    |
|             |                   | > the **si** are all **s** with a |
|             |                   | > special first context **ci**    |
|             |                   | > containing a subset of the      |
|             |                   | > entries of this result context. |
|             |                   | > If **ci** contains the entry    |
|             |                   | > for **nj**, then **cj** does    |
|             |                   | > not contain the entry for       |
|             |                   | > **ni**.                         |
|             +-------------------+                                   |
|             | > *{ \"n1\" : e1, |                                   |
|             | > \"n2\" : e2,    |                                   |
|             | > \...}*          |                                   |
+-------------+-------------------+                                   |
| > 57        |                   |                                   |
+-------------+-------------------+-----------------------------------+
| > 54        | > *\[e1, e2,      | > **\[** FEEL(*e1*)**,**          |
|             | > \...\]*         | > FEEL(*e2*)**, \...\]**          |
+-------------+-------------------+-----------------------------------+

#### Error Handling

Errors in FEEL expressions are handled according to section
[7.3.8](#_Ref165458101).

### XML Data

FEEL supports XML Data in the FEEL context by mapping XML Data into the
FEEL Semantic Domain. Let XE(*e*, **p**) be a function mapping an XML
element *e* and a parent FEEL context **p** to a FEEL context , as
defined in the following tables. XE makes use of another mapping
function, XV(*v*), that maps an XML value *v* to the FEEL semantic
domain.

XML namespace semantics are not supported by the mappings. For example,
given the namespace prefix declarations *xmlns:p1=
\"*http://example.org/foobar*[\"](http://example.org/foobar)* and
*xmlns:p2= \"*http://example.
org/foobar[*\"*](http://example.org/foobar), the tags *p1:myElement* and
*p2:myElement* are the same element using XML namespace semantics but
are different using XML without namespace semantics.

#### Semantic mapping for XML elements (XE)

[Table 71](#_Ref114042537), *e* is the name of an XML element, *a* is
the name of one of its attributes, *c* is a child element, and *v* is a
value. The parent context **p** is initially empty.

+-----------------------+-------------------------+---------------------+
| > **XML**             | > **context entry in    | > **Remark**        |
|                       | > p**                   |                     |
+=======================+=========================+=====================+
| > *\<e /\>*           | > \"**e**\" **: null**  | empty element →     |
|                       |                         | **null**-valued     |
|                       |                         | entry in **p**      |
+-----------------------+-------------------------+---------------------+
| > *\<q:e /\>*         | > \"**e**\" **: null**  | > namespaces are    |
|                       |                         | > ignored.          |
+-----------------------+-------------------------+---------------------+
| > *\<e\>v\</e\>*      | > \"**e**\"**:**XV(*v*) | unrepeated element  |
|                       |                         | without attributes  |
+-----------------------+-------------------------+---------------------+
| > *\<e\>v1\</e\>      | > \"**e**\"**: \[**     | repeating element   |
| > \<e\>v2\</e\>*      | > XV(*v1*)**,**         | without attributes  |
|                       | > XV(*v2*) **\]**       |                     |
+-----------------------+-------------------------+---------------------+
| > *\<e a=\"v\"/\>*    | > **\"e\": { \"a\":**   | An element          |
| >                     | > XV(*v*),              | containing          |
| > *\<c1\>v1\</c1\>*   | >                       | attributes or child |
|                       | > **\"c1\":** XV(*v1*), | elements → context  |
+-----------------------+-------------------------+---------------------+
| > *\<e                | \"**e**\"**: {**        | *v2* is contained   |
| > a=\"v1\"\>v2\</e\>* | \"**\@a**\"**:**        | in a generated      |
|                       | XV(*v1*),               |                     |
|                       | \"**\$content**\"**:**  | \$content entry     |
|                       |                         |                     |
|                       | XV(*v2*) **}**          |                     |
+-----------------------+-------------------------+---------------------+

: []{#_Ref114042537 .anchor}Table 71: Semantics of XML elements

An entry in the **context entry in p** column such as **\"e\" : null**
indicates a context entry with string key **\"e\"** and value **null**.
The context entries are contained by context **p** that corresponds to
the containing XML element, or to the XML document itself.

The mapping does not replace namespace prefixes with the namespace IRIs.
FEEL requires only that keys within a context be distinct, and the
namespace prefixes are sufficient.

#### Semantic mapping for XML values (XV)

If an XML document was parsed with a schema, then some atomic values may
have a datatype other than string. [Table 72](#_Ref114042576) defines
how a typed XML value *v* is mapped to FEEL.

+-----------------------+-------------------------------+
| **Type of *v***       | > **FEEL Semantic Domain**    |
+=======================+===============================+
| number                | > FEEL(*v*)                   |
+-----------------------+-------------------------------+
| string                | > FEEL(*\"v\"*)               |
+-----------------------+-------------------------------+
| date                  | > FEEL(*date(\"v\")*)         |
+-----------------------+-------------------------------+
| dateTime              | > FEEL(*date and              |
|                       | > time(\"v\")*)               |
+-----------------------+-------------------------------+
| time                  | > FEEL(*time(\"v\")*)         |
+-----------------------+-------------------------------+
| duration              | > FEEL(duration(\"v\"))       |
+-----------------------+-------------------------------+
| list, e.g. \"v1 v2\"  | > \[ XV(v1), XV(v2) \]        |
+-----------------------+-------------------------------+
| element               | > XE(v)                       |
+-----------------------+-------------------------------+

: []{#_Ref114042576 .anchor}Table 72: Semantics of XML values

#### XML example

The following schema and instance are equivalent to the following FEEL:

##### ~schema~

\<xsd:schema
xmlns:xsd=\"http://www.w3.org/2001/XMLSchema[\"](http://www.w3.org/2001/XMLSchema)
xmlns=\"http://www.example.org[\"](http://www.example.org/)
targetNamespace=[\"](http://www.example.org/)http://www.example.org[\"](http://www.example.org/)
elementFormDefault=\"qualified\"\>

> \<xsd:element name=\"Context\"\>
>
> \<xsd:complexType\> \<xsd:sequence\>
>
> \<xsd:element name=\"Employee\"\>
>
> \<xsd:complexType\> \<xsd:sequence\>
>
> \<xsd:element name=\"salary\" type=\"xsd:decimal\"/\>
>
> \</xsd:sequence\> \</xsd:complexType\>
>
> \</xsd:element\>
>
> \<xsd:element name=\"Customer\" maxOccurs=\"unbounded\"\>
>
> \<xsd:complexType\> \<xsd:sequence\>
>
> \<xsd:element name=\"loyalty_level\" type=\"xsd:string\"/\>
>
> \<xsd:element name=\"credit_limit\" type=\"xsd:decimal\"/\>
>
> \</xsd:sequence\> \</xsd:complexType\>
>
> \</xsd:element\>
>
> \</xsd:sequence\> \</xsd:complexType\>
>
> \</xsd:element\>

\</xsd:schema\>

##### instance

[]{#_Ref123134081 .anchor}\<Context
xmlns:tns=\"http://www.example.org[\"](http://www.example.org/)
xmlns=\"http://www.example.org[\"](http://www.example.org/)\>

> \<tns:Employee\>
>
> \<tns:salary\>13000\</tns:salary\>
>
> \</tns:Employee\>
>
> \<Customer\>
>
> \<loyalty_level\>gold\</loyalty_level\>
>
> \<credit_limit\>10000\</credit_limit\>
>
> \</Customer\>
>
> \<Customer\>
>
> \<loyalty_level\>gold\</loyalty_level\>
>
> \<credit_limit\>20000\</credit_limit\>
>
> \</Customer\>
>
> \<Customer\>
>
> \<loyalty_level\>silver\</loyalty_level\>
>
> \<credit_limit\>5000\</credit_limit\>
>
> \</Customer\>

\</Context\>

##### equivalent FEEL boxed context

+---------------+-----------------+----------------+
| > **Context** |                 |                |
+===============+=================+================+
| > Employee    | > salary        | > 13000        |
+---------------+-----------------+----------------+
| > Customer    | > loyalty_level | > credit_limit |
|               +-----------------+----------------+
|               | > *gold*        | 10000          |
|               +-----------------+----------------+
|               | > *gold*        | 20000          |
|               +-----------------+----------------+
|               | > *silver*      | 5000           |
+---------------+-----------------+----------------+

When a decision model is evaluated, its input data described by an item
definition such as an XML Schema element

(clause [7.3.2](#_Ref123124739)) is bound to case data mapped to the
FEEL domain. The case data can be in various formats, such as XML. We
can notate case data as an equivalent boxed context, as above. Decision
logic can reference entries in the context using expressions such as
*Context.tns\$Employee.tns\$salary*, which has a value of 13000.

### Built-in functions

To promote interoperability, FEEL includes a library of built-in
functions. The syntax and semantics of the built-ins are required for a
conformant FEEL implementation.

In all of the tables in this section, a superscript refers to an
additional domain constraint stated in the corresponding footnote to the
table. Whenever a parameter is outside its domain, the result of the
built-in is **null**.

#### Conversion functions

FEEL supports many conversions between values of different types. Of
particular importance is the conversion from strings to dates, times,
and durations. There is no literal representation for date, time, or
duration. Also, formatted numbers such as *1,000.00* must be converted
from a string by specifying the grouping separator and the decimal
separator.

Built-ins are summarized in [Table 73](#_Ref114042626). The first column
shows the name and parameters. A question mark (*?*) denotes an optional
parameter. The second column specifies the domain for the parameters.
The parameter domain is specified as one of:

- a type, *e.g.,* number, string

- any -- any element from the semantic domain, including **null**

- not null -- any element from the semantic domain, excluding **null**

- date string -- a string value in the lexical space of the date
  datatype specified by XML Schema Part 2 Datatypes

- time string -- a string value that is the extended form of a local
  time representation as specified by ISO 8601, followed by the
  character \"@\", followed by a string value that is a time zone
  identifier in the IANA Time Zones Database
  (<http://www.iana.org/time-zones>). The usage of the IANA Time Zones
  identifiers has been deprecated as of DMN 1.6 for time literals only.
  The FEEL function date and time(date, time, timezone) SHOULD be used
  instead of date and time(date, time). The use of IANA Time Zones
  identifiers for date and time literals is NOT deprecated.

- date time string -- a string value consisting of a date string value,
  as specified above, optionally followed by the character \"T\"
  followed by a time string value as specified above.

- duration string -- a string value in the lexical space of the
  xs:dayTimeDuration or xs:yearMonthDuration datatypes specified by the
  XQuery 3.1 and XPath 3.1 Data Model.

- range string -- a string value conforming to grammar rule 66 "range
  literal\" as defined in chapter [10.3.1.2](#_Ref123028648).

+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > **Name(parameters)** | **Parameter** | > **Description**             | > **Example**                                 |
|                        |               |                               |                                               |
|                        | **Domain**    |                               |                                               |
+========================+===============+===============================+===============================================+
| > date(*from*)         | > date string | > convert *from* to a date    | *date(\"2012-12-25\") -- date(\"2012-12-24\") |
|                        |               |                               | = duration(\"P1D \")*                         |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > date(*from*)         | > date and    | convert *from* to a date (set | *date( date and                               |
|                        | > time        | time components to null)      | time(\"2012-12-25T11:00:00Z\")) =*            |
|                        |               |                               |                                               |
|                        |               |                               | *date(\"2012-12-25\")*                        |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > date(*year*,         | *year*,       | creates a date from year,     | > *date (2012, 12, 25) =                      |
| > *month*, *day*)      | *month*,      | month, day component values   | > date(\"2012-12-25\")*                       |
|                        | *day* are     |                               |                                               |
|                        | numbers^2^    |                               |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > date and             | *date* is a   | creates a date time from the  | *date and time (\"2012-12-24T23:59:00\") =    |
| > time(*date*, *time*) | date or date  | given date (ignoring any time | date and time (date(\"2012-12-24"), time      |
|                        | time; *time*  | component) and the given time | ("23:59:00\"))*                               |
|                        | is a time     |                               |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > date and             | > *date* is a | creates a date time from the  | *date and time (date(\"2024-12-24\"),         |
| > time(*date*, *time*, | > date or     | given date, time and timezone | time(\"23:59:00\"), \"Z\") = date and time    |
| > *timezone*)          | > date time;  |                               | (\"2024-12-24T23:59:00Z\")*                   |
|                        | > *time* is a |                               |                                               |
|                        | > time        |                               | *date and time (date(\"2024-12-24\"),         |
|                        | > without     |                               | time(\"23:59:00\"), \"America/Costa_Rica\") = |
|                        | > timezone;   |                               | date and time                                 |
|                        | > *timezone*  |                               | (\"2024-12-24T23:59:00@America/Costa_Rica\")* |
|                        | > is a string |                               |                                               |
|                        | > denoting a  |                               |                                               |
|                        | > timezone    |                               |                                               |
|                        | > offset or a |                               |                                               |
|                        | > IANA zone   |                               |                                               |
|                        | > identifier  |                               |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > date and             | > date time   | convert *from* to a date and  | *date and time(\"2012-12-24T23:59:00\") +     |
| > time(*from*)         | > string      | time                          | duration(\"PT1M\") = date and time(\"2012-*   |
|                        |               |                               |                                               |
|                        |               |                               | *12-25T00:00:00\")*                           |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > time(*from*)         | > time string | > convert *from* to time      | *time(\"23:59:00z\") + duration(\"PT2M\") =   |
|                        |               |                               | time(\"00:01:00@Etc/UTC\")*                   |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| > time(*from*)         | > time, date  | convert *from* to time        | *time( date and                               |
|                        | > and time    | (ignoring date components)    | time(\"2012-12-25T11:00:00Z\")) = time(\"1    |
|                        |               |                               | 1:00:00Z\")*                                  |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| time(*hour*, *minute*, | *hour*,       | creates a time from the given | > *time ("23:59:00z\") =*                     |
| *second*, *offset?*)   | *minute*,     | component values              | >                                             |
|                        | *second*, are |                               | > *time (23, 59, 0, duration("PT0H"))*        |
|                        | numbers^2^,   |                               |                                               |
|                        | *offset* is a |                               |                                               |
|                        | days and time |                               |                                               |
|                        | duration,     |                               |                                               |
|                        |               |                               |                                               |
|                        | or null       |                               |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| number(*from, grouping | string^1^,    | > convert *from* to a number  | > *number(\"1 000,0\", \" \", \",\") =        |
| separator, decimal     | string^1^,    |                               | > number(\"1,000.0\", \" ,\", \".\")*         |
| separator*)            | string^1^     |                               |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| number(*from*)         | string^1^     | > convert *from* to a number  | > *number(\"1.1\") = number(\"1.1\", null,    |
|                        |               |                               | > null) = 1.1*                                |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| number(*from*)         | number        | > return *from*               | > *number(5) = 5*                             |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| string(*from*)         | non-null      | > convert *from* to a string  | > *string(1.1) = \"1.1\" string(null) = null* |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| duration(*from*)       | duration      | > convert *from* to a days    | > *date and time(\"2012-12-24T23:59:00\") -   |
|                        | string        | > and time or years and       | > date and time(\"2012-12-22T03:45:00\") =    |
|                        |               | > months duration             | > duration(\"P2DT20H14M\")                    |
|                        |               |                               | > duration(\"P2Y2M\") = duration(\"P26M\")*   |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| days and time          | duration      | > convert *from* to a days    | *date and time(\"2012-12-24T23:59:00\") -     |
| duration(*from*)       | string        | > and time duration           | date and time(\"2012-12-22T03:45:00\") = days |
|                        |               |                               | and time duration(\"P2DT20H14M\")*            |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| years and months       | duration      | > convert *from* to a years   | > *years and months duration(\"P2Y2M\") =     |
| duration(*from*)       | string        | > and months duration         | > years and months duration(\"P26M\")*        |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| years and months       | both are date | > return years and months     | > *years and months duration                  |
| duration(*from, to*)   | or both are   | > duration between *from* and | > (date(\"2011-12-22\"), date(\"2013-08-24\") |
|                        | date and time | > *to*                        | > ) = duration(\"P1Y8M\")*                    |
+------------------------+---------------+-------------------------------+-----------------------------------------------+
| range (*from*)         | range string  | > Convert from a range string | > *range(\"\[18..21)\")* is *\[18..21)*       |
|                        |               | > to a range, according to    | >                                             |
|                        |               | > the definitions of chapter  | > *range(\"\[2..)\")* is *\>=2*               |
|                        |               | > [10.3.2.7](#_Ref123108337)  | >                                             |
|                        |               | > "Ranges".                   | > *range(\"(..2)\")* is *\<2*                 |
|                        |               | >                             | >                                             |
|                        |               | > Please notice that in range | > *range(\"\") is* **null**                   |
|                        |               | > string, only literal range  | >                                             |
|                        |               | > endpoints are allowed as    | > *range(\"\[..\]\") is* **null**             |
|                        |               | > defined in grammar rule 67  |                                               |
|                        |               | > "range endpoint\" in        |                                               |
|                        |               | > chapter                     |                                               |
|                        |               | > [10.3.1.2](#_Ref123028648). |                                               |
|                        |               | >                             |                                               |
|                        |               | > If range string does not    |                                               |
|                        |               | > conform with grammar rule   |                                               |
|                        |               | > 66, the result is **null**. |                                               |
+------------------------+---------------+-------------------------------+-----------------------------------------------+

: []{#_Ref114042626 .anchor}Table 73: Semantics of conversion functions

> 1\. *grouping separator* SHALL be one of space (\' \'), comma (\',\'),
> period (\'.\'), or null.
>
> *Decimal separator* SHALL be one of period, comma, or null, but SHALL
> NOT be the same as the grouping separator unless both are null.
>
> *from* SHALL conform to grammar rule 37, after removing all
> occurrences of the grouping separator, if any, and after changing the
> decimal separator, if present, to a period.
>
> 2\. If year. month, day, hour, minute or second are decimal numbers,
> the implicit conversion *from* *decimal* *to* *integer* is applied.
>
> 3\. The *duration()* function has been deprecated as of DMN 1.7 and
> replaced with *days and time duration()* and *years and months
> duration()*.

####  Boolean function

[Table 74](#_Ref114043525) defines Boolean functions.

[]{#_Ref114043525 .anchor}**Table 74: Semantics of Boolean functions**

+------------------------+---------------+-------------------+-------------------------+
| > **Name(parameters)** | **Parameter** | > **Description** | > **Example**           |
|                        |               |                   |                         |
|                        | **Domain**    |                   |                         |
+========================+===============+===================+=========================+
| > not(*negand*)        | > boolean     | > logical         | *not(true) = false      |
|                        |               | > negation        | not(null) = null*       |
+------------------------+---------------+-------------------+-------------------------+

#### String functions

Table [75](#_Ref114043832) defines string functions.

+------------------------+---------------+-------------------+----------------------------------+
| > **Name(parameters)** | **Parameter** | > **Description** | > **Example**                    |
|                        |               |                   |                                  |
|                        | **Domain**    |                   |                                  |
+========================+===============+===================+==================================+
| substring(*string,     | > string,     | return *length*   | *substring(\"foobar\",3) =       |
| start position,        | > number^1^   | (or all)          | \"obar\"                         |
| length?*)              |               | characters in     | substring(\"foobar\",3,3) =      |
|                        |               | *string*,         | \"oba\" substring(\"foobar\",    |
|                        |               | starting at       | -2, 1) = \"a\"*                  |
|                        |               | *start*           |                                  |
|                        |               |                   | *substring(\"\\U01F40Eab\", 2) = |
|                        |               | *position*. 1st   | \"ab\" where \"\\U01F40Eab\" is  |
|                        |               | position is 1,    | the representation of*           |
|                        |               | last position is  | 🐎***ab***                       |
|                        |               | -1                |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| string length(string)  | > string      | return number of  | *string length(\"foo\") = 3      |
|                        |               | characters (or    | string length(\"\\U01F40Eab\") = |
|                        |               | code points) in   | 3*                               |
|                        |               | string.           |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| upper case(string)     | > string      | return uppercased | *upper case(\"aBc4\") =          |
|                        |               | string            | \"ABC4\"*                        |
+------------------------+---------------+-------------------+----------------------------------+
| lower case(string)     | > string      | return lowercased | *lower case(\"aBc4\") =          |
|                        |               | string            | \"abc4\"*                        |
+------------------------+---------------+-------------------+----------------------------------+
| substring before       | > string,     | return substring  | *Substring                       |
|                        | > string      | of string before  | before(\"foobar\",\"bar\") =*    |
| (string, match)        |               | the match in      |                                  |
|                        |               | string            | *\"foo\" substring               |
|                        |               |                   | before(\"foobar\",\"xyz\") =     |
|                        |               |                   | \"\"*                            |
+------------------------+---------------+-------------------+----------------------------------+
| substring after        | > string,     | return substring  | *substring after(\"foobar\",     |
|                        | > string      | of string after   | \"ob\") = \"ar\" substring       |
| (string, match)        |               | the match in      | after(\"\", \"a\") = \"\"*       |
|                        |               | string            |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| replace(input,         | > string2     | regular           | *replace(\"banana\",\"a\",\"o\") |
| pattern, replacement,  |               | expression        | = \"bonono\"*                    |
| flags?)                |               | pattern matching  |                                  |
|                        |               | and replacement   | *replace(\"abcd\",               |
|                        |               |                   | \"(ab)\|(a)\",*                  |
|                        |               |                   |                                  |
|                        |               |                   | *\"\[1=\$1\]\[2=\$2\]\") =       |
|                        |               |                   | \"\[1=ab\]\[2=\]cd\"*            |
+------------------------+---------------+-------------------+----------------------------------+
| contains(string,       | > string      | does the string   | *contains(\"foobar\", \"of\") =  |
| match)                 |               | contain the       | false*                           |
|                        |               | match?            |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| starts with(string,    | > string      | does the string   | *starts with(\"foobar\", \"fo\") |
| match)                 |               | start with the    | = true*                          |
|                        |               | match?            |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| ends with( string,     | > string      | does the string   | *ends with(\"foobar\", \"r\") =  |
| match)                 |               | end with the      | true*                            |
|                        |               | match?            |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| matches(input,         | > string2     | does the input    | *matches(\"foobar\",             |
| pattern, flags?)       |               | match the regexp  | \"\^fo\*b\") = true*             |
|                        |               | pattern?          |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| split( string,         | > *string* is | Splits the string | *split( "John Doe", "\\\\s" ) =  |
| delimiter )            | > a string,   | into a list of    | \["John", "Doe"\] split(         |
|                        | > *delimiter* | substrings,       | "a;b;c;;", ";" ) =*              |
|                        | > is a        | breaking at each  |                                  |
|                        | > pattern2    | occurrence of the | *\["a","b","c","",""\]*          |
|                        |               | delimiter         |                                  |
|                        |               | pattern.          |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| string join(list,      | > *list* is a | return a string   | *string                          |
| delimiter)             | > list of     | which is composed | join(\[\"a\",\"b\",\"c\"\],      |
|                        | > strings,    | by                | \"\_and\_\") =*                  |
|                        | > *delimiter* |                   |                                  |
|                        | > is a string | joining all the   | *\"a_and_b_and_c\"*              |
|                        |               | string elements   |                                  |
|                        |               | from the list     | *string                          |
|                        |               | parameter,        | join(\[\"a\",\"b\",\"c\"\],      |
|                        |               | separated by the  | \"\") = \"abc\" string           |
|                        |               | delimiter. The    | join(\[\"a\",\"b\",\"c\"\],      |
|                        |               | delimiter can be  | null) = \"abc\" string           |
|                        |               | an empty string.  | join(\[\"a\"\], \"X\") = \"a\"   |
|                        |               | Null elements in  | string                           |
|                        |               | the list          | join(\[\"a\",null,\"c\"\],       |
|                        |               | parameter are     | \"X\") = \"aXc\" string          |
|                        |               | ignored.          | join(\[\], \"X\") = \"\"*        |
|                        |               |                   |                                  |
|                        |               | If ***list*** is  |                                  |
|                        |               | empty, the result |                                  |
|                        |               | is the empty      |                                  |
|                        |               | string.           |                                  |
|                        |               |                   |                                  |
|                        |               | If                |                                  |
|                        |               | ***delimiter***   |                                  |
|                        |               | is null, the      |                                  |
|                        |               | string elements   |                                  |
|                        |               | are joined        |                                  |
|                        |               | without a         |                                  |
|                        |               | separator.        |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| string join(list)      | > *list* is a | return a string   | *string                          |
|                        | > list of     | which is composed | join(\[\"a\",\"b\",\"c\"\]) =    |
|                        | > strings     | by                | \"abc\" string                   |
|                        |               |                   | join(\[\"a\",null,\"c\"\]) =     |
|                        |               | joining all the   | \"ac\" string join(\[\]) = \"\"* |
|                        |               | string elements   |                                  |
|                        |               | from the list     |                                  |
|                        |               | parameter         |                                  |
|                        |               |                   |                                  |
|                        |               | Null elements in  |                                  |
|                        |               | the list          |                                  |
|                        |               | parameter are     |                                  |
|                        |               | ignored.          |                                  |
|                        |               |                   |                                  |
|                        |               | If ***list*** is  |                                  |
|                        |               | empty, the result |                                  |
|                        |               | is the empty      |                                  |
|                        |               | string.           |                                  |
+------------------------+---------------+-------------------+----------------------------------+
| trim(string)           | > *string*    | return a string   | *trim(\" abc \") = \"abc\"*\     |
|                        |               | with white spaces | *trim(\"x \") = \"x\"*\          |
|                        |               | (see rule 61 of   | *trim(\"\") = \"\"*\             |
|                        |               | the grammar)      | *trim(null) = null*              |
|                        |               | removed from the  |                                  |
|                        |               | beginning and the |                                  |
|                        |               | end               |                                  |
+------------------------+---------------+-------------------+----------------------------------+

: Table []{#_Ref114043832 .anchor}75: Semantics of string functions

1.  *start position* must be a non-zero integer (0 scale number) in the
    range \[-L..L\], where L is the length of the string. *length* must
    be in the range \[1..E\], where E is L -- *start position* + 1 if
    *start position* is positive, and *--start position* otherwise.

2.  *pattern*, *replacement*, and *flags* SHALL conform to the syntax
    and constraints specified in clause 7.6 of XQuery 3.1 and XPath 3.1
    Functions and Operators. Note that where XPath specifies an error
    result, FEEL specifies a null result.

#### List functions

[Table 76](#_Ref114047733) defines list functions.

+----------------------------+------------------+---------------------+------------------------------------------------------+
| > **Name(parameters)**     | **Parameter**    | > **Description**   | > **Example**                                        |
|                            |                  |                     |                                                      |
|                            | **Domain**       |                     |                                                      |
+============================+==================+=====================+======================================================+
| > list contains(*list,     | > list, any      | > does the *list*   | > *list contains(\[1,2,3\], 2) = true*               |
| > element*)                | > element of the | > contain the       |                                                      |
|                            | > semantic       | > *element*?        |                                                      |
|                            | > domain         |                     |                                                      |
|                            | > including      |                     |                                                      |
|                            | >                |                     |                                                      |
|                            | > **null**       |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > count(*list*)            | > list           | > return size of    | > *count(\[1,2,3\]) = 3 count(\[\]) = 0              |
|                            |                  | > *list*, or zero   | > count(\[1,\[2,3\]\]) =*                            |
|                            |                  | > if *list* is      | >                                                    |
|                            |                  | >                   | > *2*                                                |
|                            |                  | > empty             |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > min(*list*)              | > non-empy list  | > return            | > *min(\[1,2,3\]) = 1 max(1,2,3) = 3 min(1) =        |
| > min(*c1,\..., cN*), *N*  | > of comparable  | > minimum(maximum)  | > min(\[1\]) = 1 max(\[\]) = null*                   |
| > \>0 max(*list*)          | > items or       | > item, or **null** |                                                      |
| > max(*c1,\..., cN*), *N*  | > argument list  | > if *list* is      |                                                      |
| > \>0                      | > of one or more | > empty             |                                                      |
|                            | > comparable     |                     |                                                      |
|                            | > items          |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > sum(*list*)              | > list of 0 or   | > return sum of     | > *sum(\[1,2,3\]) = 6 sum(1,2,3) = 6 sum(1) = 1      |
| >                          | > more numbers   | > numbers, or       | > sum(\[\]) = **null***                              |
| > sum(*n1,\..., nN*), *N*  | > or argument    | > **null** if       |                                                      |
| > \>0                      | > list of one or | > *list* is empty   |                                                      |
|                            | > more numbers   |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > mean(*list*)             | > non-empty list | > return arithmetic | > *mean (\[1,2,3\]) = 2 mean(1,2,3) = 2 mean(1) = 1  |
| >                          | > of numbers or  | > mean (average) of | > mean(\[\]) = null*                                 |
| > mean(*n1,\..., nN*), *N* | > argument list  | > numbers           |                                                      |
| > \>0                      | > of one or more |                     |                                                      |
|                            | > numbers        |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > all(*list*)              | > list of        | > return *false* if | *all(\[false,null,true\]) = false all(true) =        |
| >                          | > Boolean items  | > any item is       | all(\[true\]) = true all(\[\]) = true all(0) = null* |
| > all(*b1,\..., bN*), *N*  | > or argument    | > *false*, else     |                                                      |
| > \>0                      | > list of one or | > *true* if empty   |                                                      |
|                            | > more           | > or all items are  |                                                      |
|                            | >                | > *true*, else      |                                                      |
|                            | > Boolean items  | > *null*            |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > any(*list*)              | > list of        | > return *true* if  | > *any(\[false,null,true\]) = true any(false) =      |
| >                          | > Boolean items  | > any item is       | > false any(\[\]) = false any(0) = null*             |
| > any(*b1,\..., bN*), *N*  | > or argument    | > *true*, else      |                                                      |
| > \>0                      | > list of one or | > *false* if empty  |                                                      |
|                            | > more           | > or all items are  |                                                      |
|                            | >                | > *false*, else     |                                                      |
|                            | > Boolean items  | > *null*            |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > sublist(*list, start     | > list,          | > return list of    | > *sublist(\[4,5,6\], 1, 2) = \[4,5\]*               |
| > position, length?*)      | > number^1^,     | > *length* (or all) |                                                      |
|                            | >                | > elements of       |                                                      |
|                            | > number^2^      | > *list,* starting  |                                                      |
|                            |                  | > with *list\[start |                                                      |
|                            |                  | > position\]*.      |                                                      |
|                            |                  | >                   |                                                      |
|                            |                  | > 1st position is   |                                                      |
|                            |                  | > 1, last position  |                                                      |
|                            |                  | > is -1             |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > append(*list, item\...*) | > list, any      | > return new *list* | > *append(\[1\], 2, 3) = \[1,2,3\]*                  |
|                            | > element        | > with *item*s      |                                                      |
|                            | > including      | > appended          |                                                      |
|                            | > **null**       |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > concatenate(*list\...*)  | > list           | > return new *list* | > *concatenate(\[1,2\],\[3\]) = \[1,2,3\]*           |
|                            |                  | > that is a         |                                                      |
|                            |                  | > concatenation of  |                                                      |
|                            |                  | > the arguments     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > insert before(*list,     | > list,          | > return new *list* | > *insert before (\[1,3\], 1,2) = \[2,1,3\]*         |
| > position,*               | > number^1^, any | > with *newItem*    |                                                      |
| >                          | > element        | > inserted at       |                                                      |
| > *newItem*)               | > including      | > *position*        |                                                      |
|                            | > **null**       |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > insert after(*list,      | > list,          | > return new *list* | > *insert after(\[1,3\],1,2) = \[1,2,3\]*\           |
| > position, newItem*)      | > number^1^, any | > with *newItem*    | > *insert after(\[1,3\], null, 2) = null*\           |
|                            | > element        | > inserted after    | > *insert after(\[1,3\], 1, null) = \[1, null, 3\]*\ |
|                            | > including      | > *position*        | > *insert after(\[1,3\], 1, \"2\") = \[1,\"2\",3\]*  |
|                            | > **null**       |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > remove(*list, position*) | > list,          | > *list* with item  | > *remove (\[1,2,3\], 2) = \[1,3\]*                  |
|                            | > number^1^      | > at *position*     |                                                      |
|                            |                  | > removed           |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > list replace(*list,      | > list,          | > return new list   | > *list replace( \[2, 4, 7, 8\], 3, 6) = \[2, 4, 6,  |
| > position, newItem*)      | > number^1^ or   | > with *newItem*    | > 8\]*                                               |
| >                          | > boolean        | > replaced at       | >                                                    |
| > list replace(*list,      | > function(item, | > *position* (if    | > *list replace ( \[2, 4, 7, 8\], function(item,     |
| > match, newItem*)         | > newItem), any  | > *position* is a   | > newItem) item \< newItem, 5) = \[5, 5, 7, 8\]*     |
|                            | > element        | > number) or return |                                                      |
|                            | > including null | > a new list where  |                                                      |
|                            |                  | > *newItem*         |                                                      |
|                            |                  | > replaced at all   |                                                      |
|                            |                  | > positions where   |                                                      |
|                            |                  | > the *match*       |                                                      |
|                            |                  | > function returned |                                                      |
|                            |                  | > *true*            |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > reverse(*list*)          | > list           | > reverse the       | > *reverse (\[1,2,3\]) = \[3,2,1\]*                  |
|                            |                  | > *list*            |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > index of(*list, match*)  | > list, any      | > return ascending  | > *index of(\[1,2,3,2\],2) = \[2,4\]*                |
|                            | > element        | > list of *list*    |                                                      |
|                            | > including      | > positions         |                                                      |
|                            | > **null**       | > containing        |                                                      |
|                            |                  | > *match*           |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > union(*list\...*)        | > list           | > return a list     | > *union (\[1,2\],\[2,3\]) = \[1,2,3\]*              |
|                            |                  | > containing all    |                                                      |
|                            |                  | > the elements in   |                                                      |
|                            |                  | > the lists in no   |                                                      |
|                            |                  | > particular order  |                                                      |
|                            |                  | > with duplicate    |                                                      |
|                            |                  | > removal           |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > intersection(*list*\...) | > list           | > return the common | > *intersection(\[1,2\],\[2,3\], \[2,3,4\]) =        |
|                            |                  | > elements of the   | > \[2\]*\                                            |
|                            |                  | > lists in no       | > *intersection(\[\"a",\"b\",\"c\"\],\[\"a",\"b\"\]) |
|                            |                  | > particular order  | > = \[\"a\", \"b\"\]*\                               |
|                            |                  | > with duplicate    | > *intersection(\[1\],\[2\]) = \[\]*\                |
|                            |                  | > removal           | > *intersection(\[1,2,3\], null) = null*             |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > distinct values(*list*)  | > list           | > duplicate removal | > *distinct values(\[1,2,3,2, 1\]) =*                |
|                            |                  |                     | >                                                    |
|                            |                  |                     | > *\[1,2,3\]*                                        |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > flatten(*list*)          | > list           | > flatten nested    | > *flatten (\[\[1,2\],\[\[3\]\], 4\]) = \[1,2,3,4\]* |
|                            |                  | > lists             |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > product( *list* )        | > *list* is a    | > Returns the       | > *product(\[2, 3, 4\]) = 24 product(\[\]) = null    |
| > product( *n~1~, \...,    | > list of        | > product of the    | > product(2, 3, 4) = 24*                             |
| > n~n~*)                   | > numbers. *n~1~ | > numbers           |                                                      |
|                            | > \... n~n~* are |                     |                                                      |
|                            | > numbers.       |                     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > median( *list* ) median( | > *list* is a    | > Returns the       | > *median( 8, 2, 5, 3, 4 ) = 4 median( \[6, 1, 2,    |
| > *n~1~, \..., n~n~* )     | > list of        | > median element of | > 3\] ) = 2.5 median( \[ \] ) = null*                |
|                            | > number. *n~1~  | > the list of       |                                                      |
|                            | > \... n~n~* are | > numbers. I.e.,    |                                                      |
|                            | > numbers.       | > after sorting the |                                                      |
|                            |                  | > list, if the list |                                                      |
|                            |                  | > has an odd number |                                                      |
|                            |                  | > of elements, it   |                                                      |
|                            |                  | > returns the       |                                                      |
|                            |                  | > middle element.   |                                                      |
|                            |                  | > If the list has   |                                                      |
|                            |                  | > an even number of |                                                      |
|                            |                  | > elements, returns |                                                      |
|                            |                  | > the average of    |                                                      |
|                            |                  | > the two middle    |                                                      |
|                            |                  | > elements. If the  |                                                      |
|                            |                  | > list is empty,    |                                                      |
|                            |                  | > returns null.     |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > stddev( *list* ) stddev( | > *list* is a    | > Returns the       | > *stddev( 2, 4, 7, 5 ) =*                           |
| > *n~1~, \..., n~n~* )     | > list of        | > **sample          | >                                                    |
|                            | > number. *n~1~  | > standard**        | > *2.08166599946613273528229 7706979931*             |
|                            | > \... n~n~* are | >                   | >                                                    |
|                            | > numbers.       | > **deviation** of  | > *stddev( \[ 47 \] ) = null stddev( 47 ) = null*    |
|                            |                  | > the list of       |                                                      |
|                            |                  | > numbers. If the   |                                                      |
|                            |                  | > *list* is empty   |                                                      |
|                            |                  | > or if the *list*  |                                                      |
|                            |                  | > contains only one |                                                      |
|                            |                  | > element, the      |                                                      |
|                            |                  | > function returns  |                                                      |
|                            |                  | > null.             |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+
| > mode( *list* ) mode(     | > *list* is a    | > Returns the mode  | > *mode( 6, 3, 9, 6, 6 ) = \[ 6 \] stddev( \[ \] ) = |
| > *n~1~, \..., n~n~* )     | > list of        | > of the list of    | > null*                                              |
|                            | > number. *n~1~  | > numbers. If the   | >                                                    |
|                            | > \... n~n~* are | > result contains   | > *mode( \[6, 1, 9, 6, 1\] ) = \[ 1, 6 \]*           |
|                            | > numbers.       | > multiple          | >                                                    |
|                            |                  | > elements, they    | > *mode( \[ \] ) = \[ \]*                            |
|                            |                  | > are returned in   |                                                      |
|                            |                  | > ascending order.  |                                                      |
|                            |                  | > If the list is    |                                                      |
|                            |                  | > empty, an empty   |                                                      |
|                            |                  | > list is returned. |                                                      |
+----------------------------+------------------+---------------------+------------------------------------------------------+

: []{#_Ref114047733 .anchor} Table 76: Semantics of list functions

1.  *position* must be a non-zero integer (0 scale number) in the range
    \[-L..L\], where L is the length of the list

2.  *length* must be in the range \[1..E\], where E is L -- *start
    position* + 1 if *start position* is positive, and *--start
    position* otherwise.

3.  If position or length are decimal numbers, the implicit conversion
    *from* *decimal* *to* *integer* is applied.

#### Numeric functions

[Table 77](#_Ref114047854) defines numeric functions.

[]{#_Ref114047854 .anchor}**Table 77: Semantics of numeric functions**

+------------------------+-----------------------+-------------------+---------------------+
| > **Name(parameters)** | **Parameter Domain**  | > **Description** | > **Example**       |
+:======================:+=======================+===================+=====================+
| > decimal(*n, scale*)  | > number, number^1^   | > return *n* with | > *decimal(1/3, 2)  |
|                        |                       | > given *scale*   | > = .33             |
|                        |                       |                   | > decimal(1.5, 0) = |
|                        |                       |                   | > 2 decimal(2. 5,   |
|                        |                       |                   | > 0) = 2*           |
+------------------------+-----------------------+-------------------+---------------------+
| > floor(*n*)\          | > number number,      | > Return n with   | > *floor(1.5) = 1\  |
| > floor(*n*, *scale*)  | > number1             | > given scale and | > floor(-1.56, 1) = |
|                        |                       | > rounding mode   | > -1.6*             |
|                        |                       | > flooring.       |                     |
|                        |                       | >                 |                     |
|                        |                       | > If at least one |                     |
|                        |                       | > of n or scale   |                     |
|                        |                       | > is **null** the |                     |
|                        |                       | > result is       |                     |
|                        |                       | > **null**.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > ceiling(*n*)\        | > number number,      | > Return n with   | > *ceiling(1.5) =   |
| > ceiling(*n*,         | > number1             | > given scale and | > 2\                |
| > *scale*)             |                       | > rounding mode   | > ceiling(-1.56, 1) |
|                        |                       | > ceiling.        | > = -1.5*           |
|                        |                       | >                 |                     |
|                        |                       | > If at least one |                     |
|                        |                       | > of n or scale   |                     |
|                        |                       | > is **null** the |                     |
|                        |                       | > result is       |                     |
|                        |                       | > **null**.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > round up(*n*)\       | > number, number1     | > Return n with   | > *round up(5.5) =  |
| > round up(*n*,        |                       | > given scale and | > 6\                |
| > *scale*)             |                       | > rounding mode   | > round up(-5.5, 0) |
|                        |                       | > round up.       | > = -6\             |
|                        |                       | >                 | > round up(1.121,   |
|                        |                       | > If at least one | > 2) = 1.13 round   |
|                        |                       | > of n or scale   | > up(-1.126, 2) =   |
|                        |                       | > is **null** the | > -1.13*            |
|                        |                       | > result is       |                     |
|                        |                       | > **null**.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > round down(*n*)\     | > number, number1     | > Return n with   | > *round down(5.5)  |
| > round down(*n*,      |                       | > given scale and | > = 5\              |
| > *scale*)             |                       | > rounding mode   | > round down (-5.5, |
|                        |                       | > round down.     | > 0) = -5\          |
|                        |                       | >                 | > round down        |
|                        |                       | > If at least one | > (1.121, 2) = 1.12 |
|                        |                       | > of n or scale   | > round down        |
|                        |                       | > is **null** the | > (-1.126, 2) =     |
|                        |                       | > result is       | > -1.12*            |
|                        |                       | > **null**.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > round half up(*n*)\  | > number, number1     | Return n with     | > *round half       |
| > round half up(*n*,   |                       | given scale and   | > up(5.5) = 6\      |
| > *scale*)             |                       | rounding mode     | > round half        |
|                        |                       | round half up.    | > up(-5.5, 0) = -6\ |
|                        |                       |                   | > round half        |
|                        |                       | > If at least one | > up(1.121, 2) =    |
|                        |                       | > of n or scale   | > 1.12 round half   |
|                        |                       | > is **null** the | > up(-1.126, 2) =   |
|                        |                       | > result is       | > -1.13*            |
|                        |                       | > **null**.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > round half           | > number, number1     | > Return n with   | > *round half down  |
| > down(*n*)\           |                       | > given scale and | > (5.5) = 5\        |
| > round half down(*n*, |                       | > rounding mode   | > round half down   |
| > *scale*)             |                       | > round up.       | > (-5.5, 0) = -5    |
|                        |                       | >                 | > round half down   |
|                        |                       | > If at least one | > (1.121, 2) = 1.12 |
|                        |                       | > of n or scale   | > round half down   |
|                        |                       | > is **null** the | > (-1.126, 2) = -*  |
|                        |                       | > result is       | >                   |
|                        |                       | > **null**.       | > *1.13*            |
+------------------------+-----------------------+-------------------+---------------------+
| > abs( *n* )           | > *n i*s a number, a  | > Returns the     | > *abs( 10 ) = 10\  |
|                        | > days and time       | > absolute value  | > abs( -10 ) = 10   |
|                        | > duration or a year  | > of *n*.         | > abs(@"PT5H") =    |
|                        | > and month duration  |                   | > @"PT5H"\          |
|                        |                       |                   | > abs(@"-PT5H") =   |
|                        |                       |                   | > @"PT5H"*          |
+------------------------+-----------------------+-------------------+---------------------+
| > modulo( *dividend*,  | > *dividend* and      | > Returns the     | > *modulo( 12, 5 )  |
| > *divisor* )          | > *divisor* are       | > remainder of    | > = 2               |
|                        | > numbers, where      | > the division of | > modulo(-12,5)= 3  |
|                        | > *divisor* must not  | > dividend by     | > modulo(12,-5)= -3 |
|                        | > be 0 (zero).        | > divisor.        | > modulo(-12,-5)=   |
|                        | > Returns the         |                   | > -2 modulo(10. 1,  |
|                        | > remainder of the    |                   | > 4.5)= 1.1         |
|                        | > division of         |                   | > modulo(-10.1,     |
|                        | > *dividend* by       |                   | > 4.5)= 3.4         |
|                        | > *divisor*. In case  |                   | > modulo(10.1,      |
|                        | > either *dividend*   |                   | > -4.5)= -3.4       |
|                        | > or *divisor* is     |                   | > modulo(-10.1,     |
|                        | > negative, the       |                   | > -4.5)= -1.1*      |
|                        | > result has the same |                   |                     |
|                        | > sign of the         |                   |                     |
|                        | > *divisor*.          |                   |                     |
|                        | >                     |                   |                     |
|                        | > The modulo function |                   |                     |
|                        | > can be expressed as |                   |                     |
|                        | > follows:            |                   |                     |
|                        | >                     |                   |                     |
|                        | > modulo (dividend,   |                   |                     |
|                        | > divisor) = dividend |                   |                     |
|                        | >                     |                   |                     |
|                        | > \- divisor\*floor   |                   |                     |
|                        | >                     |                   |                     |
|                        | > (dividend/divisor). |                   |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > sqrt( *number* )     | > *number* is a       | > Returns the     | > *sqrt( 16 ) = 4*  |
|                        | > number.             | > square root of  |                     |
|                        |                       | > the given       |                     |
|                        |                       | > number. If      |                     |
|                        |                       | > *number* is     |                     |
|                        |                       | > negative it     |                     |
|                        |                       | > returns null.   |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > log( *number* )      | > *number* is a       | > Returns the     | > *log( 10 ) =      |
|                        | > number              | > natural         | > 2.30258509299*    |
|                        |                       | > logarithm (base |                     |
|                        |                       | > *e*) of the     |                     |
|                        |                       | > *number*        |                     |
|                        |                       | > parameter.      |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > exp( *number* )      | > *number* is a       | > Returns the     | > *exp( 5 ) =       |
|                        | > number              | > Euler's number  | > 148.413159102577* |
|                        |                       | > *e* raised to   |                     |
|                        |                       | > the power of    |                     |
|                        |                       | > *number*.       |                     |
+------------------------+-----------------------+-------------------+---------------------+
| > odd( *number* )      | > *number* is a       | > Returns true if | > *odd( 5 ) =       |
|                        | > number              | > *number* is     | > true\*            |
|                        |                       | > odd, false if   | > odd( 2 ) =        |
|                        |                       | > it is even.     | > *false*           |
+------------------------+-----------------------+-------------------+---------------------+
| > even( *number* )     | > *number* is a       | > Returns true if | > *even( 5 ) =      |
|                        | > number              | > *number* is     | > false\*           |
|                        |                       | > even, false if  | > even ( 2 ) =      |
|                        |                       | > it is odd.      | > *true*            |
+------------------------+-----------------------+-------------------+---------------------+

1.  Scale is in the range \[−6111..6176\]

2.  If scale is decimal numbers, the implicit conversion *from*
    *decimal* *to* *integer* is applied.

#### Date and time functions

[Table 78](#_Ref114047973) defines date and time functions.

[]{#_Ref114047973 .anchor}**Table 78: Semantics of date and time
functions**

+------------------------+----------------+-------------------+---------------------------+
| > **Name(parameters)** | > **Parameter  | > **Description** | **Example**               |
|                        | > Domain**     |                   |                           |
+========================+================+===================+===========================+
| > is(*value1*,         | > Both are     | Returns **true**  | *is(date(\"2012-12-25\"), |
| > *value2*)            | > elements of  | if both values    | time(\"23:00:50"))* is    |
|                        | > the **D**    | are the same      | **false**                 |
|                        |                | element in the    |                           |
|                        |                |                   | *is(date(\"2012-12-25\"), |
|                        |                | FEEL semantic     | date(\"2012-12-25\"))* is |
|                        |                | domain **D**      | **true**                  |
|                        |                |                   |                           |
|                        |                | (see 10.3.2.2)    | *is(time(\"23:00:50z\"),  |
|                        |                |                   | time(\"23:00:50"))* is    |
|                        |                |                   | **false**                 |
|                        |                |                   |                           |
|                        |                |                   | *is(time(\"23:00:50z\"),  |
|                        |                |                   | time(\"23:00:50+00:00"))* |
|                        |                |                   | is **true**               |
+------------------------+----------------+-------------------+---------------------------+

#### Range Functions

The following set of functions establish relationships between single
scalar values and ranges of such values. All functions in this list take
two arguments and return True if the relationship between the argument
holds, or False otherwise.

The specification of these functions is heavily inspired by the
equivalent functions in the HL7 CQL (Clinical Quality Language) standard
version 1.4.

*The following table intuitively depicts the relationships defined by
the functions in this chapter, but the full semantics of the functions
are listed in* [Table 79](#_Ref114048062).

![Table Description automatically
generated](media/image110.jpg){width="6.5919991251093615in"
height="4.44in"}

+-----------------------------+----------------------+-----------------------+
| > **Name(parameters)**      | **Evaluates to true  | > **Example**         |
|                             | if and only if (for  |                       |
|                             | each signature,      |                       |
|                             | respectively)**      |                       |
+=============================+======================+=======================+
| > \(a\) before(*point1*,    | > \(a\)              | > before( 1, 10 ) =   |
| > *point2*)                 | >                    | > true before( 10, 1  |
|                             | > point1 \< point2   | > ) = false           |
+-----------------------------+----------------------+-----------------------+
| > \(b\) before(*point*,     | > \(b\) point \<     | > before( 1,          |
| > *range*)                  | > range.start or     | > \[1..10\] ) = false |
|                             | >                    | > before( 1, (1.10\]  |
|                             | > (point =           | > ) = true before( 1, |
|                             | > range.start and    | > \[5..10\] ) = true  |
|                             | >                    |                       |
|                             | > not(range.start    |                       |
|                             | > included) )        |                       |
+-----------------------------+----------------------+-----------------------+
| > \(c\) before(*range*,     | > \(c\)              | > before( \[1..10\],  |
| > *point*)                  | >                    | > 10 ) = false        |
|                             | > range.end \< point | > before( \[1..10),   |
|                             | > or                 | > 10 ) = true before( |
|                             | >                    | > \[1..10\], 15 ) =   |
|                             | > (range.end = point | > true                |
|                             | >                    |                       |
|                             | > and                |                       |
|                             | >                    |                       |
|                             | > not(range.end      |                       |
|                             | > included) )        |                       |
+-----------------------------+----------------------+-----------------------+
| > \(d\)                     | \(d\)                | > before( \[1..10\],  |
| > before(*range1*,*range2*) |                      | > \[15..20\] ) = true |
|                             | range 1 .end \<      | > before( \[1..10\],  |
|                             | range2.start or      | > \[10..20\] ) =      |
|                             |                      | > false before(       |
|                             | (( not(range1 .end   | > \[1..10),           |
|                             | included) or         | > \[10..20\] ) = true |
|                             |                      | > before( \[1..10\],  |
|                             | not(range2.start     | > (10..20\] ) = true  |
|                             | included)) and       |                       |
|                             |                      |                       |
|                             | range 1 .end =       |                       |
|                             | range2.start)        |                       |
+-----------------------------+----------------------+-----------------------+
| > \(a\) after(*point1*,     | > \(a\)              | > after( 10, 5 ) =    |
| > *point2*)                 | >                    | > true after( 5, 10 ) |
|                             | > point1 \> point2   | > = false             |
+-----------------------------+----------------------+-----------------------+
| > \(b\) after(*point*,      | > \(b\) point \>     | > after( 12,          |
| > *range*)                  | > range.end or       | > \[1..10\] ) = true  |
|                             | >                    | > after( 10, \[1..10) |
|                             | > (point = range.end | > ) = true after( 10, |
|                             | > and                | > \[1..10\] ) = false |
|                             | >                    |                       |
|                             | > not(range.end      |                       |
|                             | > included) )        |                       |
+-----------------------------+----------------------+-----------------------+
| > \(c\) after(range, point) | > \(c\) range.start  | > after( \[11..20\],  |
|                             | > \> point or        | > 12 ) = false after( |
|                             | >                    | > \[11..20\], 10 ) =  |
|                             | > (range.start =     | > true after(         |
|                             | > point and          | > (11..20\], 11 ) =   |
|                             | >                    | > true after(         |
|                             | > not(range.start    | > \[11..20\], 11 ) =  |
|                             | > included) )        | > false               |
+-----------------------------+----------------------+-----------------------+
| > \(d\) after(*range1*,     | > \(d\) range 1      | > after( \[11..20\],  |
| > *range2*)                 | > .start \>          | > \[1..10\] ) = true  |
|                             | > range2.end or      | > after( \[1..1 0\],  |
|                             | >                    | > \[11..20\] ) =      |
|                             | > (( not(range1      | > false after(        |
|                             | > .start included)   | > \[11..20\], \[1..   |
|                             | > or not(range2.end  | > 11) ) = true after( |
|                             | > included) ) and    | > (11..20\],          |
|                             | >                    | > \[1..11\] ) = true  |
|                             | > range 1 .start =   |                       |
|                             | > range2.end)        |                       |
+-----------------------------+----------------------+-----------------------+
| > \(a\) meets(*range1*,     | > \(a\)              | meets( \[1..5\],      |
| > *range2*)                 | >                    | \[5..10\] ) = true    |
|                             | > range1.end         | meets( \[1..5),       |
|                             | > included and       | \[5..10\] ) = false   |
|                             | > range2.start       | meets( \[1..5\],      |
|                             | > included and       | (5..10\] ) = false    |
|                             | >                    | meets( \[1..5\],      |
|                             | > range 1 .end =     | \[6..10\] ) = false   |
|                             | > range2.start       |                       |
+-----------------------------+----------------------+-----------------------+
| > \(a\) met by(*range1*,    | > \(a\) range1.start | met by( \[5..10\],    |
| > *range2*)                 | > included and       | \[1..5\] ) = true met |
|                             | > range2.end         | by( \[5..10\],        |
|                             | > included and       | \[1..5) ) = false met |
|                             | >                    | by( (5..10\],         |
|                             | > range 1 .start =   | \[1..5\] ) = false    |
|                             | > range2.end         | met by( \[6..10\],    |
|                             |                      | \[1..5\] ) = false    |
+-----------------------------+----------------------+-----------------------+
| > \(a\) overlaps(*range1*,  | > \(a\)              | overlaps( \[1..5\],   |
| > *range2*)                 | >                    | \[3..8\] ) = true     |
|                             | > (range1.end \>     | overlaps( \[3..8\],   |
|                             | > range2.start or    | \[1..5\] ) = true     |
|                             | >                    | overlaps( \[1..8\],   |
|                             | > (range1.end =      | \[3..5\] ) = true     |
|                             | > range2.start and   | overlaps( \[3..5\],   |
|                             | > range1.end         | \[1..8\] ) = true     |
|                             | > included and       | overlaps( \[1..5\],   |
|                             | > range2.start       | \[6..8\] ) = false    |
|                             | > included)) and     | overlaps( \[6..8\],   |
|                             | >                    | \[1..5\] ) = false    |
|                             | > (range1.start \<   | overlaps( \[1..5\],   |
|                             | > range2.end or      | \[5..8\] ) = true     |
|                             | >                    | overlaps( \[1..5\],   |
|                             | > (range1.start =    | (5..8\] ) = false     |
|                             | > range2.end and     | overlaps( \[1..5),    |
|                             | > range1.start       | \[5..8\] ) = false    |
|                             | > included and       | overlaps( \[1..5),    |
|                             | > range2.end         | (5. .8\] ) = false    |
|                             | > included))         | overlaps( \[5..8\],   |
|                             |                      | \[1..5\] ) = true     |
|                             |                      | overlaps( (5..8\],    |
|                             |                      | \[1..5\] ) = false    |
|                             |                      | overlaps( \[5..8\],   |
|                             |                      | \[1..5) ) = false     |
|                             |                      | overlaps( (5..8\],    |
|                             |                      | \[1..5) ) = false     |
+-----------------------------+----------------------+-----------------------+

: []{#_Ref114048062 .anchor}Table 79: Semantics of range functions

+-----------------------+----------------------+-----------------------+
| > \(a\) overlaps      | > \(a\)              | > overlaps before(    |
| > before(*range1*,    |                      | > \[1..5\], \[3..8\]  |
| > *range2*)           | (range1.start \<     | > ) = true overlaps   |
|                       | range2.start or      | > before( \[1..5\],   |
|                       |                      | > \[6..8\] ) = false  |
|                       | (range1.start =      | > overlaps before(    |
|                       | range2.start         | > \[1..5\], \[5..8\]  |
|                       |                      | > ) = true overlaps   |
|                       | and                  | > before( \[1..5\],   |
|                       |                      | > (5..8\] ) = false   |
|                       | range1.start         | > overlaps before(    |
|                       | included             | > \[1..5), \[5..8\] ) |
|                       |                      | > = false overlaps    |
|                       | and                  | > before( \[1..5),    |
|                       |                      | > (1. .5\] ) = true   |
|                       | not(range2.start     | > overlaps before(    |
|                       | included))) and      | > \[1..5\], (1..5\] ) |
|                       |                      | > = true overlaps     |
|                       | (range1.end \>       | > before( \[1..5),    |
|                       | range2.start or      | > \[1..5\] ) = false  |
|                       |                      | > overlaps before(    |
|                       | (range1.end =        | > \[1..5\], \[1..5\]  |
|                       | range2.start and     | > ) = false           |
|                       |                      |                       |
|                       | range1.end included  |                       |
|                       | and                  |                       |
|                       |                      |                       |
|                       | range2.start         |                       |
|                       | included)) and       |                       |
|                       |                      |                       |
|                       | (range1.end \<       |                       |
|                       | range2.end or        |                       |
|                       |                      |                       |
|                       | (range1.end =        |                       |
|                       | range2.end and       |                       |
|                       |                      |                       |
|                       | (not(range1.end      |                       |
|                       | included) or         |                       |
|                       |                      |                       |
|                       | range2.end included  |                       |
|                       | )))                  |                       |
+=======================+======================+=======================+
| > \(a\) overlaps      | > \(a\)              | > overlaps after(     |
| > after(*range1*,     | >                    | > \[3..8\], \[1..5\]) |
| > *range2*)           | > (range2.start \<   | > = true overlaps     |
|                       | > range1.start or    | > after( \[6..8\],    |
|                       | >                    | > \[1..5\]) = false   |
|                       | > (range2.start =    | > overlaps after(     |
|                       | > range1.start       | > \[5..8\], \[1..5\]) |
|                       | >                    | > = true overlaps     |
|                       | > and                | > after( (5..8\],     |
|                       | >                    | > \[1..5\]) = false   |
|                       | > range2.start       | > overlaps after(     |
|                       | > included           | > \[5..8\], \[1..5))  |
|                       | >                    | > = false overlaps    |
|                       | > and                | > after( (1..5\],     |
|                       | >                    | > \[1..5) ) = true    |
|                       | > not( range 1.start | > overlaps after(     |
|                       | > included))) and    | > (1..5\], \[1..5\] ) |
|                       | >                    | > = true overlaps     |
|                       | > (range2.end \>     | > after( \[1..5\],    |
|                       | > range 1.start or   | > \[1..5) ) = false   |
|                       | >                    | > overlaps after(     |
|                       | > (range2.end =      | > \[1..5\], \[1..5\]  |
|                       | > range 1.start      | > ) = false           |
|                       | >                    |                       |
|                       | > and                |                       |
|                       | >                    |                       |
|                       | > range2.end         |                       |
|                       | > included and       |                       |
|                       | >                    |                       |
|                       | > range 1.start      |                       |
|                       | > included )) and    |                       |
|                       | >                    |                       |
|                       | > (range2.end \<     |                       |
|                       | > range1.end or      |                       |
|                       | >                    |                       |
|                       | > (range2.end =      |                       |
|                       | > range1.end and     |                       |
|                       | >                    |                       |
|                       | > (not(range2.end    |                       |
|                       | > included) or       |                       |
|                       | >                    |                       |
|                       | > range1.end         |                       |
|                       | > included)))        |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\)               | > \(a\) range.end    | > finishes( 10,       |
| > finishes(*point,    | > included and       | > \[1..10\] ) = true  |
| > range*)             | > range.end = point  | > finishes( 10,       |
|                       |                      | > \[1..10) ) = false  |
+-----------------------+----------------------+-----------------------+
| > \(b\)               | > \(b\)              | finishes( \[5..10\],  |
| > finishes(*range1*,  | >                    | \[1..10\] ) = true    |
| > *range2*)           | > range1.end         | finishes( \[5..10),   |
|                       | > included =         | \[1..10\] ) = false   |
|                       | > range2.end         | finishes( \[5..10),   |
|                       | > included and       | \[1..10) ) = true     |
|                       | >                    | finishes( \[1..10\],  |
|                       | > range1.end =       | \[1..10\] ) = true    |
|                       | > range2.end and     | finishes( (1..10\],   |
|                       | >                    | \[1..10\] ) = true    |
|                       | > (range1.start \>   |                       |
|                       | > range2.start or    |                       |
|                       | >                    |                       |
|                       | > (range1.start =    |                       |
|                       | > range2.start and   |                       |
|                       | >                    |                       |
|                       | > (not(range1.start  |                       |
|                       | > included) or       |                       |
|                       | >                    |                       |
|                       | > range2.start       |                       |
|                       | > included)))        |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\) finished      | > \(a\) range.end    | finished by(          |
| > by(*range, point*)  | > included and       | \[1..10\], 10 ) =     |
|                       | > range.end = point  | true finished by(     |
|                       |                      | \[1..10), 10 ) =      |
|                       |                      | false                 |
+-----------------------+----------------------+-----------------------+
| > \(b\) finished      | > \(b\) range1.end   | finished by(          |
| > by(*range1*,        | > included =         | \[1..10\], \[5..10\]  |
| > *range2*)           | > range2.end         | ) = true finished by( |
|                       | > included and       | \[1..10\], \[5..10) ) |
|                       | > range1.end =       | = false finished by(  |
|                       | > range2.end and     | \[1..10), \[5..10) )  |
|                       | >                    | = true finished by(   |
|                       | > (range1.start \<   | \[1..10\], \[1..10\]  |
|                       | > range2.start or    | ) = true finished by( |
|                       | >                    | \[1..10\], (1..10\] ) |
|                       | > (range1.start =    | = true                |
|                       | > range2.start and   |                       |
|                       | >                    |                       |
|                       | > (range1.start      |                       |
|                       | > included or        |                       |
|                       | > not(range2.start   |                       |
|                       | > included))))       |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\)               | > \(a\)              | includes( \[1..10\],  |
| > includes(*range*,   | >                    | 5 ) = true includes(  |
| > *point*)            | > (range.start \<    | \[1..10\], 12 ) =     |
|                       | > point and          | false includes(       |
|                       | > range.end \>       | \[1..10\], 1 ) = true |
|                       | > point) or          | includes( \[1..10\],  |
|                       | >                    | 10 ) = true includes( |
|                       | > (range.start =     | (1..10\], 1 ) = false |
|                       | > point and          | includes( \[1..10),   |
|                       | > range.start        | 10 ) = false          |
|                       | > included) or       |                       |
|                       | >                    |                       |
|                       | > (range.end = point |                       |
|                       | > and range.end      |                       |
|                       | > included)          |                       |
+-----------------------+----------------------+-----------------------+
| > \(b\)               | > \(b\)              | > includes(           |
| > includes(*range1*,  | >                    | > \[1..10\], \[4..6\] |
| > *range2*)           | > (range1.start \<   | > ) = true includes(  |
|                       | > range2.start or    | > \[1..10\], \[1..5\] |
|                       | >                    | > ) = true includes(  |
|                       | > (range1.start =    | > (1..10\], (1..5\] ) |
|                       | > range2.start and   | > = true includes(    |
|                       | >                    | > \[1..10\], (1..10)  |
|                       | > (range1.start      | > ) = true includes(  |
|                       | > included or        | > \[1..10), \[5..10)  |
|                       | > not(range2.start   | > ) = true includes(  |
|                       | > included)))) and   | > \[1..10\], \[1..10) |
|                       | >                    | > ) = true includes(  |
|                       | > (range1.end \>     | > \[1..10\], (1..10\] |
|                       | > range2.end or      | > ) = true includes(  |
|                       | >                    | > \[1..10\],          |
|                       | > (range1.end =      | > \[1..10\] ) = true  |
|                       | > range2.end and     |                       |
|                       | >                    |                       |
|                       | > (range1.end        |                       |
|                       | > included or        |                       |
|                       | > not(range2.end     |                       |
|                       | > included))))       |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\)               | > \(a\)              | > during( 5,          |
| > during(*point*,     | >                    | > \[1..10\] ) = true  |
| > *range*)            | > (range.start \<    | > during( 12,         |
|                       | > point and          | > \[1..10\] ) = false |
|                       | > range.end \>       | > during( 1,          |
|                       | > point) or          | > \[1..10\] ) = true  |
|                       | >                    | > during( 10,         |
|                       | > (range.start =     | > \[1..10\] ) = true  |
|                       | > point and          | > during( 1, (1..10\] |
|                       | > range.start        | > ) = false during(   |
|                       | > included) or       | > 10, \[1..10) ) =    |
|                       | >                    | > false               |
|                       | > (range.end = point |                       |
|                       | > and range.end      |                       |
|                       | > included)          |                       |
+-----------------------+----------------------+-----------------------+
| > \(b\)               | > \(b\)              | during( \[4..6\],     |
| > during(*range1*,    | >                    | \[1..10\] ) = true    |
| > *range2*)           | > (range2.start \<   | during( \[1..5\],     |
|                       | > range1.start or    | \[1..10\] ) = true    |
|                       | >                    | during( (1..5\],      |
|                       | > (range2.start =    | (1..10\] ) = true     |
|                       | > range1.start and   | during( (1..10),      |
|                       | >                    | \[1..10\] ) = true    |
|                       | > (range2.start      | during( \[5..10),     |
|                       | > included or        | \[1..10) ) = true     |
|                       | > not(range1.start   | during( \[1..10),     |
|                       | > included)))) and   | \[1..10\] ) = true    |
|                       | >                    | during( (1..10\],     |
|                       | > (range2.end \>     | \[1..10\] ) = true    |
|                       | > range1.end or      | during( \[1..10\],    |
|                       | >                    | \[1..10\] ) = true    |
|                       | > (range2.end =      |                       |
|                       | > range1.end and     |                       |
|                       | >                    |                       |
|                       | > (range2.end        |                       |
|                       | > included or        |                       |
|                       | > not(range1.end     |                       |
|                       | > included))))       |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\)               | > \(a\) range.start  | starts( 1, \[1..10\]  |
| > starts(*point*,     | > = point and        | ) = true starts( 1,   |
| > *range*)            | > range.start        | (1..10\] ) = false    |
|                       | > included           | starts( 2, \[1..10\]  |
|                       |                      | ) = false             |
+-----------------------+----------------------+-----------------------+
| > \(b\)               | > \(b\) range1.start | starts( \[1..5\],     |
| > starts(*range1*,    | > = range2.start and | \[1..10\] ) = true    |
| > *range2*)           | > range1.start       | starts( (1..5\],      |
|                       | > included =         | (1..10\] ) = true     |
|                       | > range2.start       | starts( (1..5\],      |
|                       | > included and       | \[1..10\] ) = false   |
|                       | >                    | starts( \[1..5\],     |
|                       | > (range1.end \<     | (1..10\] ) = false    |
|                       | > range2.end or      | starts( \[1..10\],    |
|                       | >                    | \[1..10\] ) = true    |
|                       | > (range1.end =      | starts( \[1..10),     |
|                       | > range2.end and     | \[1..10\] ) = true    |
|                       | >                    | starts( (1..10),      |
|                       | > (not(range1.end    | (1..10) ) = true      |
|                       | > included) or       |                       |
|                       | > range2.end         |                       |
|                       | > included)))        |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\) started       | > \(a\) range.start  | started by(           |
| > by(*range*,         | > = point and        | \[1..10\], 1 ) = true |
| > *point*)            | > range.start        | started by( (1..10\], |
|                       | > included           | 1 ) = false started   |
|                       |                      | by( \[1..10\], 2 ) =  |
|                       |                      | false                 |
+-----------------------+----------------------+-----------------------+
| > \(b\) started       | > \(b\) range1.start | started by(           |
| > by(*range1*,        | > = range2.start and | \[1..10\], \[1..5\] ) |
| > *range2*)           | > range1.start       | = true started by(    |
|                       | > included =         | (1..10\], (1..5\] ) = |
|                       | > range2.start       | true started by(      |
|                       | > included and       | \[1..10\], (1..5\] )  |
|                       | >                    | = false started by(   |
|                       | > (range2.end \<     | (1..10\], \[1..5\] )  |
|                       | > range1.end or      | = false started by(   |
|                       | >                    | \[1..10\], \[1..10\]  |
|                       | > (range2.end =      | ) = true started by(  |
|                       | > range1.end and     | \[1..10\], \[1..10) ) |
|                       | >                    | = true started by(    |
|                       | > (not(range2.end    | (1..10), (1..10) ) =  |
|                       | > included) or       | true                  |
|                       | > range1.end         |                       |
|                       | > included)))        |                       |
+-----------------------+----------------------+-----------------------+
| > \(a\)               | > \(a\) point1 =     | coincides( 5, 5 ) =   |
| > coincides(*point1*, | > point2             | true coincides( 3, 4  |
| > *point2*)           |                      | ) = false             |
+-----------------------+----------------------+-----------------------+
| > \(b\)               | > \(b\) range1.start | coincides( \[1..5\],  |
| > coincides(*range1*, | > = range2.start and | \[1..5\] ) = true     |
| > *range2*)           | > range1.start       | coincides( (1..5),    |
|                       | > included =         | \[1..5\] ) = false    |
|                       | > range2.start       | coincides( \[1..5\],  |
|                       | > included and       | \[2..6\] ) = false    |
|                       | > range1.end =       |                       |
|                       | > range2.end and     |                       |
|                       | > range1.end         |                       |
|                       | > included =         |                       |
|                       | > range2.end         |                       |
|                       | > included           |                       |
+-----------------------+----------------------+-----------------------+

#### Temporal built-in functions

The following set of functions provide common support utilities when
dealing with date or date and time values; listed in [Table
80](#_Ref127264553).

+------------------------+----------------+-----------------+-----------------+
| > **Name(parameters)** | > **Parameter  | **Description** | > **Example**   |
|                        | > Domain**     |                 |                 |
+========================+================+=================+=================+
| > day of year( date )  | > date or date | returns the     | > day of year(  |
|                        | > and time     | Gregorian       | > date(2019, 9, |
|                        |                | number of the   | >               |
|                        |                | day within the  | > 17\) ) = 260  |
|                        |                | year            |                 |
+------------------------+----------------+-----------------+-----------------+
| > day of week( date )  | > date or date | returns the day | > day of week(  |
|                        | > and time     | of the week     | > date(2019, 9, |
|                        |                | according to    | > 17)           |
|                        |                | the Gregorian   | >               |
|                        |                | calendar        | > ) =           |
|                        |                | enumeration:    | > \"Tuesday\"   |
|                        |                | "Monday",       |                 |
|                        |                |                 |                 |
|                        |                | "Tuesday",      |                 |
|                        |                | "Wednesday",    |                 |
|                        |                |                 |                 |
|                        |                | "Thursday",     |                 |
|                        |                | "Friday",       |                 |
|                        |                |                 |                 |
|                        |                | "Saturday",     |                 |
|                        |                | "Sunday"        |                 |
+------------------------+----------------+-----------------+-----------------+
| > month of year( date  | > date or date | returns the     | > month of      |
| > )                    | > and time     | month of the    | > year(         |
|                        |                | year according  | > date(2019, 9, |
|                        |                | to the          | >               |
|                        |                | Gregorian       | > 17\) ) =      |
|                        |                | calendar        | > \"September\" |
|                        |                | enumeration:    |                 |
|                        |                | "January",      |                 |
|                        |                | "February",     |                 |
|                        |                |                 |                 |
|                        |                | "March",        |                 |
|                        |                | "April", "May", |                 |
|                        |                |                 |                 |
|                        |                | "June", "July", |                 |
|                        |                | "August",       |                 |
|                        |                |                 |                 |
|                        |                | "September",    |                 |
|                        |                | "October",      |                 |
|                        |                |                 |                 |
|                        |                | "November",     |                 |
|                        |                | "December"      |                 |
+------------------------+----------------+-----------------+-----------------+
| > week of year( date ) | > date or date | returns the     | > week of year( |
|                        | > and time     | Gregorian       | > date(2019, 9, |
|                        |                | number of the   | >               |
|                        |                | week within the | > 17\) ) = 38   |
|                        |                | year,           | > week of year( |
|                        |                | accordingly to  | > date(2003,    |
|                        |                |                 | > 12,           |
|                        |                | ISO 8601        | >               |
|                        |                |                 | > 29\) ) = 1    |
|                        |                |                 | > week of year( |
|                        |                |                 | > date(2004, 1, |
|                        |                |                 | >               |
|                        |                |                 | > 4\) ) = 1     |
|                        |                |                 | > week of year( |
|                        |                |                 | > date(2005, 1, |
|                        |                |                 | >               |
|                        |                |                 | > 1\) ) = 53    |
|                        |                |                 | > week of year( |
|                        |                |                 | > date(2005, 1, |
|                        |                |                 | >               |
|                        |                |                 | > 3\) ) = 1     |
|                        |                |                 | > week of year( |
|                        |                |                 | > date(2005, 1, |
|                        |                |                 | >               |
|                        |                |                 | > 9\) ) = 1     |
+------------------------+----------------+-----------------+-----------------+

: []{#_Ref127264553 .anchor}Table 80: Temporal built-in functions

#### Sort

Sort a list using an ordering function. The initial order of equal items
is not guaranteed to be preserved i.e., no stability guarantee. For
example,

> sort(list: \[3,1,4,5,2\], precedes: function(x,y) x \< y) =
> \[1,2,3,4,5\]

+------------------------------+---------------------------------------+
| > **Parameter name** (\*     | > **Domain**                          |
| > means optional)            |                                       |
+==============================+=======================================+
| > list                       | > list of any element, be careful     |
|                              | > with nulls                          |
+------------------------------+---------------------------------------+
| > precedes                   | boolean function of 2 arguments       |
|                              | defined on every pair of list         |
|                              | elements. This function should return |
|                              | **true** if the first argument        |
|                              | precedes the second and **false** if  |
|                              | they are equal or the second precedes |
|                              | the first argument.                   |
+------------------------------+---------------------------------------+

: Table 81: Semantics of sort functions

#### Context function

+------------------------+-----------------+-------------------+--------------------------+
| > **Name(parameters)** | > **Parameter   | > **Description** | > **Example**            |
|                        | > domain**      |                   |                          |
+========================+=================+===================+==========================+
| > get value(m, key)    | > context,      | > select the      | > *get value ({key1 :    |
|                        | > string        | > value of the    | > \"value1\"}, \"key1    |
|                        |                 | > entry named key | > \") = \"value1\" get   |
|                        |                 | > from context m  | > value ({key1 : \"value |
|                        |                 |                   | > 1\"},                  |
|                        |                 |                   | > \"unexistent-key\") =  |
|                        |                 |                   | > null*                  |
+------------------------+-----------------+-------------------+--------------------------+
| > get entries(m)       | > context       | > produces a list | > *get entries({key1 :   |
|                        |                 | > of key,value    | > \"value 1 \", key2 :   |
|                        |                 | > pairs from a    | > \"value2\"}) = \[ {    |
|                        |                 | > context m       | > key : \"key1 \", value |
|                        |                 |                   | > : \"value 1\" }, {key  |
|                        |                 |                   | > : \"key2\", value :*   |
|                        |                 |                   | >                        |
|                        |                 |                   | > *\"value2\"} \]*       |
+------------------------+-----------------+-------------------+--------------------------+
| > context(entries)     | > *entries* is  | > Returns a new   | > *context(\[{key:\"a\", |
|                        | > a list of     | > context that    | > value:1}, {key:\"b\",  |
|                        | > contexts;     | > includes all    | > value:2}\]) = {a:1,    |
|                        | > each context  | > specified       | > b:2}*                  |
|                        | > item SHALL    | > entries.        | >                        |
|                        | > have two      | >                 | > *context(\[{key:\"a\", |
|                        | > entries       | > If a context    | > value:1},*             |
|                        | > having keys:  | > item contains   | >                        |
|                        | >               | > additional      | > *{key:\"b\", value:2,  |
|                        | > \"key\" and   | > entries beyond  | > something:*            |
|                        | > \"value\",    | > the required    | >                        |
|                        | > respectively. | > \"key\" and     | > *\"else\"}\]) = {a:1,  |
|                        |                 | > \"value\"       | > b:2}*                  |
|                        |                 | > entries, the    | >                        |
|                        |                 | > additional      | > *context(\[{key:\"a\", |
|                        |                 | > entries are     | > value:1},*             |
|                        |                 | > ignored.        | >                        |
|                        |                 | >                 | > *{key:\"b\"}\]) =      |
|                        |                 | > If a context    | > null*                  |
|                        |                 | > item is missing |                          |
|                        |                 | > the required    |                          |
|                        |                 | > \"key\" and     |                          |
|                        |                 | > \"value\"       |                          |
|                        |                 | > entries, the    |                          |
|                        |                 | > final result is |                          |
|                        |                 | > null.           |                          |
|                        |                 | >                 |                          |
|                        |                 | > See also: *get  |                          |
|                        |                 | > entries()*      |                          |
|                        |                 | > builtin         |                          |
|                        |                 | > function.       |                          |
+------------------------+-----------------+-------------------+--------------------------+
| > \(a\) context        | > \(a\)         | > \(a\) Returns a | > *context put({x:1},    |
| > put(context, key,    | > *context* is  | > new context     | > \"y\", 2) = {x:1, y:2} |
| > value)               | > a context,    | > that includes   | > context put({x:1,      |
|                        | > *key* is a    | > the new entry   | > y:0}, \"y\", 2) =*     |
|                        | > string,       | > or overriding   | >                        |
|                        | > *value* is    | > the existing    | > *{x:1, y:2} context    |
|                        | > Any type      | > value if an     | > put({x:1, y:0, z:0},   |
|                        |                 | > entry for the   | > \"y\",*                |
|                        |                 | > same key        | >                        |
|                        |                 | > already exists  | > *2) = {x:1, y:2, z:0}* |
|                        |                 | > in the supplied | >                        |
|                        |                 | > context         | > *context put({x:1},    |
|                        |                 | > parameter.      | > \[\"y\"\], 2) =        |
|                        |                 | >                 | > context put({x:1},     |
|                        |                 | > A new entry is  | > \"y\", 2) = {x:1,      |
|                        |                 | > added as the    | > y:2}*                  |
|                        |                 | > last entry of   |                          |
|                        |                 | > the new         |                          |
|                        |                 | > context. If     |                          |
|                        |                 | > overriding an   |                          |
|                        |                 | > existing entry, |                          |
|                        |                 | > the order of    |                          |
|                        |                 | > the keys        |                          |
|                        |                 | > maintains the   |                          |
|                        |                 | > same order as   |                          |
|                        |                 | > in the original |                          |
|                        |                 | > context.        |                          |
+------------------------+-----------------+-------------------+--------------------------+
| > \(b\) context        | > \(b\)         | \(b\) Returns the | *context put({x:1, y:    |
| > put(context, keys,   | > *context* is  | composite of      | {a: 0} }, \[\"y\",       |
| > value)               | > a context,    | nested            | \"a\"\], 2)*             |
|                        | > *keys* is a   | invocations to    |                          |
|                        | > list of       | *context put()*   | *= context put({x:1, y:  |
|                        | > string,       | for each item in  | {a: 0} },*               |
|                        | > *value* is    | *keys* hierarchy  |                          |
|                        | > Any type      | in *context*.     | *\"y\", context put({a:  |
|                        |                 |                   | 0}, \[\"a\"\], 2))*      |
|                        |                 | If keys is a list |                          |
|                        |                 | of 1 element,     | *= {x:1, y: {a: 2} }*    |
|                        |                 | this is           |                          |
|                        |                 | equivalent to     | *context put({x:1, y:    |
|                        |                 | *context          | {a: 0} }, \[\], 2) =     |
|                        |                 | put(context,      | null*                    |
|                        |                 | key\', value)*,   |                          |
|                        |                 | where *key\'* is  |                          |
|                        |                 | the only element  |                          |
|                        |                 | in the list       |                          |
|                        |                 | *keys*.           |                          |
|                        |                 |                   |                          |
|                        |                 | If keys is a list |                          |
|                        |                 | of 2 or more      |                          |
|                        |                 | elements, this is |                          |
|                        |                 | equivalent of     |                          |
|                        |                 | calling *context  |                          |
|                        |                 | put(context,      |                          |
|                        |                 | key\', value\')*, |                          |
|                        |                 | with:             |                          |
|                        |                 |                   |                          |
|                        |                 | *key\'* is the    |                          |
|                        |                 | head element in   |                          |
|                        |                 | the list *keys*,  |                          |
|                        |                 | *value\'* is the  |                          |
|                        |                 | result of         |                          |
|                        |                 | invocation of     |                          |
|                        |                 | *context          |                          |
|                        |                 | put(context\',    |                          |
|                        |                 | keys\', value)*,  |                          |
|                        |                 | where:            |                          |
|                        |                 |                   |                          |
|                        |                 | *context\'* is    |                          |
|                        |                 | the result of     |                          |
|                        |                 | context.key\',    |                          |
|                        |                 | *keys\'* is the   |                          |
|                        |                 | remainder of the  |                          |
|                        |                 | list *keys*       |                          |
|                        |                 | without the head  |                          |
|                        |                 | element *key\'*.  |                          |
|                        |                 |                   |                          |
|                        |                 | If keys is an     |                          |
|                        |                 | empty list or     |                          |
|                        |                 | null, the result  |                          |
|                        |                 | is null.          |                          |
+------------------------+-----------------+-------------------+--------------------------+
| > context              | > *contexts* is | Returns a new     | *context merge(\[{x:1},  |
| > merge(contexts)      | > a list of     | context that      | {y:2}\]) =*              |
|                        | > contexts      | includes all      |                          |
|                        |                 | entries from the  | *{x:1, y:2}*             |
|                        |                 | given contexts;   |                          |
|                        |                 | if some of the    | *context merge(\[{x:1,   |
|                        |                 | keys are equal,   | y:0},*                   |
|                        |                 | the entries are   |                          |
|                        |                 | overriden.        | *{y:2}\]) = {x:1, y:2}*  |
|                        |                 |                   |                          |
|                        |                 | The entries are   |                          |
|                        |                 | overridden in the |                          |
|                        |                 | same order as     |                          |
|                        |                 | specified by the  |                          |
|                        |                 | supplied          |                          |
|                        |                 | parameter, with   |                          |
|                        |                 | new entries added |                          |
|                        |                 | as the last entry |                          |
|                        |                 | in the new        |                          |
|                        |                 | context.          |                          |
+------------------------+-----------------+-------------------+--------------------------+

:  Table 82: Context functions

#### Miscellaneous functions

The following set of functions provide support utilities for several
miscellaneous use-cases. For example, when a decision depends on the
current date, like deciding the support SLA over the weekends,
additional charges for weekend delivery, etc.

It is important to note that the functions in this section are intended
to be side-effect-free, but they are not deterministic and not
idempotent from the perspective of an external observer.

Vendors are encouraged to guide end-users in ensuring deterministic
behavior of the DMN model during testing, for example, through specific
configuration.

Users are encouraged to isolate decision logic that uses these functions
in specific DRG elements, such as Decisions. This encapsulation enables
them to be overridden with synthetic values that remain constant across
executions of the DMN model\'s test cases.

  -----------------------------------------------------------------------
  **Name(parameters)**    **Parameter domain**    **Description**
  ----------------------- ----------------------- -----------------------
  now()                   (none)                  returns current date
                                                  and time

  today()                 (none)                  returns current date
  -----------------------------------------------------------------------

  : Table 83: Miscellaneous functions

### FEEL Libraries

A library has a name, is defined in a namespace, and contains a list of
function declarations. The syntax of a library is defined below:

library =

\"namespace\" , qualified name , \";\"

name , \"{\" , functions , \"}\"

;

functions =

function , { \";\" , function }

function =

\"function\" , name, \"(\" , \[ formal parameter { \",\" , formal
parameter } \] , \")\" , \":\" , type

;

where

- name is described in section 10.3.1.2, rule 25

- qualified name is described in section 10.3.1.2, rule 18

- formal parameter is described in section 10.3.1.2, rule 56

- type is described in section 10.3.1.2, rule 52

- name, qualified name and formal parameter contain only symbols that
  are classified as letters and digits in the Unicode standard

- the libraries are uniquely identified by the namespace and library
  name pair

The definitions of the FEEL libraries are platform-independent, they do
not contain any information about the execution platform (e.g. Java).
The discovery mechanism of the definitions of the libraries and the
artifacts needed to execute the functions (e.g. Java jars or Python
modules) is vendor-specific. The mapping of the FEEL types to the native
platforms (e.g. Java) is defined in Table 47: Mapping between FEEL and
other domains.

The functions defined in a library become visible in the scope of the
evaluation (see 10.3.2.11) once they are imported in a DMN file (see
6.3.3) with the import type equal to the FEEL namespace (e.g.
https://www.omg.org/spec/DMN/20240513/FEEL/ ).

The functions defined in a library are invoked in the same way as the
imported BKMs or Decision Services (e.g. prefix.f(a, b, c)).

For example, for the following library

namespace org.omg.feel.stringUtil;

stringLib {

// Checks if str is empty (\"\") or null.

function isEmpty(str: string) : boolean ;

\...

// The capitalized str, null if str is null

function capitalize(str: string) : string

}

once the library is imported with

\<import namespace=\"org.omg.feel.stringUtil\"

name=\"myLib\"

importType=\"https://www.omg.org/spec/DMN/20240513/FEEL/\"

/\>

the function isEmpty can be invoked by myLib.isEmpty(\"abc\").

## Execution Semantics of Decision Services

FEEL gives execution semantics to decision services defined in decision
models where FEEL is the expression language. A decision service is
semantically equivalent to a FEEL function whose parameters are the
decision service inputs, and whose logic is a context assembled from the
decision service\'s decisions and knowledge requirements.

Decision service implementations SHALL return a result as described
above, and MAY return additional information such as intermediate
results, log records, debugging information, error messages, rule
annotations, etc. The format of any additional information is left
unspecified.

Every FEEL expression in a decision model has execution semantics.
LiteralExpression (FEEL text) semantics is defined in
[10.3](#_Ref123126472). Boxed expressions described in
[10.2.2](#_Ref123126486) can be mapped to FEEL text and thus also have
execution semantics.

Recall that a DecisionService is defined by four lists: inputData,
inputDecisions, outputDecisions, and encapsulatedDecisions. The lists
are not independent and thus not all required to be specified, e.g.,
each required decision (direct and indirect) of the outputDecisions must
be an encapsulatedDecision, an inputDecision, or required by an
inputDecision. For simplicity in the following, we assume that all four
lists are correctly and completely specified.

A DecisionService is given execution semantics by mapping it to a FEEL
function *F*. Let S be a

DecisionService with input data *id1*, *id2*, \..., input decisions
*di1*, *di2*, \..., encapsulated decisions *de1*, *de2*, \..., and
output decisions *do1*, *do2*, \.... Each input data *idi* has a
qualified name *nid~i~*. Each decision *di* has a qualified name
*nd~i\ ~*and a decision logic expression *ed*. The decisions may have
knowledge requirements. In particular the decisions may require
BusinessKnowledgeModels *bkm1*, *bkm2*, \... and DecisionServices *s1*,
*s2*, \.... BusinessKnowledgeModels have qualified names *nbkm~i\ ~*and
encapsulatedLogic *f~bkmi~*. DecisionServices have qualified names *nsi*
and equivalent logic *fs~i~*, where the equivalent logic is defined
recursively, binding *si* to S.

The syntax for FEEL function *F* is *funcion(nid~1~, nid~2~, \...,
ndi~1~, ndi~2~, \... ) C.result*, where *C* is the context *{*

> *ns~1~ : fs~1~, ns~2~ : fs~2~, \...,*
>
> *nbkm1 : fbkm1, nbkm2 : fbkm2, \...,*
>
> *nde~1~ : ede~1~, nde~2~ : ede~2~, \...,*
>
> *result: { ndo~1~ : edo~1~, ndo~2~ : edo~2~, . ..}*

such that *si*, *bkmi*, *dei* and *doi* are partially ordered by
requirements (e.g., the context entry for a required decision comes
before a decision that requires it).

The qualified name of an element named E (decision, input data, decision
service, or BKM) that is defined in the same decision model as S is
simply E. Otherwise, the qualified name is I.E, where I is the name of
the import element that refers to the model where E is defined.

The execution semantics of S is FEEL(*F*): a function that when invoked
with values from the FEEL semantic domain bound to the parameters
representing input data and input decisions, returns:

- In the case of a single output decision(s), the single decision\'s
  output value.

- In the case of multiple output decisions, a context consisting of all
  the output decisions\' output values.

XML elements SHALL map to the FEEL semantic domain as specified in
section [10.3.3](#xml-data). Otherwise, details of the syntax of
input/output data values and mapping to/from FEEL are undefined.

## Metamodel

![Figure 10-27: Expression class
diagram](media/image112.svg){width="6.772222222222222in"
height="5.10625in"}

The class Expression is extended to support the four new kinds of boxed
expressions introduced by FEEL, namely: Context, FunctionDefinition,
Relation and List.

Boxed expressions are Expressions that have a standard diagrammatic
representation (see clauses [7.2.1](#_Ref123126551) and
[10.2.1](#_Ref123126534)). FEEL *contexts*, *function definitions*,
*relations* and *lists* SHOULD be modeled as Context,
FunctionDefinition, Relation and List elements, respectively, and
represented as a boxed expression whenever possible; that is, when they
are top-level expressions, since an instance of LiteralExpression cannot
contain another Expression element.

### Context metamodel

A Context is composed of any number of contextEntrys, which are
instances of ContextEntry.

A Context element is represented diagrammatically as a **boxed context**
(clause [10.2.1.4](#_Ref123126572)). A FEEL *context* (grammar rule 57
and clause [10.3.2.6](#_Ref123126589)) SHOULD be modeled as a Context
element whenever possible.

Context inherits all the attributes and model associations from
Expression. [Table 84](#_Ref123126629) presents the additional
attributes and model associations of the Context element.

+-----------------------------+----------------------------------------+
| > **Attribute**             | > **Description**                      |
+=============================+========================================+
| > **contextEntry**:         | This attributes lists the instances of |
| > ContextEntry \[\*\]       | ContextEntry that compose this         |
|                             | Context.                               |
+-----------------------------+----------------------------------------+

: []{#_Ref123126629 .anchor}Table 84: Context attributes and model
association

### ContextEntry metamodel

The class ContextEntry is used to model FEEL *context entries* when a
*context* is modeled as a Context element. ContextEntry is a
specialization of DMNElement, from which it inherits the optional id,
description, and label attributes.

An instance of ContextEntry is composed of an optional variable, which
is an InformationItem element whose name is the *key* in the *context
entry*, and of a value, which is the instance of Expression that models
the *expression* in the *context entry*.

[Table 85](#_Ref114049615) presents the attributes and model
associations of the ContextEntry element.

+-----------------------------+----------------------------------------+
| > **Attribute**             | > **Description**                      |
+=============================+========================================+
| > **variable**:             | The instance of InformationItem that   |
| > InformationItem \[0..1\]  | is contained in this ContextEntry, and |
|                             | whose name is the *key* in the modeled |
|                             | *context* *entry*                      |
+-----------------------------+----------------------------------------+
| > **value**: Expression     | The instance of Expression that is the |
|                             | *expression* in this                   |
|                             |                                        |
|                             | ContextEntry                           |
+-----------------------------+----------------------------------------+

: []{#_Ref114049615 .anchor}Table 85: ContexEntry attributes and model
associations

###  FunctionDefinition metamodel

A FunctionDefinition has formalParameters and a body. A
FunctionDefinition element is

represented diagrammatically as a **boxed function**, as described in
clause. A FEEL *function definition* (grammar rule 55 and clause
[10.3.2.15](#semantic-mappings)) SHOULD be modeled as a
FunctionDefinition element whenever possible.

FunctionDefinition inherits all the attributes and model associations
from Expression. [Table 86](#_Ref114052571) presents the additional
attributes and model associations of the Function Definition element.

[]{#_Ref114052571 .anchor}**Table 86: FunctionDefinition attributes and
model associations**

+-----------------------------+----------------------------------------+
| > **Attribute**             | > **Description**                      |
+=============================+========================================+
| > **FormalParameter**:      | This attributes lists the instances of |
| > InformationItem \[\*\]    | InformationItem that are the           |
|                             | parameters of this Context.            |
+-----------------------------+----------------------------------------+
| > **body**: Expression      | The instance of Expression that is the |
| > \[0..1\]                  | body in this                           |
|                             |                                        |
|                             | FunctionDefinition                     |
+-----------------------------+----------------------------------------+
| **kind**: FunctionKind =    | The kind attribute defines the type of |
| FEEL                        | the FunctionDefinition.                |
|                             |                                        |
| { FEEL \| Java \| ONNX \|   | The default value is FEEL. Supported   |
| PMML }                      | values also include Java, ONNX and     |
|                             |                                        |
|                             | PMML                                   |
+-----------------------------+----------------------------------------+

### List metamodel

A List is simply a list of element, which are instances of Expressions.
A List element is represented diagrammatically as a **boxed list**, as
described in clause [10.2.1.5](#_Ref123126758). A FEEL *list* (grammar
rule 54 and clause [10.3.2.15](#semantic-mappings)) SHOULD be modeled as
a List element whenever possible.

List inherits all the attributes and model associations from Expression.
[Table 87](#_Ref114052685) presents the additional attributes and model
associations of the List element.

+-----------------------------+----------------------------------------+
| > **Attribute**             | > **Description**                      |
+=============================+========================================+
| > **element**: Expression   | This attributes lists the instances of |
| > \[\*\]                    | Expression that are the elements in    |
|                             | this List.                             |
+-----------------------------+----------------------------------------+

: []{#_Ref114052685 .anchor}Table 87: List attributes and model
associations

### Relation metamodel

A Relation is convenient shorthand for a list of similar contexts. A
Relation has a column instead of repeated ContextEntrys, and a List is
used for every row, with one of the List's expression for each column
value.

Relation inherits all the attributes and model associations from
Expression. [Table 88](#_Ref114052751) presents the additional
attributes and model associations of the Relation element.

[]{#_Ref114052751 .anchor}**Table 88: Relation attributes and model
associations**

+-----------------------------+----------------------------------------+
| > **Attribute**             | > **Description**                      |
+=============================+========================================+
| > **row**: List \[\*\]      | This attributes lists the instances of |
|                             | List that compose the rows of this     |
|                             | Relation.                              |
+-----------------------------+----------------------------------------+
| > **column**:               | This attributes lists the instances of |
| > InformationItem \[\*\]    | InformationItem that define the        |
|                             | columns in this Relation.              |
+-----------------------------+----------------------------------------+

### Conditional metamodel

A Conditional is a visual way to express an if statement.

Conditional inherits all the attributes and model associations from
Expression. [Table 89](#_Ref114052835) presents the additional
attributes and model associations of the Conditional element.

[]{#_Ref114052835 .anchor}**Table 89: Conditional attributes and model
associations**

+----------------------+-----------------------------------------------+
| > **Attribute**      | > **Description**                             |
+======================+===============================================+
| **if**:              | > This attribute holds the expression that is |
| ChildExpression      | > evaluate by the conditional expression.     |
+----------------------+-----------------------------------------------+
| **then**:            | > This attribute holds the expression that    |
| ChildExpression      | > will be evaluated when the condition in the |
|                      | > if statement evaluates to **true**.         |
+----------------------+-----------------------------------------------+
| **else**:            | > This attribute holds the expression that    |
| ChildExpression      | > will be evaluated when the condition in the |
|                      | > if statement evaluates to **false**.        |
+----------------------+-----------------------------------------------+

### ChildExpression metamodel

A ChildExpression is used to hold an expression inside a node. [Table
90](#_Ref114052911) presents the attributes of a

ChildExpression.

+-----------------------------------+----------------------------------+
| > **Attribute**                   | > **Description**                |
+===================================+==================================+
| > **id**: ID\[0..1\]              | Optional identifier for this     |
|                                   | element. SHALL be unique within  |
|                                   | its containing Definitions       |
|                                   | element.                         |
+-----------------------------------+----------------------------------+
| > **value**: Expression           | The instance of Expression that  |
|                                   | is the expression in this        |
|                                   |                                  |
|                                   | ChildExpression                  |
+-----------------------------------+----------------------------------+

: []{#_Ref114052911 .anchor}Table 90: ChildExpression attributes and
model associations

### Filter metamodel

A Filter is a visual way to express list filtering.

Filter inherits all the attributes and model associations from
Expression. [Table 90](#_Ref114052911) presents the additional
attributes and model associations of the Filter element.

+-----------------------------------+----------------------------------+
| > **Attribute**                   | > **Description**                |
+===================================+==================================+
| > **in**: ChildExpression         | This attribute holds the         |
|                                   | expression that is evaluate as   |
|                                   | the collection to be filtered.   |
+-----------------------------------+----------------------------------+
| > **match**: ChildExpression      | This attribute holds the         |
|                                   | expression that is used to       |
|                                   | filter the collection.           |
+-----------------------------------+----------------------------------+

: Table 91: Filter attributes and model associations

### Iterator metamodel

An Iterator is the abstract class for all boxed iteration.

Iterator inherits all the attributes and model associations from
Expression. [Table 92](#_Ref114056791) presents the additional
attributes and model associations of the Iterator element.

[]{#_Ref114056791 .anchor}**Table 92: Iterator attributes and model
associations**

+-----------------------------------+----------------------------------+
| > **Attribute**                   | > **Description**                |
+===================================+==================================+
| > **iteratorVariable**: String    | This attribute holds name of the |
|                                   | iterator variable that will be   |
|                                   | populated at each iteration.     |
+-----------------------------------+----------------------------------+
| > **in**: TypedChildExpression    | This attribute holds the         |
|                                   | expression that is evaluated as  |
|                                   | the collection to be processed.  |
+-----------------------------------+----------------------------------+

### For metamodel

A For is a representation of a loop.

For inherits all the attributes and model associations from Iterator.
[Table 93](#_Ref114060838) presents the additional attributes and model
associations of the For element.

[]{#_Ref114060838 .anchor}**Table 93: For attributes and model
associations**

+-----------------------------------+----------------------------------+
| > **Attribute**                   | > **Description**                |
+===================================+==================================+
| > **return**: ChildExpression     | This attribute holds the         |
|                                   | expression that is evaluated to  |
|                                   | create the new collection that   |
|                                   | will be returned.                |
+-----------------------------------+----------------------------------+

### Quantified metamodel

A Quantified is an abstraction of an expression that is evaluated on
each item of a collection.

Quantified inherits all the attributes and model associations from
Iterator. [Table 93](#_Ref114060838) presents the additional attributes
and model associations of Quantified.

**Table 94: Quantified attributes and model associations**

+-----------------------------------+----------------------------------+
| > **Attribute**                   | > **Description**                |
+===================================+==================================+
| > **satisfies**: ChildExpression  | This attribute holds the         |
|                                   | expression that is evaluated to  |
|                                   | determine if the current item    |
|                                   | satisfies a condition.           |
+-----------------------------------+----------------------------------+

### Every metamodel

Every is an expression where all "satisfies" needs to be true for it to
return true.

Every inherits all the attributes and model associations of Quantified.

### Some metamodel

Some is an expression where at least one of the "satisfies" needs to be
true for it to return true.

~Some~ inherits all the attributes and model associations of
~Quantified~.

## Examples

A good way to get a quick overview of FEEL is by example.

FEEL expressions may reference other FEEL expressions by name. Named
expressions are contained in a context. Expressions are evaluated in a
scope, which is a list of contexts in which to resolve names. The result
of the evaluation is an element in the FEEL semantic domain.

### Context

[Figure 10-28](#_Ref123132870) shows the boxed context used for the
examples. Such a context could arise in several ways. It could be part
of the decision logic for a single, complex decision. Or it could be a
context that is equivalent to part of a DRG as defined in clause
[10.4](#execution-semantics-of-decision-services), where *applicant,
requested product,* and *credit history* are input data instances,
*monthly income* and *monthly outgoings* are the results of other
decisions linked through information requirements, and *PMT* is a
business knowledge model.

+-----------------+------------------+------------------------------------------------------------+
| > applicant     | age              | 51                                                         |
|                 +------------------+------------------------------------------------------------+
|                 | maritalStatus    | \"M\"                                                      |
|                 +------------------+------------------------------------------------------------+
|                 | existingCustomer | false                                                      |
|                 +------------------+------------------------------------+-----------------------+
|                 | monthly          | > income                           | 10000                 |
|                 |                  +------------------------------------+-----------------------+
|                 |                  | > repayments                       | 2500                  |
|                 |                  +------------------------------------+-----------------------+
|                 |                  | > expenses                         | 3000                  |
+=================+==================+============+===========+===========+===========+==========:+
| > requested     | product type                              | \"STANDARD LOAN\"                 |
| > product       |                                           |                                   |
|                 +-------------------------------------------+-----------------------------------+
|                 | rate                                      | 0.25                              |
|                 +-------------------------------------------+-----------------------------------+
|                 | term                                      | 36                                |
|                 +-------------------------------------------+-----------------------------------+
|                 | amount                                    | 100000.00                         |
+-----------------+-------------------------------------------+-----------------------------------+
| > monthly       | applicant.monthly.income                                                      |
| > income        |                                                                               |
+-----------------+-------------------------------------------------------------------------------+
| > monthly       | applicant.monthly.repayments, applicant.monthly.expenses                      |
| > outgoings     |                                                                               |
+-----------------+-------------------------------+-----------------------------------+-----------+
| > credit        | record date                   | event                             | weight    |
| > history       |                               |                                   |           |
|                 +-------------------------------+-----------------------------------+-----------+
|                 | date(\"2008-03-12\")          | \"home mortgage\"                 | 100       |
|                 +-------------------------------+-----------------------------------+-----------+
|                 | date(\"2011-04-01\")          | > \"foreclosure warning\"         | 150       |
+-----------------+-------------------------------+-----------------------------------+-----------+
| > PMT           | (rate, term, amount)                                                          |
|                 +-------------------------------------------------------------------------------+
|                 | (amount \*rate/12) / (1 - (1 + rate/12)\*\*-term)                             |
+-----------------+-------------------------------------------------------------------------------+

: []{#_Ref123132870 .anchor}Figure 10-28: Example context

Notice that there are 6 top-level context entries, represented by the
six rows of the table. The value of the context entry named
\'applicant\' is itself a context, and the value of the context entry
named \'monthly\' is itself a context. The value of the context entry
named \'monthly outgoings\' is a list, the value of the context entry
named \'credit history\' is a relation, *i.e.,* a list of two contexts,
one context per row. The value of the context entry named \'PMT\' is a
function with parameters \'rate\', \'term\', and \'amount\'.

The following examples use the above context. Each example has a pair of
equivalent FEEL expressions separated by a horizontal line. Both
expressions denote the same element in the semantic domain. The second
expression, the 'answer', is a literal value.

### Calculation

monthly income \* 12 120000

The context defines *monthly income* as *applicant.monthly.income*,
which is also defined in the context as 10,000. Twelve times the
*monthly income* is 120,000.

### If, In

if applicant.maritalStatus in ("M", "S") then "valid" else "not valid"
"valid"

The *in* test determines if the left-hand side expression satisfies the
list of values or ranges on the right-hand side. If satisfied, the *if*
expression returns the value of the *then* expression. Otherwise, the
value of the *else* expression is returned.

### Sum entries of a list

sum (monthly outgoings) 5500

*Monthly outgoings* is computed in the context as the list
\[*applicant.monthly.repayments, applicant.monthly.expenses*\], or
\[2500, 3000\]. The square brackets are not required to be written in
the boxed context.

### Invocation of user-defined PMT function

The PMT function defined in the context computes the monthly payments
for a given interest rate, number of months, and loan amount.

PMT (requested product . rate,\
requested product . term,\
[requested product .
amount)]{.underline}\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\
3975.982590125552338278440100112431

A function is invoked textually using a parenthesized argument list
after the function name. The arguments are defined in the context, and
are 0.25, 36, and 100,000, respectively.

### Sum weights of a recent credit history

sum (credit history\[record date \> date ("2011-01-01")\].weight\
150

This is a complex \"one-liner\" that will be useful to expand into
constituent sub-expressions:

>  built-in: *sum*
>
> o path expression ending in *.weight*
>
> ▪ filter: *\[record date \> date(\"2011-01-01 \")\]*
>
>  name resolved in context: *credit history*

An expression in square brackets following a list expression filters the
list. *Credit history* is defined in the context as a relation, that is,
a list of similar contexts. Only the last item in the relation satisfies
the filter. The first item is too old. The path expression ending in
*.weight* selects the value of the *weight* entry from the context or
list of contexts satisfied by the filter. The *weight* of the last item
in the credit history is 150. This is the only item that satisfies the
filter, so the sum is 150 as well.

### Determine if credit history contain a bankruptcy event

Some ch in credit history satisfies ch.event = "bankruptcy" false

The *some* expression determines if at least one element in a list or
relation satisfies a test. There are no bankruptcy events in the credit
history in the context.

This page intentionally left blank.



# B-FEEL


## Introduction

**DMN** defines the friendly enough expression language (FEEL) for the
purpose of giving standard executable semantics to many kinds of
expressions in a decision model (see chapter [10](#_Ref122607316)).

This chapter defines a dialect of FEEL: B-FEEL (Business Friendly Enough
Expression Language). B-FEEL shares the same grammar as FEEL but alters
the semantics to be friendlier and more intuitive toward non-IT users.

In FEEL, the **null** value is used to both represent missing data or an
execution error. In B-FEEL, **null** is used only to represent missing
data. All operations and built-in functions that returns null in FEEL
when an error occurs have their semantics modified in B-FEEL to return a
non-**null** value. A warning message should still be produced when an
error occurs.

To use B-FEEL instead of FEEL, the expression language must be set to:
\"https://www.omg.org/spec/DMN/B-FEEL/\"\
If FEEL is used in other languages, e.g. as an expression language in a
BPMN process model, a version number MUST be added to the URL, i.e.
\"https://www.omg.org/spec/DMN/B-FEEL/1.7\".

The following sections present the semantics of B-FEEL and compare it to
the semantics of FEEL. Anything not covered in this chapter has the
behavior described for FEEL in Chapter [10](#_Ref122607316).

## Operator and built-in functions returning a Boolean

Removing **null** as an error from the result of operators and built-in
functions for boolean values makes B-FEEL a two-value logic (**true**
and **false**) compared to the three-value logic of FEEL (**true**,
**false** and **null**).

In B-FEEL boolean operators ( =, \<=, \<, \>, \>=, not(), and, or, in,
between ) always return a true or false result (never **null**) even
when incompatible types are used in their expression.

In B-FEEL an incompatible type in a boolean expression is considered
false with the exception of the not equal (!=) where it is considered
true.

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  \"a\" = 1              null                   false

  \"a\" \< 1             null                   false

  \"a\" \<= null         null                   false

  \"a\" \> 1             null                   false

  null \>= 1             null                   false

  not(\"a\")             null                   false

  true and "x"           null                   false

  false or "x"           null                   false

  \"a\" in \[1..100\]    null                   false

  null between 1 and 100 null                   false

  "a" != 1               null                   true
  --------------------------------------------------------------------

Several FEEL built-in functions return a boolean result. In B-FEEL,
those functions' semantics are modified to return **false** everywhere
FEEL would return **null** for them.

  ----------------------------------------------------------------------------
  **Expression**                 **FEEL**               **B-FEEL**
  ------------------------------ ---------------------- ----------------------
  matches(\"bad                  null                   false
  pattern\",\"\[0-9\")                                  

  before(date(\"2021-01-01\"),   null                   false
  null)                                                 

  all(true,\"x\",true)           null                   false

  any(null)                      null                   false
  ----------------------------------------------------------------------------

## Built-in functions returning a number

Several FEEL built-in functions return a numeric result. In B-FEEL,
those functions' semantics are modified to return 0 everywhere FEEL
would return **null** for them.

In addition, the list functions that return a number (mean(), median(),
product(), stddev(), sum()) except count() ignore non-numeric parameters
passed in their input list in B-FEEL.

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  decimal("a", 0)        null                   0

  round up("5.5", 0)     null                   0

  string length(22)      null                   0

  day of year("a")       null                   0

  count(\[1,null,3\])    3                      3

  sum(\[1, null, 3\])    null                   4

  sum(\[1, "1" ,3\])     null                   4

  sum(\[\])              null                   0

  mean(\["a"\])          null                   0

  mean(\[1, "a", 3\])    null                   2
  --------------------------------------------------------------------

The C+ decision table policy being defined as the sum of the outputs
yields a slightly different result in B-FEEL because the sum function
semantics are altered.

## Built-in functions returning a string

Several FEEL built-in functions return a string result. Those methods'
semantics in B-FEEL are modified to return an empty string ("")
everywhere FEEL would return **null** for them.

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  lowercase(12)          null                   ""

  string(null)           null                   ""

  day of week("a")       null                   ""

  substring("a", "z")    null                   ""
  --------------------------------------------------------------------

## Built-in functions returning a date and time, date and time

Several FEEL built-in functions return a date and time, date or time
result. In B-FEEL, those functions' semantics are modified to return
January 1st of year 1970 (1970-01-01T00:00:00+00:00) value (epoch)
everywhere FEEL would return **null** for them.

The default values are based on the return type:

  --------------------------------------------------------------------
  **Type**               **Default Value**
  ---------------------- ---------------------------------------------
  Date and time          date and time("1970-01-01T00:00:00+00:00")

  Date                   date("1970-01-01")

  Time                   time("00:00:00+00:00")
  --------------------------------------------------------------------

  ----------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ------------------------
  time("a")              null                   time("00:00:00+00:00")

  date(null)             null                   date("1970-01-01")
  ----------------------------------------------------------------------

## Built-in functions returning a duration

Several FEEL built-in functions return a duration result. In B-FEEL,
those functions' semantics are modified to return a duration of 0 months
(years and months durations) or 0 seconds (days and time duration)
everywhere FEEL would return **null** for them.

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  duration("a")          null                   duration("P0M")

  years and months       null                   duration("P0M")
  duration(null, null)                          

  days and time          null                   days and time
  duration("a")                                 duration("P0S")

  years and months       null                   years and months
  duration("a")                                 duration("P0M")
  --------------------------------------------------------------------

## Built-in functions returning a collection and expressions using a collection

Several FEEL built-in functions return collection results. In B-FEEL,
those functions' semantics are modified to return an empty collection
everywhere FEEL would return **null** for them.

The *mode* function additionally ignores non-numeric parameters passed
in their input list in B-FEEL.

Some specific FEEL grammar expression can reference collections that
could be **null**. In B-FEEL the execution semantic is altered as
follow:

- for expression (grammar rule 44), when the iteration context is
  evaluated to **null**, the expression returns an empty collection.

- for quantified expression (grammar rule 46), when one of the
  expression is evaluated to **null**, the expression returns **false**.

- for comparison using \"in\" (grammar rules 49c, 49d), when the
  positive unary test is evaluated to **null**, the expression returns
  **false**.

  ----------------------------------------------------------------------
  **Expression**           **FEEL**               **B-FEEL**
  ------------------------ ---------------------- ----------------------
  split("abc", 22)         null                   \[\]

  mode(\[null,null,null,   null                   \[1\]
  1, 1,2\])                                       

  for x in null return x   null                   \[\]

  some x in null satisfies null                   \[\]
  x\>0                                            

  1 in null                null                   false
  ----------------------------------------------------------------------

## Built-in functions returning a range

The FEEL built-in function range() returns a range result. In B-FEEL,
that function's semantics is modified to return an empty range that does
not match anything ( (0..0) ) where in FEEL it would return **null**.

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  range("x")             null                   range("(0..0)")

  --------------------------------------------------------------------

## Semantics of addition and subtraction

In B-FEEL, the semantics of addition and subtraction are modified when
the types of e1 and e2 in [Table 57](#_Ref113975324) do not match.

The following rules are added after the rules in [Table
58](#_Ref113975334) in order of precedence:

  --------------------------------------------------------------------
  If type(e~1~) or    e~1~ + e~2~ / e~1~ - e~2~
  type(e~2~) is ...   
  ------------------- ------------------------------------------------
  string              The non-string value is converted to a string
                      using the string B-FEEL function and [Table
                      58](#_Ref113975334) applies. Subtraction returns
                      an empty string.

  number              The non-number value is converted to a number
                      using the number B-FEEL function and [Table
                      58](#_Ref113975334) applies.

  date and time       The non-date and time value is converted to a
                      duration using the duration B-FEEL function and
                      [Table 58](#_Ref113975334) applies.

  date                The non-date value is converted to a duration
                      using the duration B-FEEL function and [Table
                      58](#_Ref113975334) applies.

  time                The non-time value is converted to a duration
                      using the duration B-FEEL function and [Table
                      58](#_Ref113975334) applies.

  years and months    The non-years and months duration value is
  duration            converted to a duration using the duration
                      B-FEEL function and [Table 58](#_Ref113975334)
                      applies.

  days and time       The non-days and time duration value is
  duration            converted to a duration using the duration
                      B-FEEL function and [Table 58](#_Ref113975334)
                      applies.
  --------------------------------------------------------------------

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  \"Today is \" +        null                   \"Today is
  today()                                       2020-01-01\"

  \"The result is: \" +  null                   \"The result is: 1\"
  1                                             

  5 + \" minutes\"       null                   \"5 minutes\"

  \"This is \" + null    null                   \"This is \"

  1 + null               null                   1

  null - 6               null                   -6

  date("2021-01-01") + 7 null                   7

  "abc" - 2              null                   ""
  --------------------------------------------------------------------

## Semantics of multiplication and division

In B-FEEL, the semantics of multiplication and division are modified
when the types of e1 and e2 in [Table 59](#_Ref114041416) do not match.

The following rules are added after the rules in [Table
60](#_Ref114041432) in order of precedence:

  --------------------------------------------------------------------
  If type(e~1~) or   e~1~ \* e~2~ and e~1~ / e~2~
  type(e~2~) is ...  
  ------------------ -------------------------------------------------
  number             The non-number type is converted to a number
                     using the number B-FEEL function and [Table
                     60](#_Ref114041432) applies.

  years and months   The non-years and months duration type is
  duration           converted to a number using the number B-FEEL
                     function and [Table 60](#_Ref114041432) applies.

  days and time      The non-days and time duration type is converted
  duration           to a number using the number B-FEEL function and
                     [Table 60](#_Ref114041432) applies.
  --------------------------------------------------------------------

  --------------------------------------------------------------------
  **Expression**         **FEEL**               **B-FEEL**
  ---------------------- ---------------------- ----------------------
  22 \* "a"              null                   0

  null / 22              null                   0

  duration("P1Y") \*     null                   duration("P0M")
  null                                          
  --------------------------------------------------------------------

## Semantics of exponentiation

The FEEL semantics of exponentiation described in [Table
61](#_Ref165455666) (grammar rule [23](#_Ref165455713)) are used and
B-FEEL further specifies that each operand is converted to a number
using the number B-FEEL function.

This page intentionally left blank.

