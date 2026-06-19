
## Conformance levels

Software may claim compliance or conformance with **DMN** if and only if
the software fully matches the applicable compliance points as stated in
the specification. Software developed only partially matching the
applicable compliance points may claim that the software was based on
this specification but may not claim compliance or conformance with this
specification.

The specification defines three levels of conformance, namely
**Conformance Level 1**, **Conformance Level 2**, and **Conformance
Level 3**.

An implementation claiming conformance to Conformance Level 1 is not
required to support Conformance Level 2 or Conformance Level 3. An
implementation claiming conformance to Conformance Level 2 is not
required to support Conformance Level 3.

An implementation claiming conformance to **Conformance Level 1** SHALL
comply with all of the specifications set forth in clauses 6 (Decision
Requirements), 7 (Decision Logic) and 8 (Decision Table) of this
document. An implementation claiming conformance to Conformance Level 1
is never required to interpret expressions (modeled as an Expression
elements) in decision models. However, to the extent that an
implementation claiming conformance to Conformance Level 1 provides an
interpretation to an expression, that interpretation SHALL be consistent
with the semantics of expressions as specified in clause 7.

An implementation claiming conformance to **Conformance Level 2** SHALL
comply with all of the specifications set forth in clauses
[6](#_Ref152655601) (Decision Requirements), [7](#_Ref194300068)
(Decision Logic) and [8](#_Ref122607333) (Decision Table) of this
document. In addition, it is required to interpret expressions in the
simple expression language (S-FEEL) specified in clause
[9](#_Ref194300096).

An implementation claiming conformance to **Conformance Level 3** SHALL
comply with all of the specifications set forth in clauses
[6](#_Ref152655601) (Decision Requirements), [7](#_Ref194300129)
(Decision Logic), [8](#_Ref122607333) (Decision Table) and
[10](#_Ref122607316) (Expression language) of this document. An
implementation does NOT need to support any Function Kind other than
FEEL to claim conformance to Level 3, i.e. support for Java, PMML, and
ONNX is optional. Notice that the simple expression language that is
specified in clause [9](#_Ref194300194) is a subset of FEEL, and that,
therefore, an implementation claiming conformance to Conformance Level 3
can also claim conformance to Conformance Level 2 (and to Conformance
Level 1).

In addition, an implementation claiming conformance to any of the three
**DMN** conformance levels SHALL comply with all of the requirements set
forth in Clause [2.2](#general-conformance-requirement).

## General conformance requirement

### Visual appearance

A key element of **DMN** is the choice of shapes and icons used for the
graphical elements identified in this specification. The intent is to
create a standard visual language that all decision modelers will
recognize and understand. An implementation that creates and displays
decision model diagrams SHALL use the graphical elements, shapes, and
markers illustrated in this specification.

There is flexibility in the size, color, line style, and text positions
of the defined graphical elements, except where otherwise specified.

The following extensions to a **DMN** Diagram are permitted:

- New markers or indicators MAY be added to the specified graphical
  elements. These markers or indicators could be used to highlight a
  specific attribute of a DMN element or to represent a new subtype of
  the corresponding concept.

- A new shape representing a new kind of artifact MAY be added to a
  Diagram, but the new shape SHALL NOT conflict with the shape specified
  for any other DMN element or marker.

- Graphical elements MAY be colored, and the coloring may have specified
  semantics that extend the information conveyed by the element as
  specified in this standard.

- The line style of a graphical element MAY be changed, but that change
  SHALL NOT conflict with any other line style required by this
  specification.

### Decision semantics

This specification defines many semantic concepts used in defining
decisions and associates them with graphical elements, markers, and
connections.

To the extent that an implementation provides an interpretation of some
**DMN** diagram element as a semantic specification of the associated
concept, the interpretation SHALL be consistent with the semantic
interpretation herein specified.

### Attributes and model associations

This specification defines a number of attributes and properties of the
semantic elements represented by the graphical elements, markers, and
connections. Some attributes are specified as mandatory but have no
representation or only optional representation. And some attributes are
specified as optional.

For every attribute or property that is specified as mandatory, a
conforming implementation SHALL provide some mechanism by which values
of that attribute or property can be created and displayed. This
mechanism SHALL permit the user to create or view these values for each
**DMN** element specified to have that attribute or property.

Where a graphical representation for that attribute or property is
specified as required, that graphical representation SHALL be used.
Where a graphical representation for that attribute or property is
specified as optional, the implementation MAY use either a graphical
representation or some other mechanism.

If a graphical representation is used, it SHALL be the representation
specified. Where no graphical representation for that attribute or
property is specified, the implementation MAY use either a graphical
representation or some other mechanism. If a graphical representation is
used, it SHALL NOT conflict with the specified graphical representation
of any other **DMN** element.

