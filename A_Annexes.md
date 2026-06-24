# DMN Examples


## Example 1: Originations

### Introduction

In this clause we present an example of the use of **DMN** to model and
execute decision-making in a simple business process modeled in
**BPMN**, including decisions to be automated in decision services
called from the business process management system.

### The business process model

[Figure 12‑1](#_Ref231381481) shows a simple process for loan
originations, modeled in **BPMN 2.0**. The process handles as
application for a loan, obtaining data from a credit bureau only if
required for the case, and automatically deciding whether the
application should be accepted, declined, or referred for human review.
If referred, documents are collected from the applicant and a credit
officer adjudicates the case. It consists of the following components:

- The **Collect application data** task collects data describing the
  Requested product and the Applicant (e.g., through an on-line
  application form).

- The Decide **bureau Strategy** task calls a decision service, passing
  Requested product and Applicant data. The service returns two
  decisions: Strategy and Bureau call type.

- A **gateway** uses the value of Strategy to route the case to Decline
  application, Collect bureau data or Decide routing.

- The **Collect bureau data** task collects data from a credit bureau
  according to the Bureau call type decision, then the case is passed to
  Decide routing.

- The **Decide routing** task calls a decision service, passing
  Requested product, Applicant data and Bureau data (if the Collect
  bureau data task was not performed, the Bureau data are set to null).
  The service returns a single decision: Routing.

- A **gateway** uses the value of Routing to route the case to Accept
  application, Review application or Decline application.

- The **Collect documents** task requests and uploads documents from the
  applicant in support of their application.

- The **Review application** task allows a credit officer to review the
  case and decide whether it should be accepted or declined.

- A **gateway** uses the credit officer's Adjudication to route the case
  to Accept application or Decline application.

- The **Accept application** task informs the applicant that their
  application is accepted and initiates the product.

- The **Decline application** task informs the applicant that their
  application is declined.

Note that in this example two decision points (automated as calls to
decision services) are represented in **BPMN 2.0** as business rule
tasks; the third decision point (which is human decision-making) is
represented as a user task.

![[]{#_Ref231381481 .anchor}Figure 12‑1: Example business
process](media/image113.jpg){alt="Diagram, schematic Description automatically generated"
width="6.366666666666666in" height="7.272917760279965in"}

### The decision requirements level

The examples in this chapter were developed using a software that adds
icons to the elements. Although adding these icons is allowable by this
document it is not normative.

#### Decision Requirements Diagrams

[Figure 12‑2](#_Ref231381637) shows a DRD of all the decision-making in
this business process. There are four sources of input data for the
decision-making (Requested product, Applicant data, Bureau data and
Supporting documents), and four decisions whose results are used in the
business process (Strategy, Bureau call type, Routing and Adjudication).
Between the two are intermediate decisions: evaluations of risk,
affordability, and eligibility.

Notable features of this DRD include:

- It covers both automated and human decision-making.

- Some decisions (e.g., Pre-bureau risk category) and input data (e.g.,
  Applicant data) are required by multiple decisions, i.e., the
  information requirements network is not a tree.

- Business knowledge models (see Affordability calculation) may be
  invoked by multiple decisions.

- Business knowledge models (see Credit contingency factor) may be
  invoked by other business knowledge models.

- Some decisions do not have associated business knowledge models.

Knowledge sources may provide authority for multiple decisions and/or
business knowledge models.

![](media/image115.svg){width="6.772181758530183in"
height="5.103472222222222in"}

[]{#_Ref231381637 .anchor}Figure 12‑2: DRD of all automated
decision-making

It might be considered more convenient to draw separate (but
overlapping) DRDs for the three decision points:

- [Figure 12‑3](#_Ref231381841) shows the DRD of the decisions required
  for the Decide bureau strategy decision point, i.e., the requirements
  subgraph of the Strategy and Bureau call type decisions. These are
  decisions to be automated through encapsulation in a decision service
  called at this point and therefore need their logic to be specified
  completely.

- [Figure 12‑4](#_Ref231381847) shows the DRD for the Decide routing
  decision point, i.e., the requirements subgraph of the Routing
  decision. These are also decisions automated with a decision service
  and therefore need their logic to be specified completely. Note that
  some elements appear in both [Figure 12‑3](#_Ref231381841) and [Figure
  12‑4](#_Ref231381847).

- [Figure 12‑5](#_Ref231381853) shows the DRD for the Review application
  decision point, i.e., the requirements subgraph of the Adjudication
  decision. This is a human decision and has no associated specification
  of decision logic, but the DRD indicates that the Credit officer takes
  into account the results of the automated Routing decision along with
  the case data, including the Supporting documents. (The requirements
  subgraph of the Routing decision has been hidden in this DRD as shown
  by the ellipsis (\...) marker.)

- [Figure 12‑6](#_Ref231381861) shows an additional DRD for the Credit
  Risk Analytics Knowledge Source i.e., the requirements linking this
  Knowledge Source to other elements. DRDs can be used to provide views
  other than for a specific decision.

All four DRDs -- [Figure 12‑2](#_Ref231381637), [Figure
12‑3](#_Ref231381841), [Figure 12‑4](#_Ref231381847), [Figure
12‑5](#_Ref231381853) and [Figure 12‑6](#_Ref231381861) -- are views of
the same DRG.

![](media/image117.svg){width="6.772222222222222in"
height="6.496062992125984in"}

[]{#_Ref231381841 .anchor}Figure 12‑3: DRD for Decide bureau strategy
decision point

![](media/image119.svg){width="6.772222222222222in"
height="4.651281714785652in"}

[]{#_Ref231381847 .anchor}Figure 12‑4: DRD for Decide routing decision
point

![](media/image121.svg){width="4.604166666666667in"
height="3.0930216535433073in"}

[]{#_Ref231381853 .anchor}Figure 12‑5: DRD for Review application
decision point

![](media/image123.svg){width="5.511811023622047in"
height="2.7645833333333334in"}

[]{#_Ref231381861 .anchor}Figure 12‑6: DRD for Credit Risk Analytics
Knowledge Source

#### DRG Elements

##### Decisions

The DRG depicted in these DRDs shows dependencies between the following
decisions:

- The **Strategy** decision, requiring the Bureau call type and
  Pre-bureau eligibility decisions, invokes the Strategy table shown in
  [Figure 12‑9](#_Ref231382848) (without that table being encapsulated
  in a business knowledge model).

- The **Bureau call type** decision, requiring the Pre-bureau risk
  category decision, invokes the Bureau call type table shown in [Figure
  12‑11](#_Ref231382874).

- The **Eligibility** decision, requiring Applicant data and the
  Pre-bureau risk category and Pre-bureau affordability decisions,
  invokes the Eligibility rules shown in [Figure 12‑13](#_Ref231382901).

- The **Pre-bureau affordability** decision, requiring Applicant data
  and the Pre-bureau risk category and Required monthly installment
  decisions, invokes the Affordability calculation boxed expression
  shown in [Figure 12‑24](#_Ref231383050), which in turn invokes the
  Credit contingency factor table shown in [Figure
  12‑25](#_Ref231383061).

- The **Pre-bureau risk category** decision, requiring Applicant data
  and the Application risk score decision, invokes the Pre-bureau risk
  category table shown in [Figure 12‑15](#_Ref231382932).

- The **Application risk score** decision, requiring Applicant data,
  invokes the Application risk score model shown in [Figure
  12‑17](#_Ref231382955).

- The **Routing** decision, requiring Bureau data and the Post-bureau
  affordability and Post-bureau risk category decisions, invokes the
  Routing rules shown in [Figure 12‑19](#_Ref231382978).

- The **Post-bureau affordability** decision, requiring Applicant data
  and the Post-bureau risk score and Required monthly installment
  decisions, invokes the Affordability calculation boxed expression
  shown in [Figure 12‑24](#_Ref231383050), which in turn invokes the
  Credit contingency factor table shown in [Figure
  12‑25](#_Ref231383061).

- The **Post-bureau risk category** decision, requiring Applicant and
  Bureau data and the Application risk score decision, invokes the
  Post-bureau risk category table shown in [Figure
  12‑21](#_Ref231383014).

- The **Required monthly installment** decision, requiring Requested
  product data, invokes the Installment calculation boxed expression
  shown in [Figure 12‑27](#_Ref231383087).

- The **Adjudication** decision, requiring Applicant data, Bureau data,
  Supporting documents, and the Routing decision, has no associated
  decision logic.

Questions and allowed answers are specified for these decisions. These
are typically used when modeling decisions for which no logic will be
specified and for other decisions before it is appropriate to describe
the decision logic in detail. The description and Question/Allowed
Answers for each decision follow.

#### Adjudication 

Question: Should this application that has been referred for
adjudication be accepted? Allowed Answers: Yes/No

Description: Determine if an application requiring adjudication should
be accepted or declined given the available application data and
supporting documents.

#### Application risk score 

Question: What is the risk score for this applicant?

Allowed Answers: A number greater than 70 and less than 150

Description: The **Application Risk Score** decision logic invokes the
Application risk score model business knowledge model, passing Applicant
data.Age as the Age parameter, Applicant data.MaritalStatus as the
Marital Status parameter and Applicant data.EmploymentStatus as the
Employment Status parameter.

#### Bureau call type 

Question: How much data should be requested from the credit bureau for
this application? Allowed Answers: A value from the explicit list
\"Full\", \"Mini\", \"None\"

Description: The **Bureau call type** decision logic invokes the Bureau
call type table, passing the output of the Prebureau risk category
decision as the Pre-Bureau Risk Category parameter.

#### Eligibility 

Question: Does this applicant appear eligible for the loan they applied
for given only their application data? Allowed Answers: Value from the
explicit list \"Eligible\", \"Not Eligible\"

Description: The **Eligibility** decision logic invokes the Eligibility
rules business knowledge model, passing

Applicant data.Age as the Age parameter, the output of the Pre-bureau
risk category decision as the Pre-Bureau Risk Category parameter, and
the output of the Pre-bureau affordability decision as the Pre-Bureau
Affordability parameter.

#### Pre-bureau affordability 

Question: Can the applicant afford the loan they applied for given only
their application data?

Allowed Answers: Yes/No

Description: The **Pre-bureau affordability** decision logic invokes the
Affordability calculation business knowledge model, passing Applicant
data.Monthly.Income as the Monthly Income parameter, Applicant
data.Monthly.Repayments as the Monthly Repayments parameter, Applicant
data.Monthly.Expenses as the Monthly Expenses parameter, the output of
the Pre-bureau risk category decision as the Risk Category parameter,
and the output of the Required monthly installment decision as the
Required Monthly Installment parameter.

#### Post-bureau affordability 

Question: Can the applicant afford the loan they applied for given all
available data?

Allowed Answers: Yes/No

Description: The **Post-bureau affordability** decision logic invokes
the Affordability calculation business knowledge model, passing
Applicant data.Monthly.Income as the Monthly Income parameter, Applicant

data.Monthly.Repayments as the Monthly Repayments parameter, Applicant
data.Monthly.Expenses as the Monthly Expenses parameter, the output of
the Post-bureau risk category decision as the Risk Category parameter,
and the output of the Required monthly installment decision as the
Required Monthly Installment parameter.

#### Pre-bureau risk category 

Question: Which risk category is most appropriate for this applicant
given only their application data?

Allowed Answers: Value from explicit list \"Decline\", \"High Risk\",
\"Medium Risk\", \"Low Risk\", \"Very Low Risk\"

Description: The Pre-Bureau Risk Category decision logic invokes the
Pre-bureau risk category table business knowledge model, passing
Applicant data.ExistingCustomer as the Existing Customer parameter and
the output of the Application risk score decision as the Application
Risk Score parameter.

#### Post-bureau risk category 

Question: Which risk category is most appropriate for this applicant
given all available data?

Allowed Answers: A value from the explicit list \"Decline\", \"High
Risk\", \"Medium Risk\", \"Low Risk\", \"Very Low Risk\"

Description: The **Post-bureau risk category** decision logic invokes
the Post-bureau risk category business knowledge model, passing
Applicant data.ExistingCustomer as the Existing Customer parameter,
Bureau data.CreditScore as the Credit Score parameter, and the output of
the Application risk score decision as the Application Risk Score
parameter. Note that if Bureau data is null (due to the THROUGH strategy
bypassing the Collect bureau data task) the Credit Score parameter will
be null.

#### Required monthly installment 

Question: What is the minimum monthly installment payment required for
this loan product? Allowed Answers: A dollar amount greater than zero

Description: The **Required monthly installment** decision logic invokes
the Installment calculation business knowledge model, passing Requested
product.ProductType as the Product Type parameter, Requested
product.Rate as the Rate parameter, Requested product.Term as the Term
parameter, and Requested product.Amount as the Amount parameter.

#### Routing 

Question: How this should this applicant be routed given all available
data?

Allowed Answers: A value from the explicit list \"Decline\", \"Refer for
Adjudication\", \"Accept without Review\"

Description: The **Routing** decision logic invokes the Routing rules
business knowledge model, passing Bureau data.

Bankrupt as the Bankrupt parameter, Bureau data. Credit Score as the
Credit Score parameter, the output of the Post- bureau risk category
decision as the Post-Bureau Risk Category parameter, and the output of
the Post-bureau affordability decision as the Post-Bureau Affordability
parameter. Note that if Bureau data is null (due to the

THROUGH strategy bypassing the Collect bureau data task) the Bankrupt
and Credit Score parameters will be null.

#### Strategy 

Question: What is the appropriate handling strategy for this
application?

Allowed Answers: A value from the explicit list
\"Decline\",\"Bureau","Through\"

Description: The **Strategy** decision logic defines a complete,
unique-hit decision table deriving Strategy from Eligibility and Bureau
call type.

##### Knowledge Sources

The DRG contains the following Knowledge Sources:

#### Affordability spreadsheet 

Description: Internal spreadsheet showing the relationship of income,
payments, expenses, risk, and affordability.

Type: Policy

#### Credit officer experience 

Description: The collected wisdom of the credit officers as collected in
their best practice wiki. Type: Expertise

#### Credit risk analytics 

Description: Credit risk scorecard analysis to determine the relevant
factors for application risk scoring

Type: Analytic Insight

#### Product specification 

Description: Definitions of the products, their cost structure and
eligibility criteria.

Type: Policy

#### Risk management strategy 

Description: Overall risk management approach for the financial
institution including its approach to application risk, credit
contingencies and credit risk scoring.

Type: Policy

##### Input Data

The DRG contains the following Input Data:

#### Applicant data 

Description: Information about the applicant including personal
information, marital status, and household income/expenses.

**Bureau data**

Description: External credit score and bankruptcy information provided
by a bureau.

**Loan default data**

Description: Information about historical loan defaults.

**Requested product**

Description: Details of the loan the applicant has applied for.

#### Supporting documents 

Description: Documents associated with a loan that are not processed
electronically but are available for manual adjudication.

##### Business Knowledge Models

Finally, the DRG contains the following Business Knowledge Models:

#### Eligibility rules 

Description: The Eligibility rules decision logic defines a complete,
priority-ordered single hit decision table deriving Eligibility from
Pre-Bureau Risk Category, Pre-Bureau Affordability and Age.

#### Routing rules 

Description: The Routing Rules decision logic defines a complete,
priority-ordered single hit decision table deriving Routing from
Post-Bureau Risk Category, Post-Bureau Affordability, Bankrupt and
Credit Score.

#### Bureau call type table 

Description: The Bureau call type table decision logic defines a
complete, unique-hit decision table deriving Bureau Call Type from
Pre-Bureau Risk Category.

#### Credit contingency factor table 

Description: The Credit contingency factor table decision logic defines
a complete, unique-hit decision table deriving Credit contingency factor
from Risk Category.

#### Affordability calculation 

Description: The Affordability calculation decision logic defines a
boxed function deriving Affordability from Monthly Income, Monthly
Repayments, Monthly Expenses and Required Monthly Installment. One step
in this calculation derives Credit contingency factor by invoking the
Credit contingency factor table business.

**Pre-bureau risk category table\**

Description: The Pre-bureau risk category table decision logic defines a
complete, unique-hit decision table deriving Pre- bureau risk category
from Existing Customer and Application Risk Score.

#### Post-bureau risk category table 

Description: The Post-bureau risk category table decision logic defines
a complete, unique-hit decision table deriving Post-Bureau Risk Category
from Existing Customer, Application Risk Score and Credit Score.

#### Application risk score model 

Description: The Application risk score model decision logic defines a
complete, no-order multiple-hit table with aggregation, deriving
Application risk score from Age, Marital Status and Employment Status,
as the sum of the Partial scores of all matching rows (this is therefore
a predictive scorecard represented as a decision table).

#### Installment calculation 

Description: The Installment calculation decision logic defines a boxed
function deriving monthly installment from Product Type, Rate, Term and
Amount.

#### Financial.PMT 

Description: Standard calculation of monthly installment from Rate, Term
and Amount.

#### Business Context

In addition to the information represented in the DRD, the business
context of the decision-making can be specified. The Performance
Indicators used to track the effectiveness of decision-making,
Objectives the organization seeks to meet through its decision-making
approach, and the Organizational Units that make decisions or own the
decision making approach may all be specified. Decisions are
cross-referenced to the performance indicators and objectives they
impact and to the organizational units that either make the decision or
own the definition of how the decision should be made.

**Performance indicators**

+---------------------+------------------------------------------------+
| > Monthly bureau    | The total cost charged by the bureau for all   |
| > costs             | Bureau Data requested while originating Loans  |
|                     | in a calendar month.                           |
+=====================+================================================+
| > Monthly loan      | > The percentage of loans accepted in a        |
| > accept rate       | > calendar month.                              |
+---------------------+------------------------------------------------+
| > Monthly           | The percentage of loans that did not require a |
| > auto-adjudication | credit officer to review the case in a         |
| > rate              | calendar month.                                |
+---------------------+------------------------------------------------+
| > Monthly value of  | The total value of Loans written in a calendar |
| > loans written     | month                                          |
+---------------------+------------------------------------------------+
| > Auto adjudication | By end of the current year, have an            |
| > rate 90%          | auto-adjudication rate of at least 90 percent  |
+---------------------+------------------------------------------------+

Decisions are mapped to the Performance Indicators and Goals that they
impact as follows:

+--------------------+-----------+------------------+-------------+---------------------+----------------+
|                    | **Monthly | > **Monthly      | > **Monthly | **Auto-adjudication | **Monthly      |
|                    | Loan**    | > Value**        | > Bureau**  | rate 90%**          | Auto-          |
|                    |           | >                |             |                     | adjudication** |
|                    | **Accept  | > **of Loans     |             |                     |                |
|                    | Rate**    | > WrittenCosts** |             |                     | **Rate**       |
+====================+===========+==================+=============+=====================+================+
| > **Adjudication** | Yes       | > Yes            |             |                     |                |
+--------------------+-----------+------------------+-------------+---------------------+----------------+
| > **Application    |           |                  | > Yes       |                     |                |
| > risk score**     |           |                  |             |                     |                |
+--------------------+-----------+------------------+-------------+---------------------+----------------+
| > **Bureau Call    |           |                  | > Yes       |                     |                |
| > Type**           |           |                  |             |                     |                |
+--------------------+-----------+------------------+-------------+---------------------+----------------+
| > **Routing**      | Yes       | > Yes            |             | Yes                 | Yes            |
+--------------------+-----------+------------------+-------------+---------------------+----------------+
| > **Strategy**     | Yes       | > Yes            |             | Yes                 | Yes            |
+--------------------+-----------+------------------+-------------+---------------------+----------------+

**Organizations**

+---------------+------------------------------------------------------+
| > Credit      | > Individuals in the Retail Banking Organization     |
| > officers    | > responsible for manual adjudication of loans.      |
+===============+======================================================+
| > Product     | Organization responsible for defining loan and other |
| > management  | banking products, how those products are priced,     |
|               | sold and tracked for profitability.                  |
+---------------+------------------------------------------------------+
| > Credit risk | Organization responsible for credit risk models and  |
| > analytics   | the use of data to predict credit risk for customers |
| > group       | and loan applicants.                                 |
+---------------+------------------------------------------------------+
| > Retail      | > Overall Organization focused on banking products   |
| > banking     | > for consumers.                                     |
+---------------+------------------------------------------------------+
| > Credit risk | Organization within the bank responsible for         |
|               | defining credit risk strategies and policies and     |
|               | providing tools for managing against these.          |
+---------------+------------------------------------------------------+

Credit officers are likely to be part of the Retail Banking
organization, Credit risk analytic and Risk management are part of the
Credit risk organization, although these relationships are not managed
in DMN.

These organizations own decisions, make decisions and own knowledge
sources as follows:

+--------------+----------------+----------------+--------------------+
|              | > **Owns       | > **Makes      | > **Knowledge      |
|              | > Decisions**  | > Decisions**  | > Sources**        |
+==============+================+================+====================+
| > **Credit   |                | > Adjudication | > Credit officer   |
| > officers** |                |                | > experience       |
+--------------+----------------+----------------+--------------------+
| > **Credit   | > Application  |                | > Credit risk      |
| > risk       | > risk score   |                | > analytics        |
| > analytics  |                |                |                    |
| > group**    |                |                |                    |
+--------------+----------------+----------------+--------------------+
| > **Credit   | > Adjudication |                | > Risk management  |
| > risk**     | >              |                | > strategy         |
|              | > Bureau call  |                |                    |
|              | > type         |                |                    |
|              | >              |                |                    |
|              | > Eligibility  |                |                    |
|              | >              |                |                    |
|              | > Pre-bureau   |                |                    |
|              | > risk         |                |                    |
|              | > category     |                |                    |
|              | > Post-bureau  |                |                    |
|              | > risk         |                |                    |
|              | > category     |                |                    |
|              | >              |                |                    |
|              | > Routing      |                |                    |
+--------------+----------------+----------------+--------------------+

#### Decision Services

The two decision services required by the business process model are
defined against the decision model. The **Bureau Strategy Decision
Service**, called by the **Decide bureau strategy** task, has output
decisions {Bureau call type, Strategy}, and is shown in [Figure
12‑7](#_Ref231382158). The **Routing Decision Service**, called by the
**Decide routing** task, has output decisions {Routing}, and is shown in
[Figure 12‑8](#_Ref231382172).

![](media/image125.svg){width="5.0465277777777775in"
height="5.993545494313211in"}

[]{#_Ref231382158 .anchor}Figure 12‑7: Bureau Strategy Decision Service

![](media/image127.svg){width="4.6296052055993in"
height="4.607638888888889in"}

[]{#_Ref231382172 .anchor}Figure 12‑8: Routing Decision Service

### The decision logic level

The DRG in [Figure 12‑2](#_Ref231381637) is defined in more detail in
the following specifications of the value expressions associated with
decisions and business knowledge models:

- The **Strategy** decision logic ([Figure 12‑9](#_Ref231382848))
  defines a complete, unique-hit decision table deriving Strategy from
  Eligibility and Bureau call type.

- The **Bureau call type** decision logic (shown as a boxed invocation
  in [Figure 12‑10](#_Ref231382862)) invokes the Bureau call type table,
  passing the output of the Pre-bureau risk category decision as the
  Pre-Bureau Risk Category parameter.

- The **Bureau call type table** decision logic ([Figure
  12‑11](#_Ref231382874)) defines a complete, unique-hit decision table
  deriving Bureau Call Type from Pre-Bureau Risk Category.

- The **Eligibility** decision logic (shown as a boxed invocation in
  [Figure 12‑12](#_Ref231382888)) invokes the Eligibility rules business
  knowledge model, passing Applicant data. Age as the Age parameter, the
  output of the Pre-bureau risk category decision as the Pre-Bureau Risk
  Category parameter, and the output of the Pre-bureau affordability
  decision as the Pre-Bureau Affordability parameter.

- The **Eligibility rules** decision logic ([Figure
  12‑13](#_Ref231382901)) defines a complete, priority-ordered single
  hit decision table deriving Eligibility from Pre-Bureau Risk Category,
  Pre-Bureau Affordability and Age.

- The **Pre-bureau risk category** decision logic (shown as a boxed
  invocation in [Figure 12‑14](#_Ref231382912)) invokes the Pre- bureau
  risk category table business knowledge model, passing Applicant data.
  ExistingCustomer as the Existing Customer parameter and the output of
  the Application risk score decision as the Application Risk Score
  parameter.

- The **Pre-bureau risk category table** decision logic ([Figure
  12‑15](#_Ref231382932)) defines a complete, unique-hit decision table
  deriving Pre-Bureau Risk Category from Existing Customer and
  Application Risk Score.

- The **Application risk score** decision logic (shown as a boxed
  invocation in [Figure 12‑16](#_Ref231382945)) invokes the Application
  risk score model business knowledge model, passing Applicant data. Age
  as the Age parameter, Applicant data. MaritalStatus as the Marital
  Status parameter and Applicant data. EmploymentStatus as the
  Employment Status parameter.

- The **Application Risk Score Model** decision logic ([Figure
  12‑17](#_Ref231382955)) defines a complete, no-order multiple-hit
  table with aggregation, deriving Application risk score from Age,
  Marital Status and Employment Status, as the sum of the Partial scores
  of all matching rows (this is therefore a predictive scorecard
  represented as a decision table).

- The **Routing** decision logic (shown as a boxed invocation in [Figure
  12‑18](#_Ref231382966)) invokes the Routing rules business knowledge
  model, passing Bureau data. Bankrupt as the Bankrupt parameter, Bureau
  data. CreditScore as the Credit Score parameter, the output of the
  Post-bureau risk category decision as the Post-Bureau Risk Category
  parameter, and the output of the Post-bureau affordability decision as
  the Post-Bureau Affordability parameter. Note that if Bureau data is
  null (due to the THROUGH strategy bypassing the Collect bureau data
  task) the Bankrupt and Credit Score parameters will be null.

- The **Routing rules** decision logic ([Figure 12‑19](#_Ref231382978))
  defines a complete, priority-ordered single hit decision table
  deriving Routing from Post-Bureau Risk Category, Post-Bureau
  Affordability, Bankrupt and Credit Score.

- The **Post-bureau risk category** decision logic (shown as a boxed
  invocation in [Figure 12‑20](#_Ref231382990)) invokes the Post- bureau
  risk category business knowledge model, passing Applicant data.
  ExistingCustomer as the Existing Customer parameter, Bureau data.
  CreditScore as the Credit Score parameter, and the output of the

> Application risk score decision as the Application Risk Score
> parameter. Note that if Bureau data is null (due to the THROUGH
> strategy bypassing the Collect bureau data task) the Credit Score
> parameter will be null.

- The **Post-bureau risk category table** decision logic ([Figure
  12‑21](#_Ref231383014)) defines a complete, unique-hit decision table
  deriving Post-Bureau Risk Category from Existing Customer, Application
  Risk Score and Credit Score.

- The **Pre-bureau affordability** decision logic (shown as a boxed
  invocation in [Figure 12‑22](#_Ref231383027)) invokes the
  Affordability calculation business knowledge model, passing Applicant
  data. Monthly. Income as the Monthly Income parameter, Applicant data.
  Monthly. Repayments as the Monthly Repayments parameter, Applicant
  data. Monthly. Expenses as the Monthly Expenses parameter, the output
  of the Pre-bureau risk category decision as the Risk Category
  parameter, and the output of the Required monthly installment decision
  as the Required Monthly Installment parameter.

- The **Post-bureau affordability** decision logic (shown as a boxed
  invocation in [Figure 12‑23](#_Ref231383037)) invokes the
  Affordability calculation business knowledge model, passing Applicant
  data. Monthly. Income as the Monthly

> Income parameter, Applicant data. Monthly. Repayments as the Monthly
> Repayments parameter, Applicant data. Monthly. Expenses as the Monthly
> Expenses parameter, the output of the Post-bureau risk category
> decision as the Risk Category parameter, and the output of the
> Required monthly installment decision as the Required Monthly
> Installment parameter.

- The **Affordability calculation** decision logic ([Figure
  12‑24](#_Ref231383050)) defines a boxed function deriving
  Affordability from Monthly Income, Monthly Repayments, Monthly
  Expenses and Required Monthly Installment. One step in this
  calculation derives Credit contingency factor by invoking the Credit
  contingency factor table business knowledge model, passing the output
  of the Risk category decision as the Risk Category parameter.

- The **Credit contingency factor table** decision logic ([Figure
  12‑25](#_Ref231383061)) defines a complete, unique-hit decision table
  deriving Credit contingency factor from Risk Category.

- The **Required monthly installment** decision logic (shown as a boxed
  invocation in [Figure 12‑26](#_Ref231383072)) invokes the Installment
  calculation business knowledge model, passing Requested product.
  ProductType as the Product Type parameter, Requested product. Rate as
  the Rate parameter, Requested product. Term as the Term parameter and
  Requested product. Amount as the Amount parameter.

- The **Installment calculation** decision logic ([Figure
  12‑27](#_Ref231383087)) defines a boxed function deriving monthly
  installment from Product Type, Rate, Term and Amount. One step in this
  calculation invokes an external function PMT, imported from a DMN XML
  file as "Financial". [Figure 12‑28](#_Ref231383111) shows the decision
  logic of PMT function.

- 

![[]{#_Ref231382848 .anchor}Figure 12‑9: Strategy decision
logic](media/image128.jpg){width="5.374305555555556in"
height="3.051388888888889in"}

![[]{#_Ref231382862 .anchor}Figure 12‑10: Bureau call type decision
logic](media/image129.jpg){alt="Chart, treemap chart Description automatically generated"
width="4.801388888888889in" height="1.5in"}

![[]{#_Ref231382874 .anchor}Figure 12‑11: Bureau call type table
decision
logic](media/image130.jpg){alt="Table Description automatically generated"
width="4.75in" height="2.901388888888889in"}

![[]{#_Ref231382888 .anchor}Figure 12‑12: Eligibility decision
logic](media/image131.jpg){alt="Table Description automatically generated"
width="4.520833333333333in" height="2.3784722222222223in"}

![[]{#_Ref231382901 .anchor}Figure 12‑13: Eligibility rules decision
logic](media/image132.jpg){alt="Table Description automatically generated"
width="6.055556649168854in" height="2.9256944444444444in"}

![[]{#_Ref231382912 .anchor}Figure 12‑14: Pre-bureau risk category
decision
logic](media/image133.jpg){alt="Table, treemap chart Description automatically generated with medium confidence"
width="4.541666666666667in" height="1.890278871391076in"}

![[]{#_Ref231382932 .anchor}Figure 12‑15: Pre-bureau risk category table
decision
logic](media/image134.jpg){alt="Table Description automatically generated"
width="5.770833333333333in" height="5.028472222222222in"}

![[]{#_Ref231382945 .anchor}Figure 12‑16: Application risk score
decision
logic](media/image135.jpg){alt="Table Description automatically generated"
width="4.874305555555556in" height="2.551388888888889in"}

![[]{#_Ref231382955 .anchor}Figure 12‑17: Application risk score model
decision
logic](media/image136.jpg){alt="Table Description automatically generated"
width="6.676388888888889in" height="7.405555555555556in"}

![[]{#_Ref231382966 .anchor}Figure 12‑18: Routing decision
logic](media/image137.jpg){alt="Table Description automatically generated"
width="4.811805555555556in" height="3.0625in"}

![[]{#_Ref231382978 .anchor}Figure 12‑19: Routing rules decision
logic](media/image138.jpg){alt="Table Description automatically generated"
width="6.383333333333334in" height="2.9555555555555557in"}

![[]{#_Ref231382990 .anchor}Figure 12‑20: Post-bureau risk category
decision
logic](media/image139.jpg){alt="Table Description automatically generated"
width="4.853472222222222in" height="2.53125in"}

![[]{#_Ref231383014 .anchor}Figure 12‑21: Post-bureau risk category
table decision
logic](media/image140.jpg){alt="Table Description automatically generated"
width="6.772222222222222in" height="7.855555555555555in"}

![[]{#_Ref231383027 .anchor}Figure 12‑22: Pre-bureau affordability
decision
logic](media/image141.jpg){alt="Table Description automatically generated"
width="4.957638888888889in" height="3.5416666666666665in"}

![[]{#_Ref231383037 .anchor}Figure 12‑23: Post-bureau affordability
decision
logic](media/image142.jpg){alt="Table Description automatically generated"
width="4.968055555555556in" height="3.551388888888889in"}

![[]{#_Ref231383050 .anchor}Figure 12‑24: Affordability calculation
decision
logic](media/image143.jpg){alt="Graphical user interface, application, table Description automatically generated"
width="6.772222222222222in" height="3.359722222222222in"}

![[]{#_Ref231383061 .anchor}Figure 12‑25: Credit contingency factor
table decision
logic](media/image144.jpg){alt="Table Description automatically generated"
width="5.551388888888889in" height="3.0722222222222224in"}

![[]{#_Ref231383072 .anchor}Figure 12‑26: Required monthly installment
decision
logic](media/image145.jpg){alt="Table Description automatically generated"
width="4.801388888888889in" height="3.051388888888889in"}

![[]{#_Ref231383087 .anchor}Figure 12‑27: Installment calculation
decision
logic](media/image146.jpg){alt="Table Description automatically generated"
width="5.249305555555556in" height="3.3430555555555554in"}

![[]{#_Ref231383111 .anchor}Figure 12‑28: Financial.PMT decision
logic](media/image147.jpg){alt="Graphical user interface, application Description automatically generated"
width="4.822222222222222in" height="1.7083333333333333in"}

### Executing the Decision Model 

In order to execute a decision model (in this case, by calling two
decision services), case data must be bound to the input data, much as
an invocation binds arguments to function parameters. The binding of
case data to input data, however, is not part of the decision model,
unlike the invocation that specifies how a decision's requirement inputs
bind to the parameters of that decision's required knowledge.

FEEL allows contexts and other expressions to be used to represent case
data (see also clauses [0](#_Ref123134081) and [10.6.1](#context-1)).
Input data is associated with an item definition (clause
[7.3.2](#_Ref123134115)) and the case data must have the same type and
other constraints specified by the item definition. Case data must be
mapped to the FEEL domain. For example, XML instance data is mapped to
the FEEL domain as described in clause [10.3.3](#xml-data).

For convenience, we will specify case data using boxed expressions
instead of XML. [Figure 12‑29](#_Ref231383356), [Figure
12‑30](#_Ref231383388), and [Figure 12‑31](#_Ref231383402) show boxed
contexts defining case data for Applicant data, Requested product and
Bureau data.

![[]{#_Ref231383356 .anchor}Figure 12‑29: Applicant data input data
sample](media/image148.jpg){alt="Table Description automatically generated"
width="3.7844444444444445in" height="4.05625in"}

**\**

![[]{#_Ref231383388 .anchor}Figure 12‑30: Requested Product input data
sample](media/image149.jpg){width="3.90625in"
height="1.5104166666666667in"}

![[]{#_Ref231383402 .anchor}Figure 12‑31: Bureau Data input data
sample](media/image150.jpg){alt="Chart, treemap chart Description automatically generated"
width="3.895138888888889in" height="0.9895833333333334in"}

When the Bureau Strategy Decision Service is called with the Applicant
data and Requested product case data, it returns the context shown in
[Figure 12‑32](#_Ref231383419):

![[]{#_Ref231383419 .anchor}Figure 12‑32: Output of the Bureau Strategy
Decision Service](media/image151.jpg){width="3.895138888888889in"
height="0.4791666666666667in"}

When the Routing Decision Service is called with the Applicant data,
Requested product and Bureau data case data, it returns the context
shown in [Figure 12‑33](#_Ref231383433).

![[]{#_Ref231383433 .anchor}Figure 12‑33: Output of the Routing decision
Service](media/image152.jpg){alt="Table Description automatically generated"
width="3.90625in" height="2.53125in"}

## Example 2: Ranked Loan Products

The second example considers eligibility for various mortgage loan
products based on the Borrower's income, assets, liabilities, and credit
score, and ranks them based on specified sort criteria. It illustrates
the wide variety of DMN expression types, including context, invocation,
relation, and function definition, as well as some of the newer FEEL
functions and operators, including import, service invocation, enhanced
iteration, generalized unary tests, and Java binding. The logic
represented here is just one of many different ways to model the
scenario.

The DRD for the decision model is shown in [Figure
12‑34](#_Ref231384069).

![](media/image154.svg){width="6.811023622047244in"
height="3.6409044181977253in"}

[]{#_Ref231384069 .anchor}Figure 12‑34: DRD for Recommended Loan
Products

The input data elements include:

- **Credit Score**, a number from 300 to 850 inclusive

- **Down Payment**, a number

- **Property**, a structure of type *tProperty* ([Figure
  12‑35](#_Ref231384086))

- **Borrower**, a structure of type *tBorrower* ([Figure
  12‑37](#_Ref231384132)), and

- **Lender Ratings,** a structure of type *tLenderRatings* ([Figure
  12‑38](#_Ref231384143))

The boxed expression format for the datatype definitions in [Figure
12‑35](#_Ref231384086), [Figure 12‑37](#_Ref231384132), and [Figure
12‑38](#_Ref231384143)is non- normative. [Figure 12‑35](#_Ref231384086),
for example, is a visualization of the XML representation of [Figure
12‑36](#_Ref231384096).

![[]{#_Ref231384086 .anchor}Figure 12‑35: Type tProperty (non-normative
representation)](media/image155.jpg){width="4.875694444444444in"
height="3.229861111111111in"}

![[]{#_Ref231384096 .anchor}Figure 12‑36: Type tProperty (XML
representation)](media/image156.jpg){alt="Table Description automatically generated with medium confidence"
width="6.772222222222222in" height="4.893055555555556in"}

![[]{#_Ref231384132 .anchor}Figure 12‑37: Type
tBorrower](media/image157.jpg){alt="Graphical user interface, application Description automatically generated"
width="6.430555555555555in" height="4.479166666666667in"}

![[]{#_Ref231384143 .anchor}Figure 12‑38: Type tLenderRatings, a
collection of
tLenderRating](media/image158.jpg){alt="Graphical user interface, application Description automatically generated"
width="3.792361111111111in" height="0.78125in"}

In addition, the zero-input decision Loan Products, a structure of type
tLoanProducts, is a relation ([Figure 12‑39](#_Ref231384230)). Cells in
a relation are FEEL expressions but often contain literal values as a
way to embed static data tables inside a decision model. In this case it
represents a list of mortgage loan products available from various
lenders, specifying the best interest rate offered to lowest risk
borrowers and loan origination costs specified as "points", a percentage
of the loan amount, and "fees", a constant value.

![](media/image159.png){width="6.772222222222222in"
height="2.83459208223972in"}

[]{#_Ref231384230 .anchor}Figure 12‑39: Loan Products

![Figure 12‑40: Type tLoanProducts, a collection of
tLoanProduct](media/image160.jpg){alt="Graphical user interface, text, application, email Description automatically generated"
width="6.772222222222222in" height="2.8819444444444446in"}

The **Recommended Loan Products** model imports another decision model
**Loan Info**, with the DRD shown in [Figure 12‑41](#_Ref231384289),
defining a decision service **Loan Info Service**. Imported models are
assigned a modeler-chosen prefix, here *Services*, to distinguish its
namespace from that of the importing model. In the importing DRD
([Figure 12‑34](#_Ref231384069)), the imported service **Services.Loan
Info Service** is depicted with the non-normative lock icon, indicating
that its logic may not be edited within the importing model. The service
parameters are the input data shown in [Figure 12‑41](#_Ref231384289):
**Credit Score, Property, Loan Product,** and **Down Payment**, with
types identical to those defined in the importing model.

**Services**.**Loan Info Service** populates a row of the decision
**Loan Info Table**, a collection of type **tLoanInfoRow** ([Figure
12‑39](#_Ref231384230)), calculating the details of the selected loan
product for the given property value (purchase price) and down payment.

![](media/image162.svg){width="5.984251968503937in"
height="3.2094860017497813in"}

[]{#_Ref231384289 .anchor}Figure 12‑41: DRD of imported Loan Info
Service

![Figure 12‑42: Type tLoanInfoTable, a collection of
tLoanInfoRow](media/image163.jpg){alt="Table Description automatically generated with medium confidence"
width="6.499722222222222in" height="5.16875in"}

![[]{#_Ref231384362 .anchor}Figure 12‑43: Loan
Data](media/image164.jpg){alt="Table Description automatically generated"
width="6.772222222222222in" height="7.648611111111111in"}

Within the service, **Loan Data** performs calculations used in the
presentation decision, **Loan Info**. It is modeled as a context with no
final result box, meaning every context entry creates a component of the
result. (The text "Result" in the final result box is a tool artifact
not in the spec, overwritten by a literal expression if the context has
a final result box value.) A few things to note about the logic shown in
[Figure 12‑43](#_Ref231384362):

- FEEL arithmetic can create values with many digits following the
  decimal point. The function decimal(x, 2) rounds value x to 2 decimal
  places.

- Context entry Interest Rate Percent invokes the BKM **Rate
  Adjustment** ([Figure 12‑44](#_Ref231384381)), a function of the
  borrower's **Credit Score** and the loan-to-value ratio **LTV**. This
  increments the Loan Product's interest rate by a small amount based on
  the loan risk.

- **Credit Score** values less than 620 are ineligible for a loan. In
  that case, **Rate Adjustment** could return null, but then all
  expressions using **Rate Adjustment** would also be null, complicating
  the logic. To simplify the downstream logic, it is better in this case
  to return a number, since ultimately the loan will not be approved if
  the **Credit Score** is less than 620.

- For loans with variable interest rate, the debt-to-income ratio uses a
  *Qualifying Payment* amount based on an interest rate 2 percent higher
  than the rate used in the initial *Monthly Payment*.

- *Monthly Payment* and *Qualifying Payment* are modeled as boxed
  invocations of the BKM **payment**, the amortization formula ([Figure
  12‑45](#_Ref231384396)). The parameters of payment are the loan amount
  *p*, the interest rate *r*, and the term in months, *n*.

The decision **Loan Info** ([Figure 12‑46](#_Ref231384410)), the output
of **Services.Loan Info**, returns a row of **Loan Info Table**. It is
also modeled as a context with no final result box, meaning each context
entry represents a column of **Loan Info Table.**

![[]{#_Ref231384381 .anchor}Figure 12‑44: BKM Rate
Adjustment](media/image165.jpg){alt="Table Description automatically generated"
width="3.798611111111111in" height="7.263888888888889in"}

![[]{#_Ref231384396 .anchor}Figure 12‑45: BKM
payment](media/image166.jpg){alt="Graphical user interface, text, application Description automatically generated"
width="3.0006944444444446in" height="1.5520833333333333in"}

![[]{#_Ref231384410 .anchor}Figure 12‑46: Loan
Info](media/image167.jpg){alt="Table Description automatically generated with medium confidence"
width="4.590277777777778in" height="7.291666666666667in"}

In the importing model, the decision **Loan Info Table** ([Figure
12‑47](#_Ref231384432)) iterates invocation of **Loan Info** over rows
of **Loan Products.** It is modeled as a literal expression using the
FEEL *for. . in. .return* operator. Here *x* is a range variable meaning
one item in a list -- one **Loan Product** in **Loan Products** --
producing an argument of the function call.

![[]{#_Ref231384432 .anchor}Figure 12‑47: Loan Info
Table](media/image168.jpg){alt="Graphical user interface, text, application, email Description automatically generated"
width="6.209027777777778in" height="1.25in"}

**Loan Info Table** now provides values for each **Loan Product** used
to determine whether the Borrower's income, assets, liabilities, and
credit score qualify for loan approval.

At the heart of the logic for determining eligibility for a particular
loan is the BKM **Min Credit Score** ([Figure 12‑48](#_Ref231384445)), a
decision table that calculates the minimum credit score required based
on three parameters: *DTI*, the borrower's debt-toincome ratio; *LTV,*
the loan-to-value ratio; and *Reserves*, a measure of the Borrower's
liquid assets after closing in units of monthly *Housing Costs*. The
table is modeled as hit policy *Collect* with aggregation *Minimum*,
meaning when multiple rules match the lowest value output is returned.
When *DTI* is greater than 95%, the loan is automatically ineligible. In
that case, no rule matches and **Min Credit Score** returns the value
null. Downstream logic referencing this variable must account for the
possibility of null value.

![[]{#_Ref231384445 .anchor}Figure 12‑48: Min Credit
Score](media/image169.jpg){alt="Table Description automatically generated"
width="3.7083333333333335in" height="5.180555555555555in"}

**Min Credit Score** is called by the BKM **Eligibility,** which in turn
calls the BKM **Eligibility Parameters** ([Figure
12‑49](#_Ref231384461)). **Eligibility Parameters** calculates the two
key parameters of **Min Credit Score**, the debt-to-income ratio *DTI
Pct*, and the liquid assets after closing, called *Reserves*. Note that
context entry *Housing Expense*, which sums the loan payment, tax and
insurance payments, and homeowner association/condo fee, must account
for the possibility that the latter is left blank, i.e., null, in the
input data **Property**, since adding null to a number gives null. To
prevent this, instead of the + operator we use the *sum()* function on a
list filtered by the condition *item != null.* We use this technique
also on context entry *Income*.

![[]{#_Ref231384461 .anchor}Figure 12‑49: Eligibility
Parameters](media/image170.jpg){alt="Table Description automatically generated"
width="6.772222222222222in" height="5.752777777777778in"}

For legibility, the BKM **Eligibility** is shown in two pieces ([Figure
12‑50](#_Ref231384475)and [Figure 12‑51](#_Ref231384483)). This BKM
creates a row of type *tTableRow* for the decision **Eligibility
Table**. It is modeled as a context, where the first four context
entries ([Figure 12‑51](#_Ref231384483)) call BKMs to determine values
to populate the *Table Row* components.

- *Params* calls the BKM **Eligibility Parameters** for a given **Loan
  Product**.

- *Required Credit Score* uses Params to call the BKM **Min Credit
  Score**, returning the minimum credit score required by that **Loan
  Product** for the Borrower to be eligible.

- *Eligible* is a Boolean comparing the Borrower's credit score to **Min
  Credit Score.** *Recommendation* uses the input data **Lender
  Ratings** in combination with **Eligible** to return a recommendation
  value for the **Loan Product**. *Recommendation* illustrates an
  alternative decision table syntax introduced in DMN 1.2 called
  generalized unary test. With generalized unary tests, a decision table
  input entry may be any FEEL expression, substituting ? for the input
  expression. For example, in the first column of this decision table
  the rules filter the **Lender Ratings** table for an item with *Lender
  Name* matching that of the **Loan Product** and *Customer Rating* in a
  specified range, returning true if that filter returns any values.

![[]{#_Ref231384475 .anchor}Figure 12‑50: Eligibility
(top)](media/image171.jpg){alt="Graphical user interface, application Description automatically generated"
width="6.772222222222222in" height="5.103472222222222in"}

The rest of **Eligibility** is shown in[Figure 12‑51](#_Ref231384483).

- *Table Row* is a nested context with no final result box value. Each
  context entry represents a column in the row.

- The DMN spec allows the final result box to be a context, but in this
  example, we use a context entry to create the result value and return
  it in the result box. Here context entry *Table Row* creates the row
  structure, and the final result box simply selects this context entry.

![[]{#_Ref231384483 .anchor}Figure 12‑51: Eligibility
(bottom)](media/image172.jpg){alt="Chart Description automatically generated with low confidence"
width="6.772222222222222in" height="5.504861111111111in"}

The decision **Eligibility Table** ([Figure 12‑52](#_Ref231384550)) uses
an alternative form of the *for. .in..return* operator to iterate over
an index rather than iterate over list item values. This alterative
format allows the returned expression to involve corresponding items in
multiple lists, in this case **Loan Products** and **Loan Info Table**.

![[]{#_Ref231384550 .anchor}Figure 12‑52: Eligibility
Table](media/image173.jpg){width="6.772222222222222in"
height="1.2305555555555556in"}

The top-level decision **Recommended Loan Products** ([Figure
12‑53](#_Ref231384564)) first sorts **Eligibility Table** based on
*Recommendation* and *Monthly Payment* and then calls a Java method to
format number values as strings for final presentation.

![[]{#_Ref231384564 .anchor}Figure 12‑53: Recommended Loan
Products](media/image174.jpg){alt="Graphical user interface, text, application Description automatically generated"
width="6.553472222222222in" height="3.354861111111111in"}

- The first context entry *precedes* is a function definition used by
  the FEEL *sort()* function. The second parameter of *sort()*, called
  the *precedes function*, is a Boolean function with two arguments
  representing list items. It returns true if the first argument
  precedes the second in the sorted list.

- The context entry *Sorted Table* performs the sort. With simple sort
  criteria, the precedes function is typically defined inline as an
  anonymous function using the keyword *function*, as in

> sort(myTable, function(x, y) x.Amount \< y.Amount)
>
> which sorts the rows of *myTable* in ascending order of the column
> *Amount*. However, in **Recommended Loan Products** we instead use a
> named precedes function, the context entry *precedes*. In that case,
> the name of the function provides the second argument of *sort().*

- The final result box iterates a call to the BKM **Format Row**, which
  executes a static Java method to format number values in *Sorted
  Table* as strings with a currency symbol and two digits following the
  decimal point.

**Format Row** ([Figure 12‑54](#_Ref231384593)) operates on a single row
of *Sorted Table*. It is modeled as a context.

- The first context entry *string format* is a Java function definition,
  indicated by the code J. DMN specifies such a function definition as a
  context with two context entries, *class,* and *method signature*.
  This example applies a mask string to a number, returning a formatted
  number string.

- The second context entry *formatted row* generates a row of
  **Recommended Loan Products** in final presentation format, calling
  *string format* to format amount and percent values.

- The final result box returns *formatted row*.

![[]{#_Ref231384593 .anchor}Figure 12‑54: Format
Row](media/image175.jpg){alt="Graphical user interface Description automatically generated with medium confidence"
width="6.772222222222222in" height="6.277083333333334in"}

[Figure 12‑55](#_Ref231384606) shows the output of **Recommended Loan
Products** based on the Test Case input data of [Figure
12‑56](#_Ref231384620).

![[]{#_Ref231384606 .anchor}Figure 12‑55: Test Case output of
Recommended Loan
Products](media/image176.jpg){alt="Table Description automatically generated"
width="5.531944444444444in" height="5.479861111111111in"}

![](media/image179.jpeg)

![[]{#_Ref231384620 .anchor}Figure 12‑56: Test Case Input Data
(partial)](media/image179.jpg){alt="Table Description automatically generated"
width="3.455224190726159in" height="2.768655949256343in"}

This page intentionally left blank.



# Exchange Formats


## Interchanging Incomplete Models

It is common for **DMN** models to be interchanged before they are
complete. This occurs frequently when doing iterative modeling, where
one user (such as a knowledge source expert or business user) first
defines a high-level model and then passes it on to another person to
complete or refine the model.

Such \"incomplete\" models are ones in which not all of the mandatory
model attributes have been filled in yet or the cardinality of the lower
bound of attributes and associations has not been satisfied.

XMI allows for the interchange of such incomplete models. In **DMN**, we
extend this capability to interchange of XML files based on the **DMN**
XML-Schema. In such XML files, implementers are expected to support this
interchange by:

- Disregarding missing attributes that are marked as \"required\" in the
  **DMN** XML-Schema.

- Reducing the lower bound of elements with \"minOccurs\" greater than
  0.

## Machine Readable Files

All machine-readable files, including XSD, XMI and XML files, can be
found at <https://www.omg.org/spec/DMN>.

- For the **DMN** XMI Model, the main file is DMN.xmi.

- For the **DMN** XSD Interchange (supporting Conformance Levels 1, 2
  and 3), the main file is DMN.xsd.

- XML serializations of the examples in clause [12](#dmn-examples) are
  provided as a non-normative zip file.

## XSD

### Document Structure

A domain-specific set of model elements is interchanged in one or more
**DMN** files. The root element of each file SHALL be \<DMN**:**
Definitions\>. The set of files SHALL be self-contained, i.e., all
definitions that are used in a file SHALL be imported directly or
indirectly using the \<DMN**:** Import\> element.

Each file SHALL declare a "name space" that MAY differ between multiple
files of one model.

**DMN** files MAY import non-**DMN** files (such as XSDs and PMMLs) if
the contained elements use external definitions.

Starting from DMN 1.7, the XML namespace URIs for backwards-compatible
1.x versions of DMN are fixed at:

- <https://www.omg.org/spec/DMN/> for the semantic model

- <https://www.omg.org/spec/DMN/DMNDI/> for the diagram interchange
  model

- <https://www.omg.org/spec/DMN/FEEL/> for the FEEL expression language

- <https://www.omg.org/spec/DMN/B-FEEL/> for the B-FEEL expression
  language

The \<dmn:definitions\> root element of a DMN XML file MUST indicate the
concrete DMN version that is used in the file by setting the dmnVersion
attribute, e.g.:

\<dmn:definitions dmnVersion=\"1.7\" \...

In addition, the \<dmn:definitions\> root element SHOULD include an
xsi:schemaLocation attribute that points to the XML schema files for all
namespaces, i.e. the URLs of the XSDs that are publicly hosted by OMG
without dated version stamps, e.g.

\<dmn:definitions dmnVersion=\"1.7\" \...

xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"

xsi:schemaLocation=\"

https://www.omg.org/spec/DMN/

https://www.omg.org/spec/DMN/DMN.xsd

https://www.omg.org/spec/DMN/DMNDI/

https://www.omg.org/spec/DMN/DMNDI.xsd

https://www.omg.org/spec/SCE/DI/

https://www.omg.org/spec/SCE/DI.xsd

https://www.omg.org/spec/SCE/DC/

https://www.omg.org/spec/SCE/DC.xsd

\"\>

### References within the DMN XSD

Many **DMN** elements that may need to be referenced contain IDs and
within the **BPMN** XSD, references to elements are expressed via these
IDs. The XSD IDREF type is the traditional mechanism for referencing by
IDs, however it can only reference an element within the same file.
**DMN** elements of type DMNElementReference support referencing by ID,
across files, by utilizing an href attribute whose value must be a valid
URI reference \[RFC 3986\] where the path components may be absolute,
the reference has no query component, and the fragment consists of the
value of the id of the referenced **DMN** element.

For example, consider the following Decision:

\<decision name=\"Pre-Bureau Risk Category\"
id=\"prebureauriskDec01\"\>\...\</decision\>

When this Decision is referenced, e.g., by an InformationRequirement in
a Decision that is defined in another file, the reference could take the
following form:\
\<requiredDecision
href="[http://www.example.org/Definitions01#prebureauriskDec01"/\>\
where "[http://www.example.org/Definitions01" is a URI representing the
namespace of the model specified in the DMN file. When the Decision is
referenced in the same file, the reference could take both of the
following forms: \<requiredDecision
href="http://www.example.org/Definitions01.xml#prebureauriskDec01"/\> or
\<requiredDecision
href="#prebureauriskDec01"/\>](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Notice that the **BPMN** processes and tasks that use a decision are
referenced using the href attribute as
well:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[indeed, it is compatible with the system to reference external Process
and Task instances in **BPMN 2.0** Definitions, which is also based on
IDs.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Attribute typeRef references ItemDefinitions and built-in types by
name not ID. In order to support imported types, typeRef uses the
namespace-qualified name syntax \[qualifer\].\[local-name\], where
qualifier is specified by the name attribute of the Import element for
the imported type. If the referenced type is not imported, the prefix
SHALL be
omitted.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[\
](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[This page intentionally left
blank](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[\
](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)



# DMN Diagram Interchange (DMN DI)


## [[[]{#_Toc231385263 .anchor}Scope](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[This chapter specifies the meta-model and schema for **DMN** Diagram
Interchange (**DMN DI**). The **DMN DI** is meant to facilitate the
interchange of **DMN** diagrams between tools rather than being used for
internal diagram representation by the tools. The simplest interchange
approach to ensure the unambiguous rendering of a **DMN** diagram was
chosen for **DMN DI**. As such, **DMN DI** does not aim to preserve or
interchange any "tool smarts" between the source and target tools (e.g.,
layout smarts, efficient styling,
etc.).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**DMN DI** does not ascertain that the **DMN** diagram is
syntactically or semantically
correct.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[This version of DMN DI focuses on the interchange of Decision
Requirements Diagrams (DRDs). Diagram Interchange for boxed expressions
and decision tables might be added in future
versions.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

## [[[]{#_Toc231385264 .anchor}Diagram Definition and Interchange](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The **DMN DI** meta-model, similar to the DMN abstract syntax
meta-model, is defined as a MOF-based meta-model. As such, its instances
can be serialized and interchanged using XMI. DMN DI is also defined by
an XML schema. Thus, its instances can also be serialized and
interchanged using
XML.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Both DMN DI meta-model and schema are harmonized with the OMG Diagram
Definition (DD) standard version 1.1. The referenced DD contains two
main parts: the Diagram Commons (DC) and the Diagram Interchange (DI).
The DC defines common types like bounds and points, while the DI
provides a framework for defining domain-specific diagram models. As a
domain-specific DI, DMN DI defines a few new meta-model classes that
derive from the abstract classes from
DI.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The focus of DMN DI is the interchange of laid out shapes and edges
that constitute a **DMN** diagram. Each shape and edge reference a
particular **DMN** model element. The referenced **DMN** model elements
are all part of the actual **DMN** model. As such, DMN DI is meant to
only contain information that is neither present nor derivable, from the
**DMN** model whenever possible. Simply put, to render a **DMN** diagram
both the DMN DI instance(s) and the referenced **DMN** model are
REQUIRED.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[From the DMN DI perspective, a DMN diagram is a particular snapshot of
a **DMN** model at a certain point in time. Multiple **DMN** diagrams
can be exchanged referencing model elements from the same **DMN** model.
Each diagram may provide an incomplete or partial depiction of the
content of the **DMN** model. As described in clause 12, a **DMN** model
package consists of one or more files. Each file may contain any number
of **DMN** diagrams. The exporting tool is free to decide how many
diagrams are exported and the importing tool is free to decide if and
how to present the contained diagrams to the
user.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

## [[[]{#_Toc231385265 .anchor}How to read this chapter](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Clause [14.4](#_Ref123199460) describes in detail the meta-model used
to keep the layout and the look of **DMN** Diagrams. Clause
[14.5](#_Ref123199473) presents in tables a library of the **DMN**
element depictions and an unambiguous resolution between a referenced
**DMN** model element and its
depiction.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

## [[[[]{#_Toc231385266 .anchor}]{#_Ref123199460 .anchor}DMN Diagram Interchange Meta-Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[]{#_Toc231385267 .anchor}Overview](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMN DI is an instance of the OMG DI meta-model. The basic concept
of DMN DI, as with DI in general, is that serializing a diagram
\[DMNDiagram\] for interchange requires the specification of a
collection of shapes \[DMNShape\] and edges
\[DMNEdge\].](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMN DI classes only define the visual properties used for
depiction. All other properties that are REQUIRED for the unambiguous
depiction of the **DMN** element are derived from the referenced **DMN**
element
\[dmnElementRef\].](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**DMN** diagrams may be an incomplete or partial depiction of the
content of the **DMN** model. Some **DMN** elements from a **DMN** model
may not be present in any of the diagram instances being
interchanged.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMN DI does not directly provide for any containment concept. The
DMNDiagram is an ordered collection of mixed DMNShape(s) and DMNEdge(s).
The order of the DMNShape(s) and DMNEdge(s) inside a DMNDiagram
determines their Z-order (i.e., what is in front of what). DMNShape(s)
and DMNEdge(s) that are meant to be depicted "on top" of other
DMNShape(s) and DMNEdge(s) MUST appear after them in the DMNDiagram.
Thus, the exporting tool MUST order all DMNShape(s) and DMNEdge(s) such
that the desired depiction can be rendered.Measurement UnitAs per OMG
DD, all coordinates and lengths defined by DMN DI are assumed to be in
user units, except when specified otherwise. A user unit is a value in
the user coordinate system, which initially (before any transformation
is applied) aligns with the device's coordinate system (for example, a
pixel grid of a display). A user unit, therefore, represents a logical
rather than physical measurement unit. Since some applications might
specify a physical dimension for a diagram as well (mainly for printing
purposes), a mapping from a user unit to a physical unit can be
specified as a diagram's resolution. Inch is chosen in this
specification to avoid variability, but tools can easily convert from/to
other preferred physical units. Resolution specifies how many user units
fit within one physical unit (for example, a resolution of 300 specifies
that 300 user units fit within 1 inch on the
device).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[]{#_Toc231385268 .anchor}DMNDI \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![Diagram Description automatically
generated](media/image180.jpg){width="3.9307195975503064in"
height="2.6389523184601926in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑1:
DMNDI](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The class DMNDI is a container for the shared DMNStyle and all the
DMNDiagram defined in a
Definitions.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 95: DMNDI
attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+====================================================================================================================+======================================================================================================================+
| > [[**styles**: DMNStyle                                                                                           | [[A list of shared DMNStyle that can be referenced by all DMNDiagram and                                             |
| > \[0..\*\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | DMNDiagramElement.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  |
+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**diagrams**: DMNDiagram                                                                                       | > [[A list of                                                                                                        |
| > \[0..\*\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |
+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

### [[[]{#_Toc231385269 .anchor}DMNDiagram \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![](media/image182.svg){width="6.770833333333333in"
height="4.322916666666667in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑2:
DMNDiagram](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The class DMNDiagram specializes DI::Diagram. It is a kind of Diagram
that represents a depiction of all or part of a **DMN**
model.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagram is the container of DMNDiagramElement (DMNShape(s) and
DMNEdge(s)). DMNDiagram cannot include other
DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[A DMNDiagram can define a DMNStyle locally and/or it can refer to a
shared one defined in the DMNDI. Properties defined in the local style
overrides the one in the referenced shared style. That combined style
(shared and local) is the default style for all the DMNDiagramElement
contained in this
DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMNDiagram class represents a two-dimensional surface with an
origin of (0, 0) at the top left corner. This means that the x and y
axes have increasing coordinates to the right and bottom. Only positive
coordinates are allowed for diagram elements that are nested in a
DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMNDiagram has the following
attributes.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+===========================================================================================================================+======================================================================================================================+
| > [[**name**: String](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | > [[The name of the diagram. Default is empty                                                                        |
|                                                                                                                           | > String.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**documentation**:                                                                                                    | > [[The documentation of the diagram. Default is empty                                                               |
| > String](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 | > String.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**resolution**: Real](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[The resolution of the diagram expressed in user units per inch. Default                                            |
|                                                                                                                           | is](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |
|                                                                                                                           |                                                                                                                      |
|                                                                                                                           | [[300](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**diagramElements**:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[A list of DMNDiagramElement (DMNShape and DMNEdge) that are depicted in this                                       |
| >                                                                                                                         | diagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
| > [[DMNDiagramElement                                                                                                     |                                                                                                                      |
| > \[0..\*\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**useAlternativeInputDataShape:** Boolean                                                                             | [[If the DMNShape depicts an Input Data element then it is represented either using the paper sheet symbol,          |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               | harmonized with BPMN and CMMN notations (true) or using the backwards compatible oval symbol                         |
|                                                                                                                           | (false).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**sharedStyle**: DMNStyle\[0..                                                                                        | [[A reference to a DMNStyle defined in the DMNDI that serves as the default styling of the DMNDiagramElement in this |
| > 1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                    | DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**localStyle**: DMNStyle                                                                                              | [[A DMNStyle that defines the default styling for this diagram. Properties defined in that style override the ones   |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               | in the sharedStyle.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**size**: DC::Dimens ion                                                                                              | > [[The size of this diagram. If not specified, the DMNDiagram is                                                    |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               | > unbounded.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+---------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

: [[Table 96: DMNDiagram
attributes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[[]{#_Toc231385270 .anchor}]{#_Ref123199630 .anchor}DMNDiagramElement \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![](media/image184.svg){width="6.336382327209098in"
height="2.928579396325459in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑3:
DMNDiagramElement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMNDiagramElement class is contained by the DMNDiagram and is the
base class for DMNShape and
DMNEdge.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement inherits its styling from its parent DMNDiagram. In
addition, it can refer to one of the shared DMNStyle defined in the
DMNDI and/or it can define a local style. See clause 13.4.9 for more
details on
styling.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement MAY also contain a DMNLabel when it has a visible
text label. If no DMNLabel is defined, the DMNDiagramElement should be
depicted without a
label.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement has the following
attributes:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+--------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+====================================================================================================================+====================================================================================================================+
| > [[**dmnElementRef**: DMNElement                                                                                  | [[A reference to the DMNElement that is being                                                                      |
| > \[1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | depicted.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+--------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**sharedStyle**: DMNStyle                                                                                      | [[A reference to a DMNStyle defined in the                                                                         |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | DMNDI.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+--------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**localStyle**: DMNStyle                                                                                       | [[A DMNStyle that defines the styling for this                                                                     |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | element.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+--------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**label**: DMNLabel \[0..                                                                                      | [[An optional label when this DMNElement has a visible text                                                        |
| > 1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             | label.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+--------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+

: [[Table 97: DMNDiagramElement
attributes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[]{#_Toc231385271 .anchor}DMNShape \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![Diagram Description automatically
generated](media/image185.jpg){width="6.713888888888889in"
height="2.5305555555555554in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑4:
DMNShape](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMNShape class specializes DI::Shape and DMNDiagramElement. It is
a kind of Shape that depicts a DMNElement from the DMN
model.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNShape represents a Decision, a Business Knowledge Model, an Input
Data element, a Knowledge Source, a Decision Service or a Text
Annotation that is depicted on the
diagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNShape has three additional properties (isListedInputData,
isCollapsed and decisionServiceDividerLine) that are used to further
specify the appearance of some shapes that cannot be deduced from the
DMN
model.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNShape extends DI::Shape and DMNDiagramElement and has the following
attributes:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 98: DMNShape
attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+====================================================================================================================================+======================================================================================================================+
| > [[**bounds**: DC::Bounds \[1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | [[The Bounds of the shape relative to the origin of its parent DMNDiagram. The Bounds MUST be                        |
|                                                                                                                                    | specified.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**dmnElementRef**: DMNElement                                                                                                  | [[A reference to a Decision, a Business Knowledge Model, an Input Data element, a Knowledge Source, a Decision       |
| > \[1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                           | Service, a Group or a Text Annotation MUST be                                                                        |
|                                                                                                                                    | specified.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**isListedInputData**: Boolean                                                                                                 | [[If the DMNShape depicts an Input Data element then this attribute is used to determine if the Input Data is listed |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                        | on the Decision element (true) or drawn as separate notational elements in the DRD                                   |
|                                                                                                                                    | (false).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| [[**decisionServiceDividerLine**:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[If the DMNShape depicts a Decision Service, this attribute references a DMNDecisionServiceDividerLine which is a   |
|                                                                                                                                    | DI::Edge that defines s where the DMNShape is divided into two parts by a straight solid line. This can be the case  |
| [[DMNDecisionServiceDividerLine                                                                                                    | when a DMNShape depicts a Decision Service, where the set of output decisions is smaller than the set of             |
| \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                          | encapsulated decisions. The start and end waypoints of the decisionServiceDividerLine MUST be on the border of the   |
|                                                                                                                                    | DMNShape.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**isCollapsed** Boolean \[0..1\] =                                                                                             | [[If the DMNShape depicts a DecisionService, this attribute indicates if it should be depicted expanded (false) or   |
| > false](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                           | collapsed (true). Default is                                                                                         |
|                                                                                                                                    | false.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |
+------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

### [[[[]{#_Toc231385272 .anchor}]{#_Ref123199610 .anchor}DMNEdge \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![](media/image187.svg){width="6.772222222222222in"
height="1.8944444444444444in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑5:
DMNEdge](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The DMNEdge class specializes DI::Edge and DMNDiagramElement. It is a
kind of Edge that can depict a relationship between two **DMN** model
elements.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNEdge are used to depict Requirements or Associations in the **DMN**
model. Since DMNDiagramElement might be depicted more than once,
sourceElement and targetElement attributes allow to determine to which
depiction
a](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNEdge is connected. When DMNEdge has a source, its
sourceModelElement MUST refer to
the](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement it starts from. That DMNDiagramElement MUST resolved
to the DMNElement that is the actual source of the Requirement or
Association. For Requirement, this is the required DMNElement. When it
has a target, its targetModelElement MUST refer to the DMNDiagramElement
where it ends.
That](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement MUST resolved to the DMNElement that is the actual
target of the Requirement or Association. For Requirement, this is the
DMNElement holding
it.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNEdge extends DI::Edge and has the following
properties:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+=======================================================================================================================+======================================================================================================================+
| > [[**wayPoints**: DC::Point                                                                                          | [[A list of points relative to the origin of its parent DMNDiagram that specifies the connected line segments of the |
| > \[2..\*\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | edge. At least two (2) waypoints MUST be                                                                             |
|                                                                                                                       | specified.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**dmnElementRef**: DMNElement                                                                                     | [[A reference to an InformationRequirement, KnowledgeRequirement, AuthorityRequirement or                            |
| > \[1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              | Association.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| [[**sourceElement**:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[The actual DMNDiagramElement this DMNEdge is connecting from. MUST be specified when the DMNEdge has a             |
|                                                                                                                       | source.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             |
| [[DMNDiagramElement\[0..                                                                                              |                                                                                                                      |
| 1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**targetElement**: DMNDiagramElement\[0..                                                                         | [[The actual DMNDiagramElement this DMNEdge is connecting to. MUST be specified when the DMNEdge has a               |
| > 1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                | target.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             |
+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

: [[Table 99: DMNEdge
attributes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[[]{#_Toc231385273 .anchor}]{#_Ref123199620 .anchor}DMNLabel \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![](media/image188.jpg){width="3.9569444444444444in"
height="2.873611111111111in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑6:
DMNLabel](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNLabel represents the depiction of some textual information about a
DMN
element.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[A DMN label is not a top-level element but is always nested inside
either a DMNShape or a DMNEdge. It does not have its own reference to a
**DMN** element but rather inherits that reference from its parent
DMNShape or DMNEdge. The textual information depicted by the label is
derived from the name attribute of the referenced
DMNElement.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNLabel extends DI::Shape and has the following
properties:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+====================================================================================================================+======================================================================================================================+
| > [[**bounds**: Bounds                                                                                             | [[The bounds of the DMNLabel. When not specified, the label is positioned at its default position as determined in   |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | clause 13.5](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| > [[**text**:                                                                                                      | [[An optional pretty printed text that MUST be displayed instead of the DMNElement's name if it is                   |
| > String\[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | present.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

: [[Table 100: DMNLabel
attributes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[]{#_Toc231385274 .anchor}DMNStyle \[Class\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![](media/image190.svg){width="4.895833333333333in"
height="3.25in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Figure 14‑7:
DMNStyle](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNStyle specializes DC::Style. It is a kind of Style that provides
appearance options for
a](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNStyle is used to keep some non-normative visual attributes such as
colors and font. DMN doesn't give any semantic to color and font
styling, but tools can decide to use them and interchange
them.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNDiagramElement style is calculated by percolating up DMNStyle
attributes defined at a different level of the hierarchy. Each attribute
is considered independently (meaning that a DMNStyle attribute can be
individually overloaded). The precedence rules are as
follow:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 
- 
- 

> [[The DMNStyle defined by the localStyle attribute of the
> DMNDiagramElement The DMNStyle referenced by the sharedStyle attribute
> of the DMNDiagramElement The DMNStyle defined by the localStyle
> attribute of the parent DMNDiagram The DMNStyle referenced by the
> sharedStyle attribute of the parent
> DMNDiagram](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The default attribute value defined in [Table 101](#_Ref114214842)
(DMNStyle
attributes).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[For example, let's say we have the
following:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 

[[DMNDiagramElement has a local DMNStyle that specifies the fillColor
and strokeColor Its parent DMNDiagram defines a local DMNStyle that
specifies the fillColor and
fontColor](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Then the resulting DMNDiagramElement should
use:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 
- 

> [[The fillColor and strokeColor defined at the DMNDiagramElement level
> (as they are defined locally). The fontColor defined at the DMNDiagram
> level (as the fillColor was overloaded locally). All other DMNStyle
> attributes would have their default
> values.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNStyle extends DC::Style and has the following
properties:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**Attribute**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               | > [[**Description**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+==================================================================================================================================+=============================================================================================================================+
| > [[**id**: String \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | > [[A unique id for this style so it can be referenced. Only styles defined in the DMNDI can be referenced                  |
|                                                                                                                                  | > by](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                       |
|                                                                                                                                  | >                                                                                                                           |
|                                                                                                                                  | > [[DMNDiagramElement and                                                                                                   |
|                                                                                                                                  | > DMNDiagram.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fillColor**: DC::Color                                                                                                     | > [[The color use to fill the shape. Doesn't apply to                                                                       |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > DMNEdge.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 |
|                                                                                                                                  | >                                                                                                                           |
|                                                                                                                                  | > [[Default is white.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**strokeColor**: DC::Color                                                                                                   | > [[The color use to draw the shape borders. Default is                                                                     |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > black.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontColor**: DC::Color                                                                                                     | > [[The color use to write the label. Default is                                                                            |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > black.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontFamily**: String                                                                                                       | > [[A comma-separated list of Font Name that can be used to display the text. Default is                                    |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > Arial.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontSize**: Real \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[The size in points of the font to use to display the text. Default is                                                   |
|                                                                                                                                  | > 8.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                       |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontItalic**: Boolean                                                                                                      | > [[If the text should be displayed in Italic. Default is                                                                   |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > false.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontBold**: Boolean                                                                                                        | > [[If the text should be displayed in Bold. Default is                                                                     |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > false.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontUnderline**: Boolean                                                                                                   | > [[If the text should be underlined. Default is                                                                            |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > false.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**fontStrikeThrough**: Boolean                                                                                               | > [[If the text should be stroke through. Default is                                                                        |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > false.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| [[**labelHorizontalAlignment**:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[How text should be positioned horizontally within the Label bounds. Default depends of the DMNDiagramElement the label  |
|                                                                                                                                  | > is attached to (see                                                                                                       |
| [[AlignmentKind \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | > [14.5](#_Ref123199587)).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| > [[**label VerticalAlignment**: AlignmentKind                                                                                   | > [[How the text should be positioned vertically inside the Label bounds. Default depends of the DMNDiagramElement the      |
| > \[0..1\]](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                      | > label is attached to (see [14.5](#_Ref123199597)). Start means "top" and end means                                        |
|                                                                                                                                  | > "bottom".](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                |
+----------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

: [[[]{#_Ref114214842 .anchor}Table 101: DMNStyle
attributes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

## [[[[[[]{#_Toc231385275 .anchor}]{#_Ref123199597 .anchor}]{#_Ref123199587 .anchor}]{#_Ref123199473 .anchor}Notation Depiction Library and Abstract Element Resolutions](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[As a notation, **DMN** specifies the depiction for each of the **DMN**
elements.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Serializing a **DMN** diagram for interchange requires the
specification of a collection of DMNShape(s) (see
[14.4.6](#_Ref123199610)) and DMNEdge(s) (see [14.4.7](#_Ref123199620))
in the DMNDiagram (see [14.4.4](#_Ref123199630)). The DMNShape(s) and
DMNEdge(s) attributes must be populated in such a way as to allow the
unambiguous rendering of the DMN diagram by the receiving party. More
specifically, the DMNShape(s) and DMNEdge(s) MUST reference **DMN**
model elements. If no DMNElement is referenced or if the reference is
invalid, it is expected that this shape or edge should not be
depicted.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[When rendering a **DMN** diagram, the correct depiction of a DMNShape
or DMNEdge depends mainly on the referenced **DMN** model element and
its particular attributes and/or references. The purpose of this clause
is to: provide a library of the **DMN** element depictions, and to
provide an unambiguous resolution between the referenced **DMN** model
element \[DMNElement\] and their depiction. Depiction resolution tables
are provided below for both DMNShape (see [14.5.2](#_Ref123199654)) and
DMNEdge (see
[14.5.3](#_Ref123199667)).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[]{#_Toc231385276 .anchor}Labels](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Both DMNShape and DMNEdge may have labels (its name attribute) placed
on the shape/edge, or above or below the shape/edge, in any direction or
location, depending on the preference of the modeler or modeling tool
vendor.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Labels are optional for DMNShape and DMNEdge. When there is a label,
the position of the label is specified by the bounds of the DMNLabel of
the DMNShape or DMNEdge. Simply put, label visibility is defined by the
presence of the DMNLabel
element.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The bounds of the DMNLabel are optional and always relative to the
containing DMNDiagram\'s origin point. The depiction resolution tables
provided below exemplify default label positions if no bounds are
provided for the DMNLabel (for DMNShape kinds (see
[14.5.2](#_Ref123199683)) and DMNEdge kinds (see
[14.5.3](#_Ref123199695))).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[When the DMNLabel is contained in a DMNShape, the text to display is
the name of the
DMNElement.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[[[]{#_Toc231385277 .anchor}]{#_Ref123199683 .anchor}]{#_Ref123199654 .anchor}DMNShape Resolution](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[DMNShape can be used to represent a Decision, a Business Knowledge
Model, an Input Data element, a Knowledge Source, a Text Annotation, a
Group, and a Decision
Service.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Decision](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[A Decision is represented in a DRD as a rectangle, normally drawn with
solid lines. If the Listed Input Data option is exercised, all the
Decisions requirements for Input Data shall be listed beneath the
Decisions label and separated from it by a horizontal line. The listed
Input Data names shall be clearly inside the shape of the DRD
element.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMNShape                                                                                                            | [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |
|                                                                                                                   | attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |                                                                                                                                   |
+===================================================================================================================+=========================================================================================================================+:=================================================================================================================================:+
| [[Decision](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 | > [[![Text, whiteboard Description automatically generated](media/image191.jpg){width="1.3726027996500438in"                      |
|                                                                                                                   |                                                                                                                         | > height="0.5395964566929133in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[Decision and two Input                                                                                          | [[Shapes of Input Data have                                                                                             | > [[![Diagram, table Description automatically generated](media/image192.jpg){width="1.2639545056867891in"                        |
| Data](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             | inListedInputData=true](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > height="0.8409787839020122in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: [[Table 102: Depiction Resolution for
Decision](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Business Knowledge Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMNShape                                                                                                  | [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |
|                                                                                                                   | attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |                                                                                                                                   |
+===================================================================================================================+===============================================================================================================+:=================================================================================================================================:+
| [[Business Knowledge                                                                                              | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > [[![Text Description automatically generated](media/image193.jpg){width="1.2229166666666667in"                                  |
| Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |                                                                                                               | > height="0.4270833333333333in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: [[Table 103: Depiction Resolution for Business Knowledge
Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Input Data Element](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[An Input Data element is represented in a DRD as a shape with two
parallel straight sides and two semi-circular ends, normally drawn with
solid
lines.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 104: Depiction Resolution for Input
Data**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMN Diagram                                                                                               | > [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 |
|                                                                                                                   | attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |                                                                                                                                    |
+===================================================================================================================+===============================================================================================================+:==================================================================================================================================:+
| [[Input Data](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > [[![Text Description automatically generated](media/image194.jpg){width="1.2229166666666667in"                                   |
|                                                                                                                   |                                                                                                               | > height="0.42986111111111114in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
|                                                                                                                   | [[or](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |                                                                                                                                    |
|                                                                                                                   |                                                                                                               |                                                                                                                                    |
|                                                                                                                   | [[useAlternativeInputDataShape =                                                                              |                                                                                                                                    |
|                                                                                                                   | false](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |                                                                                                                                    |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| [[Input Data](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | [[useAlternativeInputDataShape =                                                                              | > [[![Shape Description automatically generated with medium confidence](media/image16.png){width="0.84375in"                       |
|                                                                                                                   | true](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | > height="0.9375in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

#### [[Knowledge Source](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[A Knowledge Source is represented as a shape with three straight sides
and one wavy one, normally drawn with solid
lines.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMNShape                                                                                                  | > [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                |
|                                                                                                                   | attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |                                                                                                                                   |
+===================================================================================================================+===============================================================================================================+:=================================================================================================================================:+
| [[Knowledge                                                                                                       | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > [[![Diagram Description automatically generated with medium confidence](media/image195.jpg){width="1.1243821084864392in"        |
| Source](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |                                                                                                               | > height="0.7034678477690288in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: [[Table 105: Depiction Resolution for Knowledge
Source](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Artifacts](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMNShape                                                                                                  | > [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                |
|                                                                                                                   | Attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |                                                                                                                                   |
+===================================================================================================================+===============================================================================================================+===================================================================================================================================+
| [[TextAnnotation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > [[![Graphical user interface, text Description automatically generated](media/image196.jpg){width="1.3734142607174102in"        |
|                                                                                                                   |                                                                                                               | > height="0.5867869641294838in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| [[Group](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | [[None](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | [[![Shape Description automatically generated](media/image197.jpg){width="1.6221970691163605in"                                   |
|                                                                                                                   |                                                                                                               | height="0.955559930008749in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    |
+-------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: [[Table 106: Depiction Resolution of
Artifacts](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Decision Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[If the set of output decisions is smaller than the set of encapsulated
decisions, the Decision Service shall be divided into two parts with a
straight solid
line.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+---------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| > [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**DMNShape                                                                                                        | [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |
|                                                                                                                     | attributes**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |                                                                                                                                   |
+=====================================================================================================================+=====================================================================================================================+==================================================================================================================================:+
| > [[Decision                                                                                                        | [[None or                                                                                                           | [[![Text Description automatically generated](media/image198.jpg){width="2.195207786526684in"                                     |
| > Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | isCollapsed=false](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | height="1.1354002624671915in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   |
+---------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| > [[Decision                                                                                                        | [[DecisionServiceDividerLine                                                                                        | [[![Table Description automatically generated with medium confidence](media/image199.jpg){width="1.9630697725284338in"            |
| > Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | isCollapsed=false](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | height="0.9159765966754155in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   |
+---------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| > [[Decision                                                                                                        | [[isCollapsed=true](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[![Text Description automatically generated](media/image200.jpg){width="1.3244674103237095in"                                  |
| > Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |                                                                                                                     | > height="0.5867979002624671in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+---------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: [[Table 107: Depiction Resolution of Decision
Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### [[[[[]{#_Toc231385278 .anchor}]{#_Ref123199695 .anchor}]{#_Ref123199667 .anchor}DMNEdge Resolution](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Information Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 108: Depiction Resolution of Information
Requirement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                    |
+===================================================================================================================+:===================================================================================================================================:+
| [[Information                                                                                                     | > [[![](media/image201.jpg){width="1.1908847331583552in"                                                                            |
| Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | > height="7.638779527559054e-2in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

#### [[Knowledge Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+-------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                   |
+===================================================================================================================+:==================================================================================================================================:+
| [[Knowledge                                                                                                       | > [[![](media/image202.jpg){width="1.2034722222222223in"                                                                           |
| Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | > height="0.10694444444444444in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+-------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

: [[Table 109: Depiction Resolution of Knowledge
Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

#### [[Authority Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 110: Depiction Resolution of Authority
Requirement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)
  ------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  [[Authority                                                                                                                                              [[![](media/image203.jpg){width="1.5068503937007873in"
  Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         height="0.1847211286089239in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### [[Association](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[When the DMNEdge depicts an Association, its DMNElement MUST be
specified.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+---------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| > [[**DMNElement**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | > [[**Depiction**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                 |
+=====================================================================================================================+:==================================================================================================================================:+
| [[Association where associationDirection is                                                                         | > [[![](media/image204.jpg){width="1.2225732720909885in"                                                                           |
| none.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              | > height="0.22221784776902886in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+---------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| [[Association where associationDirection is                                                                         | > [[![](media/image205.jpg){width="1.2225732720909885in"                                                                           |
| one.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)               | > height="0.24306430446194227in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+---------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| [[Association where associationDirection is                                                                         | > [[![](media/image206.jpg){width="1.2225732720909885in"                                                                           |
| both.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              | > height="0.2916754155730534in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  |
+---------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

: [[[]{#_Ref193287379 .anchor}Table 111: Depiction Resolution of
Association](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[This page intentionally left
blank.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)



# ANNEXES All the Annexes are


[[[]{#_Toc231385279 .anchor}ANNEXES All the Annexes are
informative.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Annex A. discuss issues around the application of **DMN** in
combination with **BPMN**. This section is intended to provide some
direction to practitioners but is
non-normative.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Annex B. provides a non-normative glossary to aid comprehension of the
specification.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[This page intentionally left
blank.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

A.  1.  [[\
        [[]{#_Toc231385280 .anchor}]{#_Ref194300604 .anchor}Relation to
        BPMN\
        \
        (informative)[]{#_Toc231385281 .anchor}Goals of BPMN and
        DMN](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[The OMG Business Process Model and Notation Standard provides a
standard notation for describing business processes as orchestrations of
tasks. The success of **BPMN** has provided a major motivation for
**DMN,** and business decisions described using **DMN** are expected to
be commonly deployed in business processes described using
**BPMN**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[All statements pertaining to **BPMN** below are from the OMG document
reference 11-01-03 unless otherwise
stated.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**BPMN**'s goals are stated in the specification and provide easy
comparisons to
**DMN**:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 

- 

- 1.  [[Goal 1: "*The primary goal of* **BPMN** *is to provide a
      notation that is readily understandable by all business users,
      from the business analysts that create the initial drafts of the
      processes, to the technical developers responsible for
      implementing the technology that will perform those processes, and
      finally, to the businesspeople who will manage and monitor those
      processes. Thus,* **BPMN** *creates a standardized bridge for the
      gap between the business process design and process
      implementation.*". **DMN** users will also be business analysts
      (designing decisions) and then business users (populating decision
      models such as decision tables). Technical developers may be
      responsible for mapping business terms to appropriate data
      technologies. Therefore, **DMN** can also be said to bridge the
      decision design by a business analyst, and the decision
      implementation, typically using some decision execution
      technology, Goal 2: *"\... To ensure that XML languages designed
      for the execution of business processes, such as WSBPEL (Web
      Services Business Process Execution Language), can be visualized
      with a businessoriented notation."* It is not a stated goal of
      **DMN** to be able to visualize other XML languages (such as W3C
      RIF or OMG PRR); indeed, it is expected that **DMN** would provide
      the MDA specification layer for such languages. It does not
      preclude however the use of **DMN** (such as decision tables) to
      represent executable forms (such as production rules). Goal 3:
      *"The intent of* **BPMN** *is to standardize a business process
      model and notation in the face of many different modeling
      notations and viewpoints. In doing so,* **BPMN** *will provide a
      simple means of communicating process information to other
      business users, process implementers, customers, and suppliers."*
      Similarly, the intent of **DMN** is to standardize the decision
      model and notation across the many different implementations of
      broadly semantically similar models. In so doing, **DMN** will
      also facilitate the communication of decision information across
      business communities and tools. []{#_Toc231385282 .anchor}BPMN
      Tasks and DMN
      Decisions](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Most **BPMN** diagrams contain some tasks which involve
decision-making which can be modeled in **DMN**. These tasks take input
data acquired or generated earlier in the process and produce decision
outputs which are used later in the process. Decision outputs may be
used in two principal
ways:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 

> [[They may be consumed in another process task. They may influence the
> choice of sequence flows out of a
> gateway.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[In the latter case, decisions are used to determine which subprocesses
or tasks are to be executed (in the process sense). As such, **DMN**
complements **BPMN** as decision modeling complements process modeling
(in the sense of defining orchestrations or work
tasks).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[For example, [Figure A.1](#_Ref123199803) shows an example^1^ of a
**BPMN**-defined
process.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![Diagram Description automatically
generated](media/image207.jpg){width="6.749660979877516in"
height="3.502736220472441in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[[]{#_Ref123199803 .anchor}Figure A.1: Decision-making in
BPMN](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Analyzing this we
see:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 
- 

> [[A task whose title starts with "Decide\..." which makes a decision
> on (whether to use) normal post or special shipment, and which
> precedes an exclusive gateway using that decision result. A task whose
> title starts with "Check\..." which makes a decision on whether extra
> insurance is necessary, which precedes an inclusive gateway for which
> an additional process path may be executed based on the decision
> result. A task whose title starts with "Assign\..." which implies a
> decision to select a carrier based on some selection criteria. The
> previous task is effectively collecting data for this decision. In an
> automated system this would probably be a subprocess embedding a
> decision and some other activities (such as "prepare
> paperwork").](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[From this example we can see that even a simple business process in
**BPMN** may have several decision-making
tasks.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

1.  [[[]{#_Toc231385283 .anchor}Types of BPMN Tasks relevant to
    DMN](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**BPMN** defines^2^ different types of tasks that can be considered
for decision-making roles. The relevant tasks are as shown in [Table
111](#_Ref193287379):](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[1.Shipment Process in a Hardware Retailer example, Ch5.1, BPMN 2.0 By
Example, June 2010, OMG reference
10-06-02](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[2.See ch 10.2.3 in the BPMN
Specification.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**Table 111: BPMN tasks relevant to
DMN**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[![A picture containing table Description automatically
generated](media/image208.jpg){width="6.40625in"
height="4.606944444444444in"}](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[A future version of **BPMN** may choose to clarify and extend the
definitions of task to better match decision modeling requirements and
**DMN** -- to wit, to define a **BPMN** Decision Task as some task used
to make a decision modeled with **DMN**. In the meantime, the Business
Rule Task is the most natural way to express this functionality.
However, as noted in clauses [5.2.2](#_Ref123200289) and
[6.3.6](#_Ref123200306), a Decision in **DMN** can be associated with
any Task, allowing for flexibility in
implementation.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

2.  [[[]{#_Toc231385284 .anchor}Process gateways and
    Decisions](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Process gateways can be considered of 2
types:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

1.  
2.  

> [[A gateway that determines a process route or routes based on
> existing data A gateway that determines a process route or routes
> based on the outcome of one or more decisions that are determined by
> some previous task within the
> process.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[In the latter case, a Decision Task (task used to make a decision
using **DMN**) may need an extended notation to clarify the relationship
of the decision task to the gateway(s) that use
it.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

1.  [[[]{#_Toc231385285 .anchor}Linking BPMN and DMN
    Models](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[**DMN** offers two approaches to linking business process models in
**BPMN** with decision models: one normative and the other
non-normative:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### 

> [[[]{#_Toc231385286 .anchor}a) Associating Decisions with Tasks and
> Processes](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[As described in clause [6.3.6](#_Ref123200345), in **DMN**, the
process context for an instance of Decision is defined by its
association with any number of usingProcesses, which are instances of
Process as defined in OMG **BPMN 2**, and any number of usingTasks,
which are instances of Task as defined in OMG **BPMN 2**. Each decision
may therefore be associated with one or more business processes (to
indicate that the decision is taken during those processes), and/or with
one or more specific tasks (to indicate that the tasks involve making
the decision). An implementation SHALL allow these associations to be
defined for each
decision.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[An implementation MAY perform validation over the two (**BPMN** and
**DMN**) models, to check, for example,
that:](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

- 
- 

> [[A Decision is not associated with Tasks that are part of Processes
> not also associated with the Decision. A Decision is not associated
> with Tasks that are not part of any Process associated with the
> Decision.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[During development it may be appropriate to associate a Decision only
with a Process, but inconsistency between Task and Process associations
is not
allowed.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[Note that this approach allows the relationships between business
process models and decision models to be defined and validated but does
not of itself permit the decisions modeled in **DMN** to be executed
automatically by processes modeled in
**BPMN**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

### 

[[[]{#_Toc231385287 .anchor}b) Decision Services One approach to
decision automation is described non-normatively in Annex A: the
encapsulation of **DMN** Decisions in a "decision service" called from a
**BPMN** Task (e.g., a Service Task or Business Rule Task, as discussed
in Annex A..3 above). The usingProcesses and usingTasks properties allow
definition and validation of associations between **BPMN** and **DMN**;
the definition of decision services then provides a detailed
specification of the required
interface.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

A.  [[\
    [[]{#_Toc231385288 .anchor}]{#_Ref194300629
    .anchor}Glossary](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

[[(informative)](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > [[**A**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                            |
+==================================================================================================================+====================================================================================================================+
| [[Aggregation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | [[The production of a single result from multiple **hits**\                                                        |
|                                                                                                                  | on a **decision table**. DMN specifies four\                                                                       |
|                                                                                                                  | aggregation operators on the Collect hit policy,\                                                                  |
|                                                                                                                  | namely: + (sum), \< (min), \> (max), \# (count). If no\                                                            |
|                                                                                                                  | operator is specified, the results of the Collect hit\                                                             |
|                                                                                                                  | policy are returned without being                                                                                  |
|                                                                                                                  | aggregated.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Any](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | [[A **hit policy** for **single hit decision tables** with\                                                        |
|                                                                                                                  | overlapping **decision rules**: under this policy any\                                                             |
|                                                                                                                  | match may be                                                                                                       |
|                                                                                                                  | used.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Authority                                                                                                    | [[The dependency of one element of a Decision\                                                                     |
| > Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | Requirements Graph on another element which\                                                                       |
|                                                                                                                  | provides guidance to it or acts as a source of\                                                                    |
|                                                                                                                  | knowledge for it.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**B**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Binding](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | [[In an **invocation**, the association of the parameters\                                                         |
|                                                                                                                  | of the invoked expression with the input variables\                                                                |
|                                                                                                                  | of the invoking expression, using a binding\                                                                       |
|                                                                                                                  | formula.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed                                                                                                        | [[A form of **boxed expression** showing a collection\                                                             |
| > Context](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | of *n* (name, value) pairs with an optional result\                                                                |
|                                                                                                                  | value.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed                                                                                                        | [[A notation serving to decompose **decision\                                                                      |
| > Expression](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | logic** into small pieces which may be associated\                                                                 |
|                                                                                                                  | graphically with elements of a                                                                                     |
|                                                                                                                  | **DRD**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed                                                                                                        | [[A form of **boxed expression** showing the kind,\                                                                |
| > Function](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | parameters, and body of a                                                                                          |
|                                                                                                                  | function.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed                                                                                                        | [[A form of **boxed expression** showing the\                                                                      |
| > Invocation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | parameter bindings that provide the context for the\                                                               |
|                                                                                                                  | evaluation of the body of a **business knowledge\                                                                  |
|                                                                                                                  | model**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed List](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | [[A form of **boxed expression** showing a list of *n*                                                             |
|                                                                                                                  | items.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Boxed Literal                                                                                                | [[A form of **boxed expression** showing a **literal\                                                              |
| > Expression](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | expression**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Business Context                                                                                               | [[An element representing the business context of a\                                                               |
| Element](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | decision: either an **organisational unit** or a\                                                                  |
|                                                                                                                  | **performance                                                                                                      |
|                                                                                                                  | indicator**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Business Knowledge                                                                                             | [[Some **decision logic** (e.g., a **decision table**)\                                                            |
| Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | encapsulated as a reusable function, which may be\                                                                 |
|                                                                                                                  | invoked by **decisions** or by other **business\                                                                   |
|                                                                                                                  | knowledge                                                                                                          |
|                                                                                                                  | models**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**C**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Clause](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | [[In a **decision table**, a clause specifies a subject,\                                                          |
|                                                                                                                  | which is defined by an input expression or an\                                                                     |
|                                                                                                                  | output domain, and the finite set of the subdomains\                                                               |
|                                                                                                                  | of the subject's domain that are relevant for the piece of\                                                        |
|                                                                                                                  | **decision logic** that is described by the decision                                                               |
|                                                                                                                  | table.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Collect](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | [[A hit policy for multiple hit decision tables with\                                                              |
|                                                                                                                  | overlapping decision rules: under this policy all\                                                                 |
|                                                                                                                  | matches will be returned as a list in an arbitrary order.\                                                         |
|                                                                                                                  | An operator can be added to specify a function\                                                                    |
|                                                                                                                  | to be applied to the outputs: see                                                                                  |
|                                                                                                                  | Aggregation.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Context](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       | > [[In **FEEL**, a map of key-value pairs called **context                                                         |
|                                                                                                                  | > entries**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Crosstab                                                                                                       | > [[An **orientation** for **decision tables** in which two\                                                       |
| Table](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | > **input expressions** form the two dimensions of the\                                                            |
|                                                                                                                  | > table, and the **output entries** form a\                                                                        |
|                                                                                                                  | > twodimensional                                                                                                   |
|                                                                                                                  | > grid.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**D**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | > [[The act of determining an **output value** from a number of\                                                   |
|                                                                                                                  | > **input values**, using **decision logic** defining how the\                                                     |
|                                                                                                                  | > output is determined from the                                                                                    |
|                                                                                                                  | > inputs.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision                                                                                                       | [[The logic used to make decisions, defined in DMN as the\                                                         |
| Logic](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | **value expressions** of **decisions** and **business knowledge**\                                                 |
|                                                                                                                  | **models** and represented visually as **boxed                                                                     |
|                                                                                                                  | expressions**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision Logic                                                                                                 | [[The detailed level of modeling in DMN, consisting of the **value**\                                              |
| Level](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | **expressions** associated with **decisions** and **business\                                                      |
|                                                                                                                  | knowledge                                                                                                          |
|                                                                                                                  | models**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision                                                                                                       | [[A formal model of an area of decision-making, expressed in\                                                      |
| Model](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | DMN as **decision requirements** and **decision                                                                    |
|                                                                                                                  | logic**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision                                                                                                       | [[A point in a business process at which decisionmaking occurs,\                                                   |
| Point](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | modeled in BPMN 2.0 as a business rule task and possibly\                                                          |
|                                                                                                                  | implemented as a call to a **decision                                                                              |
|                                                                                                                  | service.**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision Requirements                                                                                          | [[A diagram presenting a (possibly filtered) view of a **DRG**.\                                                   |
| Diagram](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | \                                                                                                                  |
|                                                                                                                  | ](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                  |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision Requirements                                                                                          | [[A graph of **DRG elements** (**decisions**, **business knowledge\                                                |
| Graph](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | models** and **input data**) connected by                                                                          |
|                                                                                                                  | **requirements**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision Requirements\                                                                                         | [[The more abstract level of modelling in DMN, consisting of a\                                                    |
| Level](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | **DRG** represented in one or more                                                                                 |
|                                                                                                                  | **DRDs**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision Rule](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[In a **decision table**, a decision rule specifies associates a set of\                                          |
|                                                                                                                  | conclusions or results (**output entries**) with a set of conditions\                                              |
|                                                                                                                  | (**input                                                                                                           |
|                                                                                                                  | entries**).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision                                                                                                       | [[A software component encapsulating a **decision model** and exposing\                                            |
| Service](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | it as a service, which might be consumed (for example) by a task\                                                  |
|                                                                                                                  | in a BPMN process                                                                                                  |
|                                                                                                                  | model.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Decision                                                                                                       | [[A tabular representation of a set of related input and output expressions,\                                      |
| Table](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | organized into **decision rules** indicating which **output entry** applies\                                       |
|                                                                                                                  | to a specific set of **input                                                                                       |
|                                                                                                                  | entries**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Definitions](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | [[A container for all elements of a DMN **decision model**. The interchange\                                       |
|                                                                                                                  | of DMN files will always be through one or more                                                                    |
|                                                                                                                  | Definitions.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[DMN Element](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | [[Any element of a DMN **decision model**: a **DRG Element**,**Business\                                           |
|                                                                                                                  | Context Element**, **Expression**, **Definitions**, **Element Collection**,\                                       |
|                                                                                                                  | **Information Item** or **Item                                                                                     |
|                                                                                                                  | Definition**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[DRD](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | [[See **Decision Requirements                                                                                      |
|                                                                                                                  | Diagram**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[DRG](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | [[See **Decision Requirements                                                                                      |
|                                                                                                                  | Graph**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[DRG Element](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[Any component of a **DRG**: a **decision**, **business knowledge model**,\                                       |
|                                                                                                                  | **input data** or **knowledge                                                                                      |
|                                                                                                                  | source**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**E**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Element                                                                                                      | [[Used to define named groups of **DRG elements** within a                                                         |
| > Collection](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | **Definitions**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Expression](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | [[A **literal expression**, **decision table, invocation**, list, **context**, function\                           |
|                                                                                                                  | definition, or **relation** used to define part of the **decision logic** for a\                                   |
|                                                                                                                  | **decision** **model** in **DMN**. Returns a single value when                                                     |
|                                                                                                                  | interpreted.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**F**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[FEEL](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | [[The "Friendly Enough Expression Language" which is the default\                                                  |
|                                                                                                                  | expression language for                                                                                            |
|                                                                                                                  | DMN.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[First](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | [[A **hit policy** for **single hit decision tables** with overlapping\                                            |
|                                                                                                                  | **decision rules**: under this policy the first match is used, based\                                              |
|                                                                                                                  | on the order of the **decision                                                                                     |
|                                                                                                                  | rules**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Formal                                                                                                       | [[A named, typed value used in the invocation of a function to\                                                    |
| > Parameter](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | provide an **information item** for use in the body of the                                                         |
|                                                                                                                  | function.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**H**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Hit](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | [[In a **decision table**, the successful matching of all **input\                                                 |
|                                                                                                                  | expressions** of a **decision rule**, making the conclusion eligible\                                              |
|                                                                                                                  | for inclusion in the                                                                                               |
|                                                                                                                  | results.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Horizontal](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | [[An orientation for **decision tables** in which **decision rules\**                                              |
|                                                                                                                  | are presented as rows, **clauses** as                                                                              |
|                                                                                                                  | columns.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**I**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Information                                                                                                  | [[A **DMN element** used to model either a **variable** or a **parameter\**                                        |
| > Item](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | at the **decision logic level** in DMN **decision                                                                  |
|                                                                                                                  | models**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Information                                                                                                  | [[The dependency of a **decision** on an **input data** element or another\                                        |
| > Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | **decision** to provide a **variable** used in its **decision                                                      |
|                                                                                                                  | logic**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Input Data](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | [[Denotes information used as an input by one or more **decisions**,\                                              |
|                                                                                                                  | whose value is defined outside of the **decision                                                                   |
|                                                                                                                  | model**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Input Entry](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[An **expression** defining a condition cell in a **decision table\**                                             |
|                                                                                                                  | (i.e., the intersection of a **decision rule** and an input                                                        |
|                                                                                                                  | **clause**).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Input                                                                                                        | [[An **expression** defining the item to be compared with the\                                                     |
| > Expression](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | **input entries** of an input **clause** in a **decision                                                           |
|                                                                                                                  | table**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Input Value](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[An **expression** defining a limited range of expected values for an\                                            |
|                                                                                                                  | input **clause** in a **decision                                                                                   |
|                                                                                                                  | table**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Invocation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | [[A mechanism that permits the evaluation of one value expression another,\                                        |
|                                                                                                                  | using a number of                                                                                                  |
|                                                                                                                  | **bindings**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Item                                                                                                         | [[Used to model the structure and the range of values of **input data** and\                                       |
| > Definition](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | the outcome of **decisions**, using a type language such as **FEEL** or XML\                                       |
|                                                                                                                  | Schema.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**K**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Knowledge                                                                                                    | [[The dependency of a **decision** or **business knowledge model**\                                                |
| > Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | on a **business knowledge model** which must be invoked in the evaluation\                                         |
|                                                                                                                  | of its **decision                                                                                                  |
|                                                                                                                  | logic**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Knowledge                                                                                                    | [[An authority defined for **decisions** or **business knowledge\                                                  |
| > Source](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)        | models**, e.g., domain experts responsible for defining or maintaining\                                            |
|                                                                                                                  | them, or source documents from which business knowledge models are\                                                |
|                                                                                                                  | derived or sets of test cases with which the decisions must be                                                     |
|                                                                                                                  | consistent.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)       |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**L**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Literal                                                                                                      | [[Text that represents **decision logic** by describing how an output value is\                                    |
| > Expression](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | derived from its input values, e.g. in                                                                             |
|                                                                                                                  | plain](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             |
|                                                                                                                  |                                                                                                                    |
|                                                                                                                  | [[English or using the default expression language                                                                 |
|                                                                                                                  | **FEEL**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**M**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Multiple                                                                                                     | [[A type of **decision table** which may return **output entries** from multiple\                                  |
| > Hit](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           | **decision                                                                                                         |
|                                                                                                                  | rules**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**O**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Organisational                                                                                               | [[A **business context element** representing the unit of an organization\                                         |
| > Unit](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          | which makes or owns a                                                                                              |
|                                                                                                                  | **decision**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Orientation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   | [[The style of presentation of a **decision table**: horizontal (decision rules\                                   |
|                                                                                                                  | as rows; clauses as columns), vertical (rules as columns; clauses as rows), or\                                    |
|                                                                                                                  | crosstab (rules composed from two input                                                                            |
|                                                                                                                  | dimensions).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Output                                                                                                       | [[An **expression** defining a conclusion cell in a **decision table** (i.e., the\                                 |
| > Entry](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | intersection of a **decision rule** and an output                                                                  |
|                                                                                                                  | **clause**).](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Output                                                                                                       | [[A **hit policy** for **multiple hit decision tables** with overlapping\                                          |
| > Order](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | **decision rules**: under this policy all matches will be returned as a list in\                                   |
|                                                                                                                  | decreasing priority order. Output priorities are specified in an ordered\                                          |
|                                                                                                                  | list of values.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)   |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Output                                                                                                       | [[An **expression** defining a limited range of domain values for an output\                                       |
| > Value](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         | **clause** in a **decision                                                                                         |
|                                                                                                                  | table**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**P**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Performance                                                                                                  | [[A **business context element** representing a measure of business\                                               |
| > Indicator](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     | performance impacted by a                                                                                          |
|                                                                                                                  | **decision**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)     |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Priority](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    | [[A **hit policy** for **single hit decision tables** with overlapping **decision\                                 |
|                                                                                                                  | rules**: under this policy the match is used that has the highest\                                                 |
|                                                                                                                  | output priority.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  |
|                                                                                                                  |                                                                                                                    |
|                                                                                                                  | [[Output priorities are specified in an ordered list of                                                            |
|                                                                                                                  | values.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**R**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Relation](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | [[A form of **boxed expression** showing a vertical list of homogeneous\                                           |
|                                                                                                                  | horizontal **contexts** (with no result cells) with the names appearing\                                           |
|                                                                                                                  | just once at the top of the list, like a relational                                                                |
|                                                                                                                  | table.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Requirement](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[The dependency of one **DRG element** on another: either an\                                                     |
|                                                                                                                  | **information requirement**, **knowledge requirement** or **authority\                                             |
|                                                                                                                  | requirement.**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)    |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Requirement                                                                                                  | [[The directed graph resulting from the transitive closure of the\                                                 |
| > Subgraph](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | **requirements** of a **DRG element**; i.e., the sub-graph of the **DRG\**                                         |
|                                                                                                                  | representing all the decision-making required by a particular                                                      |
|                                                                                                                  | element.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Rule Order](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | [[A **hit policy** for **multiple hit decision tables** with overlapping **decision\                               |
|                                                                                                                  | rules**: under this policy all matches will be returned as a list in the order\                                    |
|                                                                                                                  | of definition of the **decision                                                                                    |
|                                                                                                                  | rules**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[**S**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[S-FEEL](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | [[A simple subset of **FEEL**, for **decision models** that use only simple\                                       |
|                                                                                                                  | **expressions**: in particular, **decision models** where the **decision**\                                        |
|                                                                                                                  | **logic** is modeled mostly or only using **decision                                                               |
|                                                                                                                  | tables**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Single Hit](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)  | [[A type of **decision table** which may return the **output entry** of only a single\                             |
|                                                                                                                  | **decision                                                                                                         |
|                                                                                                                  | rule**.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)           |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**U**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Unique](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | [[A **hit policy** for **single hit decision tables** in which no overlap is possible\                             |
|                                                                                                                  | and all **decision rules** are exclusive. Only a single rule can be                                                |
|                                                                                                                  | matched.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)          |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**V**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Variable](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | [[Represents a value that is input to a **decision**, in the description of its\                                   |
|                                                                                                                  | **decision logic**, or a value that is passed as a **parameter** to a                                              |
|                                                                                                                  | function.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)         |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[Vertical](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)      | [[An **orientation** for **decision tables** in which decision rules are\                                          |
|                                                                                                                  | presented as columns; clauses as                                                                                   |
|                                                                                                                  | rows.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)             |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| [[**W**](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| > [[Well-Formed](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01) | [[Used of a **DRG element** or **requirement** to indicate that it conforms\                                       |
|                                                                                                                  | to constraints on referential integrity, acyclicity                                                                |
|                                                                                                                  | etc.](http://www.example.org/Definitions01)](http://www.example.org/Definitions01#prebureauriskDec01)              |
+------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
