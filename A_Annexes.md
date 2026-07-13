# DMN Examples

## Example 1: Originations

### Introduction

In this clause we present an example of the use of **DMN** to model and execute decision-making in a simple business process modeled in **BPMN**, including decisions to be automated in decision services called from the business process management system.

### The business process model

`\autoref{fig:_Ref231381481}`{=latex} shows a simple process for loan originations, modeled in **BPMN 2.0**. The process handles as application for a loan, obtaining data from a credit bureau only if required for the case, and automatically deciding whether the application should be accepted, declined, or referred for human review. If referred, documents are collected from the applicant and a credit officer adjudicates the case. It consists of the following components:

- The **Collect application data** task collects data describing the Requested product and the Applicant (e.g., through an on-line application form).

- The Decide **bureau Strategy** task calls a decision service, passing Requested product and Applicant data. The service returns two decisions: Strategy and Bureau call type.

- A **gateway** uses the value of Strategy to route the case to Decline application, Collect bureau data or Decide routing.

- The **Collect bureau data** task collects data from a credit bureau according to the Bureau call type decision, then the case is passed to Decide routing.

- The **Decide routing** task calls a decision service, passing Requested product, Applicant data and Bureau data (if the Collect bureau data task was not performed, the Bureau data are set to null). The service returns a single decision: Routing.

- A **gateway** uses the value of Routing to route the case to Accept application, Review application or Decline application.

- The **Collect documents** task requests and uploads documents from the applicant in support of their application.

- The **Review application** task allows a credit officer to review the case and decide whether it should be accepted or declined.

- A **gateway** uses the credit officer's Adjudication to route the case to Accept application or Decline application.

- The **Accept application** task informs the applicant that their application is accepted and initiates the product.

- The **Decline application** task informs the applicant that their application is declined.

Note that in this example two decision points (automated as calls to decision services) are represented in **BPMN 2.0** as business rule tasks; the third decision point (which is human decision-making) is represented as a user task.

![Example business process](./media/image113.jpeg){#fig:_Ref231381481 alt="Diagram, schematic Description automatically generated" width="6.366666666666666in" height="7.272916666666666in"}

### The decision requirements level

The examples in this chapter were developed using a software that adds icons to the elements. Although adding these icons is allowable by this document it is not normative.

#### Decision Requirements Diagrams

`\autoref{fig:_Ref231381637}`{=latex} shows a DRD of all the decision-making in this business process. There are four sources of input data for the decision-making (Requested product, Applicant data, Bureau data and Supporting documents), and four decisions whose results are used in the business process (Strategy, Bureau call type, Routing and Adjudication). Between the two are intermediate decisions: evaluations of risk, affordability, and eligibility.

Notable features of this DRD include:

- It covers both automated and human decision-making.

- Some decisions (e.g., Pre-bureau risk category) and input data (e.g., Applicant data) are required by multiple decisions, i.e., the information requirements network is not a tree.

- Business knowledge models (see Affordability calculation) may be invoked by multiple decisions.

- Business knowledge models (see Credit contingency factor) may be invoked by other business knowledge models.

- Some decisions do not have associated business knowledge models.

Knowledge sources may provide authority for multiple decisions and/or business knowledge models.

![DRD of all automated decision-making](./media/image115.svg){#fig:_Ref231381637 width="6.772222222222222in" height="5.103472222222222in"}

It might be considered more convenient to draw separate (but overlapping) DRDs for the three decision points:

- `\autoref{fig:_Ref231381841}`{=latex} shows the DRD of the decisions required for the Decide bureau strategy decision point, i.e., the requirements subgraph of the Strategy and Bureau call type decisions. These are decisions to be automated through encapsulation in a decision service called at this point and therefore need their logic to be specified completely.

- `\autoref{fig:_Ref231381847}`{=latex} shows the DRD for the Decide routing decision point, i.e., the requirements subgraph of the Routing decision. These are also decisions automated with a decision service and therefore need their logic to be specified completely. Note that some elements appear in both `\autoref{fig:_Ref231381841}`{=latex} and `\autoref{fig:_Ref231381847}`{=latex}.

- `\autoref{fig:_Ref231381853}`{=latex} shows the DRD for the Review application decision point, i.e., the requirements subgraph of the Adjudication decision. This is a human decision and has no associated specification of decision logic, but the DRD indicates that the Credit officer takes into account the results of the automated Routing decision along with the case data, including the Supporting documents. (The requirements subgraph of the Routing decision has been hidden in this DRD as shown by the ellipsis (\...) marker.)

- `\autoref{fig:_Ref231381861}`{=latex} shows an additional DRD for the Credit Risk Analytics Knowledge Source i.e., the requirements linking this Knowledge Source to other elements. DRDs can be used to provide views other than for a specific decision.

All four DRDs -- `\autoref{fig:_Ref231381637}`{=latex}, `\autoref{fig:_Ref231381841}`{=latex}, `\autoref{fig:_Ref231381847}`{=latex}, `\autoref{fig:_Ref231381853}`{=latex} and `\autoref{fig:_Ref231381861}`{=latex} -- are views of the same DRG.

![DRD for Decide bureau strategy decision point](./media/image117.svg){#fig:_Ref231381841 width="6.772222222222222in" height="6.495833333333334in"}

![DRD for Decide routing decision point](./media/image119.svg){#fig:_Ref231381847 width="6.772222222222222in" height="4.651388888888889in"}

![DRD for Review application decision point](./media/image121.svg){#fig:_Ref231381853 width="4.604166666666667in" height="3.0930555555555554in"}

![DRD for Credit Risk Analytics Knowledge Source](./media/image123.svg){#fig:_Ref231381861 width="5.511805555555555in" height="2.7645833333333334in"}

#### DRG Elements

##### Decisions

The DRG depicted in these DRDs shows dependencies between the following decisions:

- The **Strategy** decision, requiring the Bureau call type and Pre-bureau eligibility decisions, invokes the Strategy table shown in `\autoref{fig:_Ref231382848}`{=latex} (without that table being encapsulated in a business knowledge model).

- The **Bureau call type** decision, requiring the Pre-bureau risk category decision, invokes the Bureau call type table shown in `\autoref{fig:_Ref231382874}`{=latex}.

- The **Eligibility** decision, requiring Applicant data and the Pre-bureau risk category and Pre-bureau affordability decisions, invokes the Eligibility rules shown in `\autoref{fig:_Ref231382901}`{=latex}.

- The **Pre-bureau affordability** decision, requiring Applicant data and the Pre-bureau risk category and Required monthly installment decisions, invokes the Affordability calculation boxed expression shown in `\autoref{fig:_Ref231383050}`{=latex}, which in turn invokes the Credit contingency factor table shown in `\autoref{fig:_Ref231383061}`{=latex}.

- The **Pre-bureau risk category** decision, requiring Applicant data and the Application risk score decision, invokes the Pre-bureau risk category table shown in `\autoref{fig:_Ref231382932}`{=latex}.

- The **Application risk score** decision, requiring Applicant data, invokes the Application risk score model shown in `\autoref{fig:_Ref231382955}`{=latex}.

- The **Routing** decision, requiring Bureau data and the Post-bureau affordability and Post-bureau risk category decisions, invokes the Routing rules shown in `\autoref{fig:_Ref231382978}`{=latex}.

- The **Post-bureau affordability** decision, requiring Applicant data and the Post-bureau risk score and Required monthly installment decisions, invokes the Affordability calculation boxed expression shown in `\autoref{fig:_Ref231383050}`{=latex}, which in turn invokes the Credit contingency factor table shown in `\autoref{fig:_Ref231383061}`{=latex}.

- The **Post-bureau risk category** decision, requiring Applicant and Bureau data and the Application risk score decision, invokes the Post-bureau risk category table shown in `\autoref{fig:_Ref231383014}`{=latex}.

- The **Required monthly installment** decision, requiring Requested product data, invokes the Installment calculation boxed expression shown in `\autoref{fig:_Ref231383087}`{=latex}.

- The **Adjudication** decision, requiring Applicant data, Bureau data, Supporting documents, and the Routing decision, has no associated decision logic.

Questions and allowed answers are specified for these decisions. These are typically used when modeling decisions for which no logic will be specified and for other decisions before it is appropriate to describe the decision logic in detail. The description and Question/Allowed Answers for each decision follow.

#### Adjudication 

Question: Should this application that has been referred for adjudication be accepted? Allowed Answers: Yes/No

Description: Determine if an application requiring adjudication should be accepted or declined given the available application data and supporting documents.

#### Application risk score 

Question: What is the risk score for this applicant?

Allowed Answers: A number greater than 70 and less than 150

Description: The **Application Risk Score** decision logic invokes the Application risk score model business knowledge model, passing Applicant data.Age as the Age parameter, Applicant data.MaritalStatus as the Marital Status parameter and Applicant data.EmploymentStatus as the Employment Status parameter.

#### Bureau call type 

Question: How much data should be requested from the credit bureau for this application? Allowed Answers: A value from the explicit list \"Full\", \"Mini\", \"None\"

Description: The **Bureau call type** decision logic invokes the Bureau call type table, passing the output of the Prebureau risk category decision as the Pre-Bureau Risk Category parameter.

#### Eligibility 

Question: Does this applicant appear eligible for the loan they applied for given only their application data? Allowed Answers: Value from the explicit list \"Eligible\", \"Not Eligible\"

Description: The **Eligibility** decision logic invokes the Eligibility rules business knowledge model, passing

Applicant data.Age as the Age parameter, the output of the Pre-bureau risk category decision as the Pre-Bureau Risk Category parameter, and the output of the Pre-bureau affordability decision as the Pre-Bureau Affordability parameter.

#### Pre-bureau affordability 

Question: Can the applicant afford the loan they applied for given only their application data?

Allowed Answers: Yes/No

Description: The **Pre-bureau affordability** decision logic invokes the Affordability calculation business knowledge model, passing Applicant data.Monthly.Income as the Monthly Income parameter, Applicant data.Monthly.Repayments as the Monthly Repayments parameter, Applicant data.Monthly.Expenses as the Monthly Expenses parameter, the output of the Pre-bureau risk category decision as the Risk Category parameter, and the output of the Required monthly installment decision as the Required Monthly Installment parameter.

#### Post-bureau affordability 

Question: Can the applicant afford the loan they applied for given all available data?

Allowed Answers: Yes/No

Description: The **Post-bureau affordability** decision logic invokes the Affordability calculation business knowledge model, passing Applicant data.Monthly.Income as the Monthly Income parameter, Applicant

data.Monthly.Repayments as the Monthly Repayments parameter, Applicant data.Monthly.Expenses as the Monthly Expenses parameter, the output of the Post-bureau risk category decision as the Risk Category parameter, and the output of the Required monthly installment decision as the Required Monthly Installment parameter.

#### Pre-bureau risk category 

Question: Which risk category is most appropriate for this applicant given only their application data?

Allowed Answers: Value from explicit list \"Decline\", \"High Risk\", \"Medium Risk\", \"Low Risk\", \"Very Low Risk\"

Description: The Pre-Bureau Risk Category decision logic invokes the Pre-bureau risk category table business knowledge model, passing Applicant data.ExistingCustomer as the Existing Customer parameter and the output of the Application risk score decision as the Application Risk Score parameter.

#### Post-bureau risk category 

Question: Which risk category is most appropriate for this applicant given all available data?

Allowed Answers: A value from the explicit list \"Decline\", \"High Risk\", \"Medium Risk\", \"Low Risk\", \"Very Low Risk\"

Description: The **Post-bureau risk category** decision logic invokes the Post-bureau risk category business knowledge model, passing Applicant data.ExistingCustomer as the Existing Customer parameter, Bureau data.CreditScore as the Credit Score parameter, and the output of the Application risk score decision as the Application Risk Score parameter. Note that if Bureau data is null (due to the THROUGH strategy bypassing the Collect bureau data task) the Credit Score parameter will be null.

#### Required monthly installment 

Question: What is the minimum monthly installment payment required for this loan product? Allowed Answers: A dollar amount greater than zero

Description: The **Required monthly installment** decision logic invokes the Installment calculation business knowledge model, passing Requested product.ProductType as the Product Type parameter, Requested product.Rate as the Rate parameter, Requested product.Term as the Term parameter, and Requested product.Amount as the Amount parameter.

#### Routing 

Question: How this should this applicant be routed given all available data?

Allowed Answers: A value from the explicit list \"Decline\", \"Refer for Adjudication\", \"Accept without Review\"

Description: The **Routing** decision logic invokes the Routing rules business knowledge model, passing Bureau data.

Bankrupt as the Bankrupt parameter, Bureau data. Credit Score as the Credit Score parameter, the output of the Post- bureau risk category decision as the Post-Bureau Risk Category parameter, and the output of the Post-bureau affordability decision as the Post-Bureau Affordability parameter. Note that if Bureau data is null (due to the

THROUGH strategy bypassing the Collect bureau data task) the Bankrupt and Credit Score parameters will be null.

#### Strategy 

Question: What is the appropriate handling strategy for this application?

Allowed Answers: A value from the explicit list \"Decline\",\"Bureau","Through\"

Description: The **Strategy** decision logic defines a complete, unique-hit decision table deriving Strategy from Eligibility and Bureau call type.

##### Knowledge Sources

The DRG contains the following Knowledge Sources:

#### Affordability spreadsheet 

Description: Internal spreadsheet showing the relationship of income, payments, expenses, risk, and affordability.

Type: Policy

#### Credit officer experience 

Description: The collected wisdom of the credit officers as collected in their best practice wiki. Type: Expertise

#### Credit risk analytics 

Description: Credit risk scorecard analysis to determine the relevant factors for application risk scoring

Type: Analytic Insight

#### Product specification 

Description: Definitions of the products, their cost structure and eligibility criteria.

Type: Policy

#### Risk management strategy 

Description: Overall risk management approach for the financial institution including its approach to application risk, credit contingencies and credit risk scoring.

Type: Policy

##### Input Data

The DRG contains the following Input Data:

#### Applicant data 

Description: Information about the applicant including personal information, marital status, and household income/expenses.

**Bureau data**

Description: External credit score and bankruptcy information provided by a bureau.

**Loan default data**

Description: Information about historical loan defaults.

**Requested product**

Description: Details of the loan the applicant has applied for.

#### Supporting documents 

Description: Documents associated with a loan that are not processed electronically but are available for manual adjudication.

##### Business Knowledge Models

Finally, the DRG contains the following Business Knowledge Models:

#### Eligibility rules 

Description: The Eligibility rules decision logic defines a complete, priority-ordered single hit decision table deriving Eligibility from Pre-Bureau Risk Category, Pre-Bureau Affordability and Age.

#### Routing rules 

Description: The Routing Rules decision logic defines a complete, priority-ordered single hit decision table deriving Routing from Post-Bureau Risk Category, Post-Bureau Affordability, Bankrupt and Credit Score.

#### Bureau call type table 

Description: The Bureau call type table decision logic defines a complete, unique-hit decision table deriving Bureau Call Type from Pre-Bureau Risk Category.

#### Credit contingency factor table 

Description: The Credit contingency factor table decision logic defines a complete, unique-hit decision table deriving Credit contingency factor from Risk Category.

#### Affordability calculation 

Description: The Affordability calculation decision logic defines a boxed function deriving Affordability from Monthly Income, Monthly Repayments, Monthly Expenses and Required Monthly Installment. One step in this calculation derives Credit contingency factor by invoking the Credit contingency factor table business.

**Pre-bureau risk category table\**

Description: The Pre-bureau risk category table decision logic defines a complete, unique-hit decision table deriving Pre- bureau risk category from Existing Customer and Application Risk Score.

#### Post-bureau risk category table 

Description: The Post-bureau risk category table decision logic defines a complete, unique-hit decision table deriving Post-Bureau Risk Category from Existing Customer, Application Risk Score and Credit Score.

#### Application risk score model 

Description: The Application risk score model decision logic defines a complete, no-order multiple-hit table with aggregation, deriving Application risk score from Age, Marital Status and Employment Status, as the sum of the Partial scores of all matching rows (this is therefore a predictive scorecard represented as a decision table).

#### Installment calculation 

Description: The Installment calculation decision logic defines a boxed function deriving monthly installment from Product Type, Rate, Term and Amount.

#### Financial.PMT 

Description: Standard calculation of monthly installment from Rate, Term and Amount.

#### Business Context

In addition to the information represented in the DRD, the business context of the decision-making can be specified. The Performance Indicators used to track the effectiveness of decision-making, Objectives the organization seeks to meet through its decision-making approach, and the Organizational Units that make decisions or own the decision making approach may all be specified. Decisions are cross-referenced to the performance indicators and objectives they impact and to the organizational units that either make the decision or own the definition of how the decision should be made.

**Performance indicators**

+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
| > Monthly bureau costs           | The total cost charged by the bureau for all Bureau Data requested while originating Loans in a calendar month. |
+==================================+=================================================================================================================+
| > Monthly loan accept rate       | > The percentage of loans accepted in a calendar month.                                                         |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
| > Monthly auto-adjudication rate | The percentage of loans that did not require a credit officer to review the case in a calendar month.           |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
| > Monthly value of loans written | The total value of Loans written in a calendar month                                                            |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
| > Auto adjudication rate 90%     | By end of the current year, have an auto-adjudication rate of at least 90 percent                               |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+

Decisions are mapped to the Performance Indicators and Goals that they impact as follows:

+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+
|                              | **Monthly Loan** | > **Monthly Value**         | > **Monthly Bureau** | **Auto-adjudication rate 90%** | **Monthly Auto- adjudication** |
|                              |                  | >                           |                      |                                |                                |
|                              | **Accept Rate**  | > **of Loans WrittenCosts** |                      |                                | **Rate**                       |
+==============================+==================+=============================+======================+================================+================================+
| > **Adjudication**           | Yes              | > Yes                       |                      |                                |                                |
+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+
| > **Application risk score** |                  |                             | > Yes                |                                |                                |
+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+
| > **Bureau Call Type**       |                  |                             | > Yes                |                                |                                |
+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+
| > **Routing**                | Yes              | > Yes                       |                      | Yes                            | Yes                            |
+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+
| > **Strategy**               | Yes              | > Yes                       |                      | Yes                            | Yes                            |
+------------------------------+------------------+-----------------------------+----------------------+--------------------------------+--------------------------------+

**Organizations**

+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| > Credit officers             | > Individuals in the Retail Banking Organization responsible for manual adjudication of loans.                                            |
+===============================+===========================================================================================================================================+
| > Product management          | Organization responsible for defining loan and other banking products, how those products are priced, sold and tracked for profitability. |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| > Credit risk analytics group | Organization responsible for credit risk models and the use of data to predict credit risk for customers and loan applicants.             |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| > Retail banking              | > Overall Organization focused on banking products for consumers.                                                                         |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| > Credit risk                 | Organization within the bank responsible for defining credit risk strategies and policies and providing tools for managing against these. |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

Credit officers are likely to be part of the Retail Banking organization, Credit risk analytic and Risk management are part of the Credit risk organization, although these relationships are not managed in DMN.

These organizations own decisions, make decisions and own knowledge sources as follows:

+-----------------------------------+------------------------------------------------------+-----------------------+-----------------------------+
|                                   | > **Owns Decisions**                                 | > **Makes Decisions** | > **Knowledge Sources**     |
+===================================+======================================================+=======================+=============================+
| > **Credit officers**             |                                                      | > Adjudication        | > Credit officer experience |
+-----------------------------------+------------------------------------------------------+-----------------------+-----------------------------+
| > **Credit risk analytics group** | > Application risk score                             |                       | > Credit risk analytics     |
+-----------------------------------+------------------------------------------------------+-----------------------+-----------------------------+
| > **Credit risk**                 | > Adjudication                                       |                       | > Risk management strategy  |
|                                   | >                                                    |                       |                             |
|                                   | > Bureau call type                                   |                       |                             |
|                                   | >                                                    |                       |                             |
|                                   | > Eligibility                                        |                       |                             |
|                                   | >                                                    |                       |                             |
|                                   | > Pre-bureau risk category Post-bureau risk category |                       |                             |
|                                   | >                                                    |                       |                             |
|                                   | > Routing                                            |                       |                             |
+-----------------------------------+------------------------------------------------------+-----------------------+-----------------------------+

#### Decision Services

The two decision services required by the business process model are defined against the decision model. The **Bureau Strategy Decision Service**, called by the **Decide bureau strategy** task, has output decisions {Bureau call type, Strategy}, and is shown in `\autoref{fig:_Ref231382158}`{=latex}. The **Routing Decision Service**, called by the **Decide routing** task, has output decisions {Routing}, and is shown in `\autoref{fig:_Ref231382172}`{=latex}.

![Bureau Strategy Decision Service](./media/image125.svg){#fig:_Ref231382158 width="5.0465277777777775in" height="5.99375in"}

![Routing Decision Service](./media/image127.svg){#fig:_Ref231382172 width="4.629861111111111in" height="4.607638888888889in"}

### The decision logic level

The DRG in `\autoref{fig:_Ref231381637}`{=latex} is defined in more detail in the following specifications of the value expressions associated with decisions and business knowledge models:

- The **Strategy** decision logic (`\autoref{fig:_Ref231382848}`{=latex}) defines a complete, unique-hit decision table deriving Strategy from Eligibility and Bureau call type.

- The **Bureau call type** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382862}`{=latex}) invokes the Bureau call type table, passing the output of the Pre-bureau risk category decision as the Pre-Bureau Risk Category parameter.

- The **Bureau call type table** decision logic (`\autoref{fig:_Ref231382874}`{=latex}) defines a complete, unique-hit decision table deriving Bureau Call Type from Pre-Bureau Risk Category.

- The **Eligibility** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382888}`{=latex}) invokes the Eligibility rules business knowledge model, passing Applicant data. Age as the Age parameter, the output of the Pre-bureau risk category decision as the Pre-Bureau Risk Category parameter, and the output of the Pre-bureau affordability decision as the Pre-Bureau Affordability parameter.

- The **Eligibility rules** decision logic (`\autoref{fig:_Ref231382901}`{=latex}) defines a complete, priority-ordered single hit decision table deriving Eligibility from Pre-Bureau Risk Category, Pre-Bureau Affordability and Age.

- The **Pre-bureau risk category** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382912}`{=latex}) invokes the Pre- bureau risk category table business knowledge model, passing Applicant data. ExistingCustomer as the Existing Customer parameter and the output of the Application risk score decision as the Application Risk Score parameter.

- The **Pre-bureau risk category table** decision logic (`\autoref{fig:_Ref231382932}`{=latex}) defines a complete, unique-hit decision table deriving Pre-Bureau Risk Category from Existing Customer and Application Risk Score.

- The **Application risk score** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382945}`{=latex}) invokes the Application risk score model business knowledge model, passing Applicant data. Age as the Age parameter, Applicant data. MaritalStatus as the Marital Status parameter and Applicant data. EmploymentStatus as the Employment Status parameter.

- The **Application Risk Score Model** decision logic (`\autoref{fig:_Ref231382955}`{=latex}) defines a complete, no-order multiple-hit table with aggregation, deriving Application risk score from Age, Marital Status and Employment Status, as the sum of the Partial scores of all matching rows (this is therefore a predictive scorecard represented as a decision table).

- The **Routing** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382966}`{=latex}) invokes the Routing rules business knowledge model, passing Bureau data. Bankrupt as the Bankrupt parameter, Bureau data. CreditScore as the Credit Score parameter, the output of the Post-bureau risk category decision as the Post-Bureau Risk Category parameter, and the output of the Post-bureau affordability decision as the Post-Bureau Affordability parameter. Note that if Bureau data is null (due to the THROUGH strategy bypassing the Collect bureau data task) the Bankrupt and Credit Score parameters will be null.

- The **Routing rules** decision logic (`\autoref{fig:_Ref231382978}`{=latex}) defines a complete, priority-ordered single hit decision table deriving Routing from Post-Bureau Risk Category, Post-Bureau Affordability, Bankrupt and Credit Score.

- The **Post-bureau risk category** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231382990}`{=latex}) invokes the Post- bureau risk category business knowledge model, passing Applicant data. ExistingCustomer as the Existing Customer parameter, Bureau data. CreditScore as the Credit Score parameter, and the output of the

> Application risk score decision as the Application Risk Score parameter. Note that if Bureau data is null (due to the THROUGH strategy bypassing the Collect bureau data task) the Credit Score parameter will be null.

- The **Post-bureau risk category table** decision logic (`\autoref{fig:_Ref231383014}`{=latex}) defines a complete, unique-hit decision table deriving Post-Bureau Risk Category from Existing Customer, Application Risk Score and Credit Score.

- The **Pre-bureau affordability** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231383027}`{=latex}) invokes the Affordability calculation business knowledge model, passing Applicant data. Monthly. Income as the Monthly Income parameter, Applicant data. Monthly. Repayments as the Monthly Repayments parameter, Applicant data. Monthly. Expenses as the Monthly Expenses parameter, the output of the Pre-bureau risk category decision as the Risk Category parameter, and the output of the Required monthly installment decision as the Required Monthly Installment parameter.

- The **Post-bureau affordability** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231383037}`{=latex}) invokes the Affordability calculation business knowledge model, passing Applicant data. Monthly. Income as the Monthly

> Income parameter, Applicant data. Monthly. Repayments as the Monthly Repayments parameter, Applicant data. Monthly. Expenses as the Monthly Expenses parameter, the output of the Post-bureau risk category decision as the Risk Category parameter, and the output of the Required monthly installment decision as the Required Monthly Installment parameter.

- The **Affordability calculation** decision logic (`\autoref{fig:_Ref231383050}`{=latex}) defines a boxed function deriving Affordability from Monthly Income, Monthly Repayments, Monthly Expenses and Required Monthly Installment. One step in this calculation derives Credit contingency factor by invoking the Credit contingency factor table business knowledge model, passing the output of the Risk category decision as the Risk Category parameter.

- The **Credit contingency factor table** decision logic (`\autoref{fig:_Ref231383061}`{=latex}) defines a complete, unique-hit decision table deriving Credit contingency factor from Risk Category.

- The **Required monthly installment** decision logic (shown as a boxed invocation in `\autoref{fig:_Ref231383072}`{=latex}) invokes the Installment calculation business knowledge model, passing Requested product. ProductType as the Product Type parameter, Requested product. Rate as the Rate parameter, Requested product. Term as the Term parameter and Requested product. Amount as the Amount parameter.

- The **Installment calculation** decision logic (`\autoref{fig:_Ref231383087}`{=latex}) defines a boxed function deriving monthly installment from Product Type, Rate, Term and Amount. One step in this calculation invokes an external function PMT, imported from a DMN XML file as "Financial". `\autoref{fig:_Ref231383111}`{=latex} shows the decision logic of PMT function.

- 

![Strategy decision logic](./media/image128.jpeg){#fig:_Ref231382848 width="5.374305555555556in" height="3.051388888888889in"}

![Bureau call type decision logic](./media/image129.jpeg){#fig:_Ref231382862 alt="Chart, treemap chart Description automatically generated" width="4.801388888888889in" height="1.5in"}

![Bureau call type table decision logic](./media/image130.jpeg){#fig:_Ref231382874 alt="Table Description automatically generated" width="4.75in" height="2.901388888888889in"}

![Eligibility decision logic](./media/image131.jpeg){#fig:_Ref231382888 alt="Table Description automatically generated" width="4.520833333333333in" height="2.3784722222222223in"}

![Eligibility rules decision logic](./media/image132.jpeg){#fig:_Ref231382901 alt="Table Description automatically generated" width="6.055555555555555in" height="2.9256944444444444in"}

![Pre-bureau risk category decision logic](./media/image133.jpeg){#fig:_Ref231382912 alt="Table, treemap chart Description automatically generated with medium confidence" width="4.541666666666667in" height="1.8902777777777777in"}

![Pre-bureau risk category table decision logic](./media/image134.jpeg){#fig:_Ref231382932 alt="Table Description automatically generated" width="5.770833333333333in" height="5.028472222222222in"}

![Application risk score decision logic](./media/image135.jpeg){#fig:_Ref231382945 alt="Table Description automatically generated" width="4.874305555555556in" height="2.551388888888889in"}

![Application risk score model decision logic](./media/image136.jpeg){#fig:_Ref231382955 alt="Table Description automatically generated" width="6.676388888888889in" height="7.405555555555556in"}

![Routing decision logic](./media/image137.jpeg){#fig:_Ref231382966 alt="Table Description automatically generated" width="4.811805555555556in" height="3.0625in"}

![Routing rules decision logic](./media/image138.jpeg){#fig:_Ref231382978 alt="Table Description automatically generated" width="6.383333333333334in" height="2.9555555555555557in"}

![Post-bureau risk category decision logic](./media/image139.jpeg){#fig:_Ref231382990 alt="Table Description automatically generated" width="4.853472222222222in" height="2.53125in"}

![Post-bureau risk category table decision logic](./media/image140.jpeg){#fig:_Ref231383014 alt="Table Description automatically generated" width="6.772222222222222in" height="7.855555555555555in"}

![Pre-bureau affordability decision logic](./media/image141.jpeg){#fig:_Ref231383027 alt="Table Description automatically generated" width="4.957638888888889in" height="3.5416666666666665in"}

![Post-bureau affordability decision logic](./media/image142.jpeg){#fig:_Ref231383037 alt="Table Description automatically generated" width="4.968055555555556in" height="3.551388888888889in"}

![Affordability calculation decision logic](./media/image143.jpeg){#fig:_Ref231383050 alt="Graphical user interface, application, table Description automatically generated" width="6.772222222222222in" height="3.359722222222222in"}

![Credit contingency factor table decision logic](./media/image144.jpeg){#fig:_Ref231383061 alt="Table Description automatically generated" width="5.551388888888889in" height="3.0722222222222224in"}

![Required monthly installment decision logic](./media/image145.jpeg){#fig:_Ref231383072 alt="Table Description automatically generated" width="4.801388888888889in" height="3.051388888888889in"}

![Installment calculation decision logic](./media/image146.jpeg){#fig:_Ref231383087 alt="Table Description automatically generated" width="5.249305555555556in" height="3.3430555555555554in"}

![Financial.PMT decision logic](./media/image147.jpeg){#fig:_Ref231383111 alt="Graphical user interface, application Description automatically generated" width="4.822222222222222in" height="1.7083333333333333in"}

### Executing the Decision Model 

In order to execute a decision model (in this case, by calling two decision services), case data must be bound to the input data, much as an invocation binds arguments to function parameters. The binding of case data to input data, however, is not part of the decision model, unlike the invocation that specifies how a decision's requirement inputs bind to the parameters of that decision's required knowledge.

FEEL allows contexts and other expressions to be used to represent case data (see also clauses and [10.6.1](#context-2)). Input data is associated with an item definition (clause [7.3.2](#unarytests-metamodel)) and the case data must have the same type and other constraints specified by the item definition. Case data must be mapped to the FEEL domain. For example, XML instance data is mapped to the FEEL domain as described in clause [10.3.3](#xml-data).

For convenience, we will specify case data using boxed expressions instead of XML. `\autoref{fig:_Ref231383356}`{=latex}, `\autoref{fig:_Ref231383388}`{=latex}, and `\autoref{fig:_Ref231383402}`{=latex} show boxed contexts defining case data for Applicant data, Requested product and Bureau data.

![Applicant data input data sample](./media/image148.jpeg){#fig:_Ref231383356 alt="Table Description automatically generated" width="3.7840277777777778in" height="4.05625in"}

**\**

![Requested Product input data sample](./media/image149.jpeg){#fig:_Ref231383388 width="3.90625in" height="1.5104166666666667in"}

![Bureau Data input data sample](./media/image150.jpeg){#fig:_Ref231383402 alt="Chart, treemap chart Description automatically generated" width="3.895138888888889in" height="0.9895833333333334in"}

When the Bureau Strategy Decision Service is called with the Applicant data and Requested product case data, it returns the context shown in `\autoref{fig:_Ref231383419}`{=latex}:

![Output of the Bureau Strategy Decision Service](./media/image151.jpeg){#fig:_Ref231383419 width="3.895138888888889in" height="0.4791666666666667in"}

When the Routing Decision Service is called with the Applicant data, Requested product and Bureau data case data, it returns the context shown in `\autoref{fig:_Ref231383433}`{=latex}.

![Output of the Routing decision Service](./media/image152.jpeg){#fig:_Ref231383433 alt="Table Description automatically generated" width="3.90625in" height="2.53125in"}

## Example 2: Ranked Loan Products

The second example considers eligibility for various mortgage loan products based on the Borrower's income, assets, liabilities, and credit score, and ranks them based on specified sort criteria. It illustrates the wide variety of DMN expression types, including context, invocation, relation, and function definition, as well as some of the newer FEEL functions and operators, including import, service invocation, enhanced iteration, generalized unary tests, and Java binding. The logic represented here is just one of many different ways to model the scenario.

The DRD for the decision model is shown in `\autoref{fig:_Ref231384069}`{=latex}.

![DRD for Recommended Loan Products](./media/image154.svg){#fig:_Ref231384069 width="6.811111111111111in" height="3.640972222222222in"}

The input data elements include:

- **Credit Score**, a number from 300 to 850 inclusive

- **Down Payment**, a number

- **Property**, a structure of type *tProperty* (`\autoref{fig:_Ref231384086}`{=latex})

- **Borrower**, a structure of type *tBorrower* (`\autoref{fig:_Ref231384132}`{=latex}), and

- **Lender Ratings,** a structure of type *tLenderRatings* (`\autoref{fig:_Ref231384143}`{=latex})

The boxed expression format for the datatype definitions in `\autoref{fig:_Ref231384086}`{=latex}, `\autoref{fig:_Ref231384132}`{=latex}, and `\autoref{fig:_Ref231384143}`{=latex}is non- normative. `\autoref{fig:_Ref231384086}`{=latex}, for example, is a visualization of the XML representation of `\autoref{fig:_Ref231384096}`{=latex}.

![Type tProperty (non-normative representation)](./media/image155.jpeg){#fig:_Ref231384086 width="4.875694444444444in" height="3.229861111111111in"}

![Type tProperty (XML representation)](./media/image156.jpeg){#fig:_Ref231384096 alt="Table Description automatically generated with medium confidence" width="6.772222222222222in" height="4.893055555555556in"}

![Type tBorrower](./media/image157.jpeg){#fig:_Ref231384132 alt="Graphical user interface, application Description automatically generated" width="6.430555555555555in" height="4.479166666666667in"}

![Type tLenderRatings, a collection of tLenderRating](./media/image158.jpeg){#fig:_Ref231384143 alt="Graphical user interface, application Description automatically generated" width="3.792361111111111in" height="0.78125in"}

In addition, the zero-input decision Loan Products, a structure of type tLoanProducts, is a relation (`\autoref{fig:_Ref231384230}`{=latex}). Cells in a relation are FEEL expressions but often contain literal values as a way to embed static data tables inside a decision model. In this case it represents a list of mortgage loan products available from various lenders, specifying the best interest rate offered to lowest risk borrowers and loan origination costs specified as "points", a percentage of the loan amount, and "fees", a constant value.

![Loan Products](./media/image159.png){#fig:_Ref231384230 width="6.772222222222222in" height="2.834722222222222in"}

![Type tLoanProducts, a collection of tLoanProduct](./media/image160.jpeg){#fig:auto-26 alt="Graphical user interface, text, application, email Description automatically generated" width="6.772222222222222in" height="2.8819444444444446in"}

The **Recommended Loan Products** model imports another decision model **Loan Info**, with the DRD shown in `\autoref{fig:_Ref231384289}`{=latex}, defining a decision service **Loan Info Service**. Imported models are assigned a modeler-chosen prefix, here *Services*, to distinguish its namespace from that of the importing model. In the importing DRD (`\autoref{fig:_Ref231384069}`{=latex}), the imported service **Services.Loan Info Service** is depicted with the non-normative lock icon, indicating that its logic may not be edited within the importing model. The service parameters are the input data shown in `\autoref{fig:_Ref231384289}`{=latex}: **Credit Score, Property, Loan Product,** and **Down Payment**, with types identical to those defined in the importing model.

**Services**.**Loan Info Service** populates a row of the decision **Loan Info Table**, a collection of type **tLoanInfoRow** (`\autoref{fig:_Ref231384230}`{=latex}), calculating the details of the selected loan product for the given property value (purchase price) and down payment.

![DRD of imported Loan Info Service](./media/image162.svg){#fig:_Ref231384289 width="5.9840277777777775in" height="3.209722222222222in"}

![Type tLoanInfoTable, a collection of tLoanInfoRow](./media/image163.jpeg){#fig:auto-27 alt="Table Description automatically generated with medium confidence" width="6.499305555555556in" height="5.16875in"}

![Loan Data](./media/image164.jpeg){#fig:_Ref231384362 alt="Table Description automatically generated" width="6.772222222222222in" height="7.648611111111111in"}

Within the service, **Loan Data** performs calculations used in the presentation decision, **Loan Info**. It is modeled as a context with no final result box, meaning every context entry creates a component of the result. (The text "Result" in the final result box is a tool artifact not in the spec, overwritten by a literal expression if the context has a final result box value.) A few things to note about the logic shown in `\autoref{fig:_Ref231384362}`{=latex}:

- FEEL arithmetic can create values with many digits following the decimal point. The function decimal(x, 2) rounds value x to 2 decimal places.

- Context entry Interest Rate Percent invokes the BKM **Rate Adjustment** (`\autoref{fig:_Ref231384381}`{=latex}), a function of the borrower's **Credit Score** and the loan-to-value ratio **LTV**. This increments the Loan Product's interest rate by a small amount based on the loan risk.

- **Credit Score** values less than 620 are ineligible for a loan. In that case, **Rate Adjustment** could return null, but then all expressions using **Rate Adjustment** would also be null, complicating the logic. To simplify the downstream logic, it is better in this case to return a number, since ultimately the loan will not be approved if the **Credit Score** is less than 620.

- For loans with variable interest rate, the debt-to-income ratio uses a *Qualifying Payment* amount based on an interest rate 2 percent higher than the rate used in the initial *Monthly Payment*.

- *Monthly Payment* and *Qualifying Payment* are modeled as boxed invocations of the BKM **payment**, the amortization formula (`\autoref{fig:_Ref231384396}`{=latex}). The parameters of payment are the loan amount *p*, the interest rate *r*, and the term in months, *n*.

The decision **Loan Info** (`\autoref{fig:_Ref231384410}`{=latex}), the output of **Services.Loan Info**, returns a row of **Loan Info Table**. It is also modeled as a context with no final result box, meaning each context entry represents a column of **Loan Info Table.**

![BKM Rate Adjustment](./media/image165.jpeg){#fig:_Ref231384381 alt="Table Description automatically generated" width="3.798611111111111in" height="7.263888888888889in"}

![BKM payment](./media/image166.jpeg){#fig:_Ref231384396 alt="Graphical user interface, text, application Description automatically generated" width="3.0006944444444446in" height="1.5520833333333333in"}

![Loan Info](./media/image167.jpeg){#fig:_Ref231384410 alt="Table Description automatically generated with medium confidence" width="4.590277777777778in" height="7.291666666666667in"}

In the importing model, the decision **Loan Info Table** (`\autoref{fig:_Ref231384432}`{=latex}) iterates invocation of **Loan Info** over rows of **Loan Products.** It is modeled as a literal expression using the FEEL *for. . in. .return* operator. Here *x* is a range variable meaning one item in a list -- one **Loan Product** in **Loan Products** -- producing an argument of the function call.

![Loan Info Table](./media/image168.jpeg){#fig:_Ref231384432 alt="Graphical user interface, text, application, email Description automatically generated" width="6.209027777777778in" height="1.25in"}

**Loan Info Table** now provides values for each **Loan Product** used to determine whether the Borrower's income, assets, liabilities, and credit score qualify for loan approval.

At the heart of the logic for determining eligibility for a particular loan is the BKM **Min Credit Score** (`\autoref{fig:_Ref231384445}`{=latex}), a decision table that calculates the minimum credit score required based on three parameters: *DTI*, the borrower's debt-toincome ratio; *LTV,* the loan-to-value ratio; and *Reserves*, a measure of the Borrower's liquid assets after closing in units of monthly *Housing Costs*. The table is modeled as hit policy *Collect* with aggregation *Minimum*, meaning when multiple rules match the lowest value output is returned. When *DTI* is greater than 95%, the loan is automatically ineligible. In that case, no rule matches and **Min Credit Score** returns the value null. Downstream logic referencing this variable must account for the possibility of null value.

![Min Credit Score](./media/image169.jpeg){#fig:_Ref231384445 alt="Table Description automatically generated" width="3.7083333333333335in" height="5.180555555555555in"}

**Min Credit Score** is called by the BKM **Eligibility,** which in turn calls the BKM **Eligibility Parameters** (`\autoref{fig:_Ref231384461}`{=latex}). **Eligibility Parameters** calculates the two key parameters of **Min Credit Score**, the debt-to-income ratio *DTI Pct*, and the liquid assets after closing, called *Reserves*. Note that context entry *Housing Expense*, which sums the loan payment, tax and insurance payments, and homeowner association/condo fee, must account for the possibility that the latter is left blank, i.e., null, in the input data **Property**, since adding null to a number gives null. To prevent this, instead of the + operator we use the *sum()* function on a list filtered by the condition *item != null.* We use this technique also on context entry *Income*.

![Eligibility Parameters](./media/image170.jpeg){#fig:_Ref231384461 alt="Table Description automatically generated" width="6.772222222222222in" height="5.752777777777778in"}

For legibility, the BKM **Eligibility** is shown in two pieces (`\autoref{fig:_Ref231384475}`{=latex}and `\autoref{fig:_Ref231384483}`{=latex}). This BKM creates a row of type *tTableRow* for the decision **Eligibility Table**. It is modeled as a context, where the first four context entries (`\autoref{fig:_Ref231384483}`{=latex}) call BKMs to determine values to populate the *Table Row* components.

- *Params* calls the BKM **Eligibility Parameters** for a given **Loan Product**.

- *Required Credit Score* uses Params to call the BKM **Min Credit Score**, returning the minimum credit score required by that **Loan Product** for the Borrower to be eligible.

- *Eligible* is a Boolean comparing the Borrower's credit score to **Min Credit Score.** *Recommendation* uses the input data **Lender Ratings** in combination with **Eligible** to return a recommendation value for the **Loan Product**. *Recommendation* illustrates an alternative decision table syntax introduced in DMN 1.2 called generalized unary test. With generalized unary tests, a decision table input entry may be any FEEL expression, substituting ? for the input expression. For example, in the first column of this decision table the rules filter the **Lender Ratings** table for an item with *Lender Name* matching that of the **Loan Product** and *Customer Rating* in a specified range, returning true if that filter returns any values.

![Eligibility (top)](./media/image171.jpeg){#fig:_Ref231384475 alt="Graphical user interface, application Description automatically generated" width="6.772222222222222in" height="5.103472222222222in"}

The rest of **Eligibility** is shown in`\autoref{fig:_Ref231384483}`{=latex}.

- *Table Row* is a nested context with no final result box value. Each context entry represents a column in the row.

- The DMN spec allows the final result box to be a context, but in this example, we use a context entry to create the result value and return it in the result box. Here context entry *Table Row* creates the row structure, and the final result box simply selects this context entry.

![Eligibility (bottom)](./media/image172.jpeg){#fig:_Ref231384483 alt="Chart Description automatically generated with low confidence" width="6.772222222222222in" height="5.504861111111111in"}

The decision **Eligibility Table** (`\autoref{fig:_Ref231384550}`{=latex}) uses an alternative form of the *for. .in..return* operator to iterate over an index rather than iterate over list item values. This alterative format allows the returned expression to involve corresponding items in multiple lists, in this case **Loan Products** and **Loan Info Table**.

![Eligibility Table](./media/image173.jpeg){#fig:_Ref231384550 width="6.772222222222222in" height="1.2305555555555556in"}

The top-level decision **Recommended Loan Products** (`\autoref{fig:_Ref231384564}`{=latex}) first sorts **Eligibility Table** based on *Recommendation* and *Monthly Payment* and then calls a Java method to format number values as strings for final presentation.

![Recommended Loan Products](./media/image174.jpeg){#fig:_Ref231384564 alt="Graphical user interface, text, application Description automatically generated" width="6.553472222222222in" height="3.354861111111111in"}

- The first context entry *precedes* is a function definition used by the FEEL *sort()* function. The second parameter of *sort()*, called the *precedes function*, is a Boolean function with two arguments representing list items. It returns true if the first argument precedes the second in the sorted list.

- The context entry *Sorted Table* performs the sort. With simple sort criteria, the precedes function is typically defined inline as an anonymous function using the keyword *function*, as in

> sort(myTable, function(x, y) x.Amount \< y.Amount)
>
> which sorts the rows of *myTable* in ascending order of the column *Amount*. However, in **Recommended Loan Products** we instead use a named precedes function, the context entry *precedes*. In that case, the name of the function provides the second argument of *sort().*

- The final result box iterates a call to the BKM **Format Row**, which executes a static Java method to format number values in *Sorted Table* as strings with a currency symbol and two digits following the decimal point.

**Format Row** (`\autoref{fig:_Ref231384593}`{=latex}) operates on a single row of *Sorted Table*. It is modeled as a context.

- The first context entry *string format* is a Java function definition, indicated by the code J. DMN specifies such a function definition as a context with two context entries, *class,* and *method signature*. This example applies a mask string to a number, returning a formatted number string.

- The second context entry *formatted row* generates a row of **Recommended Loan Products** in final presentation format, calling *string format* to format amount and percent values.

- The final result box returns *formatted row*.

![Format Row](./media/image175.jpeg){#fig:_Ref231384593 alt="Graphical user interface Description automatically generated with medium confidence" width="6.772222222222222in" height="6.277083333333334in"}

`\autoref{fig:_Ref231384606}`{=latex} shows the output of **Recommended Loan Products** based on the Test Case input data of `\autoref{fig:_Ref231384620}`{=latex}.

![Test Case output of Recommended Loan Products](./media/image176.jpeg){#fig:_Ref231384606 alt="Table Description automatically generated" width="5.531944444444444in" height="5.479861111111111in"}

![](./media/image177.jpeg)

![Test Case Input Data (partial)](./media/image179.jpeg){#fig:_Ref231384620 alt="Table Description automatically generated" width="3.454861111111111in" height="2.76875in"}

This page intentionally left blank.

# Exchange Formats

## Interchanging Incomplete Models

It is common for **DMN** models to be interchanged before they are complete. This occurs frequently when doing iterative modeling, where one user (such as a knowledge source expert or business user) first defines a high-level model and then passes it on to another person to complete or refine the model.

Such \"incomplete\" models are ones in which not all of the mandatory model attributes have been filled in yet or the cardinality of the lower bound of attributes and associations has not been satisfied.

XMI allows for the interchange of such incomplete models. In **DMN**, we extend this capability to interchange of XML files based on the **DMN** XML-Schema. In such XML files, implementers are expected to support this interchange by:

- Disregarding missing attributes that are marked as \"required\" in the **DMN** XML-Schema.

- Reducing the lower bound of elements with \"minOccurs\" greater than 0.

## Machine Readable Files

All machine-readable files, including XSD, XMI and XML files, can be found at <https://www.omg.org/spec/DMN>.

- For the **DMN** XMI Model, the main file is DMN.xmi.

- For the **DMN** XSD Interchange (supporting Conformance Levels 1, 2 and 3), the main file is DMN.xsd.

- XML serializations of the examples in clause [12](#dmn-examples) are provided as a non-normative zip file.

## XSD

### Document Structure

A domain-specific set of model elements is interchanged in one or more **DMN** files. The root element of each file SHALL be \<DMN**:** Definitions\>. The set of files SHALL be self-contained, i.e., all definitions that are used in a file SHALL be imported directly or indirectly using the \<DMN**:** Import\> element.

Each file SHALL declare a "name space" that MAY differ between multiple files of one model.

**DMN** files MAY import non-**DMN** files (such as XSDs and PMMLs) if the contained elements use external definitions.

Starting from DMN 1.7, the XML namespace URIs for backwards-compatible 1.x versions of DMN are fixed at:

- <https://www.omg.org/spec/DMN/> for the semantic model

- <https://www.omg.org/spec/DMN/DMNDI/> for the diagram interchange model

- <https://www.omg.org/spec/DMN/FEEL/> for the FEEL expression language

- <https://www.omg.org/spec/DMN/B-FEEL/> for the B-FEEL expression language

The \<dmn:definitions\> root element of a DMN XML file MUST indicate the concrete DMN version that is used in the file by setting the dmnVersion attribute, e.g.:

\<dmn:definitions dmnVersion=\"1.7\" \...

In addition, the \<dmn:definitions\> root element SHOULD include an xsi:schemaLocation attribute that points to the XML schema files for all namespaces, i.e. the URLs of the XSDs that are publicly hosted by OMG without dated version stamps, e.g.

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

Many **DMN** elements that may need to be referenced contain IDs and within the **BPMN** XSD, references to elements are expressed via these IDs. The XSD IDREF type is the traditional mechanism for referencing by IDs, however it can only reference an element within the same file. **DMN** elements of type DMNElementReference support referencing by ID, across files, by utilizing an href attribute whose value must be a valid URI reference \[RFC 3986\] where the path components may be absolute, the reference has no query component, and the fragment consists of the value of the id of the referenced **DMN** element.

For example, consider the following Decision:

\<decision name=\"Pre-Bureau Risk Category\" id=\"prebureauriskDec01\"\>\...\</decision\>

When this Decision is referenced, e.g., by an InformationRequirement in a Decision that is defined in another file, the reference could take the following form:\
\<requiredDecision href="<http://www.example.org/Definitions01#prebureauriskDec01>"/\>\
where "<http://www.example.org/Definitions01>" is a URI representing the namespace of the model specified in the DMN file. When the Decision is referenced in the same file, the reference could take both of the following forms: \<requiredDecision href="http://www.example.org/Definitions01.xml#prebureauriskDec01"/\> or \<requiredDecision href="#prebureauriskDec01"/\>

Notice that the **BPMN** processes and tasks that use a decision are referenced using the href attribute as well:

indeed, it is compatible with the system to reference external Process and Task instances in **BPMN 2.0** Definitions, which is also based on IDs.

Attribute typeRef references ItemDefinitions and built-in types by name not ID. In order to support imported types, typeRef uses the namespace-qualified name syntax \[qualifer\].\[local-name\], where qualifier is specified by the name attribute of the Import element for the imported type. If the referenced type is not imported, the prefix SHALL be omitted.

This page intentionally left blank

# DMN Diagram Interchange (DMN DI)

## Scope

This chapter specifies the meta-model and schema for **DMN** Diagram Interchange (**DMN DI**). The **DMN DI** is meant to facilitate the interchange of **DMN** diagrams between tools rather than being used for internal diagram representation by the tools. The simplest interchange approach to ensure the unambiguous rendering of a **DMN** diagram was chosen for **DMN DI**. As such, **DMN DI** does not aim to preserve or interchange any "tool smarts" between the source and target tools (e.g., layout smarts, efficient styling, etc.).

**DMN DI** does not ascertain that the **DMN** diagram is syntactically or semantically correct.

This version of DMN DI focuses on the interchange of Decision Requirements Diagrams (DRDs). Diagram Interchange for boxed expressions and decision tables might be added in future versions.

## Diagram Definition and Interchange

The **DMN DI** meta-model, similar to the DMN abstract syntax meta-model, is defined as a MOF-based meta-model. As such, its instances can be serialized and interchanged using XMI. DMN DI is also defined by an XML schema. Thus, its instances can also be serialized and interchanged using XML.

Both DMN DI meta-model and schema are harmonized with the OMG Diagram Definition (DD) standard version 1.1. The referenced DD contains two main parts: the Diagram Commons (DC) and the Diagram Interchange (DI). The DC defines common types like bounds and points, while the DI provides a framework for defining domain-specific diagram models. As a domain-specific DI, DMN DI defines a few new meta-model classes that derive from the abstract classes from DI.

The focus of DMN DI is the interchange of laid out shapes and edges that constitute a **DMN** diagram. Each shape and edge reference a particular **DMN** model element. The referenced **DMN** model elements are all part of the actual **DMN** model. As such, DMN DI is meant to only contain information that is neither present nor derivable, from the **DMN** model whenever possible. Simply put, to render a **DMN** diagram both the DMN DI instance(s) and the referenced **DMN** model are REQUIRED.

From the DMN DI perspective, a DMN diagram is a particular snapshot of a **DMN** model at a certain point in time. Multiple **DMN** diagrams can be exchanged referencing model elements from the same **DMN** model. Each diagram may provide an incomplete or partial depiction of the content of the **DMN** model. As described in clause 12, a **DMN** model package consists of one or more files. Each file may contain any number of **DMN** diagrams. The exporting tool is free to decide how many diagrams are exported and the importing tool is free to decide if and how to present the contained diagrams to the user.

## How to read this chapter

Clause [14.4](#dmn-diagram-interchange-meta-model) describes in detail the meta-model used to keep the layout and the look of **DMN** Diagrams. Clause [14.5](#notation-depiction-library-and-abstract-element-resolutions) presents in tables a library of the **DMN** element depictions and an unambiguous resolution between a referenced **DMN** model element and its depiction.

## DMN Diagram Interchange Meta-Model

### Overview

The DMN DI is an instance of the OMG DI meta-model. The basic concept of DMN DI, as with DI in general, is that serializing a diagram \[DMNDiagram\] for interchange requires the specification of a collection of shapes \[DMNShape\] and edges \[DMNEdge\].

The DMN DI classes only define the visual properties used for depiction. All other properties that are REQUIRED for the unambiguous depiction of the **DMN** element are derived from the referenced **DMN** element \[dmnElementRef\].

**DMN** diagrams may be an incomplete or partial depiction of the content of the **DMN** model. Some **DMN** elements from a **DMN** model may not be present in any of the diagram instances being interchanged.

DMN DI does not directly provide for any containment concept. The DMNDiagram is an ordered collection of mixed DMNShape(s) and DMNEdge(s). The order of the DMNShape(s) and DMNEdge(s) inside a DMNDiagram determines their Z-order (i.e., what is in front of what). DMNShape(s) and DMNEdge(s) that are meant to be depicted "on top" of other DMNShape(s) and DMNEdge(s) MUST appear after them in the DMNDiagram. Thus, the exporting tool MUST order all DMNShape(s) and DMNEdge(s) such that the desired depiction can be rendered.Measurement UnitAs per OMG DD, all coordinates and lengths defined by DMN DI are assumed to be in user units, except when specified otherwise. A user unit is a value in the user coordinate system, which initially (before any transformation is applied) aligns with the device's coordinate system (for example, a pixel grid of a display). A user unit, therefore, represents a logical rather than physical measurement unit. Since some applications might specify a physical dimension for a diagram as well (mainly for printing purposes), a mapping from a user unit to a physical unit can be specified as a diagram's resolution. Inch is chosen in this specification to avoid variability, but tools can easily convert from/to other preferred physical units. Resolution specifies how many user units fit within one physical unit (for example, a resolution of 300 specifies that 300 user units fit within 1 inch on the device).

### DMNDI \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑57: DMNDI](./media/image180.jpeg){alt="Diagram Description automatically generated" width="3.9305555555555554in" height="2.638888888888889in"}

The class DMNDI is a container for the shared DMNStyle and all the DMNDiagram defined in a Definitions.

+--------------------------------------+-------------------------------------------------------------------------------------------+
| > **Attribute**                      | > **Description**                                                                         |
+======================================+===========================================================================================+
| > **styles**: DMNStyle \[0..\*\]     | A list of shared DMNStyle that can be referenced by all DMNDiagram and DMNDiagramElement. |
+--------------------------------------+-------------------------------------------------------------------------------------------+
| > **diagrams**: DMNDiagram \[0..\*\] | > A list of DMNDiagram.                                                                   |
+--------------------------------------+-------------------------------------------------------------------------------------------+

: DMNDI attributes `\label{tbl:auto-54}`{=latex}

### DMNDiagram \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑58: DMNDiagram](./media/image182.svg){width="6.770833333333333in" height="4.322916666666667in"}

The class DMNDiagram specializes DI::Diagram. It is a kind of Diagram that represents a depiction of all or part of a **DMN** model.

DMNDiagram is the container of DMNDiagramElement (DMNShape(s) and DMNEdge(s)). DMNDiagram cannot include other DMNDiagram.

A DMNDiagram can define a DMNStyle locally and/or it can refer to a shared one defined in the DMNDI. Properties defined in the local style overrides the one in the referenced shared style. That combined style (shared and local) is the default style for all the DMNDiagramElement contained in this DMNDiagram.

The DMNDiagram class represents a two-dimensional surface with an origin of (0, 0) at the top left corner. This means that the x and y axes have increasing coordinates to the right and bottom. Only positive coordinates are allowed for diagram elements that are nested in a DMNDiagram.

The DMNDiagram has the following attributes.

+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **Attribute**                                      | > **Description**                                                                                                                                                                                               |
+======================================================+=================================================================================================================================================================================================================+
| > **name**: String                                   | > The name of the diagram. Default is empty String.                                                                                                                                                             |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **documentation**: String                          | > The documentation of the diagram. Default is empty String.                                                                                                                                                    |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **resolution**: Real                               | The resolution of the diagram expressed in user units per inch. Default is                                                                                                                                      |
|                                                      |                                                                                                                                                                                                                 |
|                                                      | 300                                                                                                                                                                                                             |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **diagramElements**:                               | A list of DMNDiagramElement (DMNShape and DMNEdge) that are depicted in this diagram.                                                                                                                           |
| >                                                    |                                                                                                                                                                                                                 |
| > DMNDiagramElement \[0..\*\]                        |                                                                                                                                                                                                                 |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **useAlternativeInputDataShape:** Boolean \[0..1\] | If the DMNShape depicts an Input Data element then it is represented either using the paper sheet symbol, harmonized with BPMN and CMMN notations (true) or using the backwards compatible oval symbol (false). |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **sharedStyle**: DMNStyle\[0.. 1\]                 | A reference to a DMNStyle defined in the DMNDI that serves as the default styling of the DMNDiagramElement in this DMNDiagram.                                                                                  |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **localStyle**: DMNStyle \[0..1\]                  | A DMNStyle that defines the default styling for this diagram. Properties defined in that style override the ones in the sharedStyle.                                                                            |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **size**: DC::Dimens ion \[0..1\]                  | > The size of this diagram. If not specified, the DMNDiagram is unbounded.                                                                                                                                      |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: DMNDiagram attributes `\label{tbl:auto-28}`{=latex}

### DMNDiagramElement \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑59: DMNDiagramElement](./media/image184.svg){width="6.336111111111111in" height="2.928472222222222in"}

The DMNDiagramElement class is contained by the DMNDiagram and is the base class for DMNShape and DMNEdge.

DMNDiagramElement inherits its styling from its parent DMNDiagram. In addition, it can refer to one of the shared DMNStyle defined in the DMNDI and/or it can define a local style. See clause 13.4.9 for more details on styling.

DMNDiagramElement MAY also contain a DMNLabel when it has a visible text label. If no DMNLabel is defined, the DMNDiagramElement should be depicted without a label.

DMNDiagramElement has the following attributes:

+---------------------------------------+------------------------------------------------------------------+
| > **Attribute**                       | **Description**                                                  |
+=======================================+==================================================================+
| > **dmnElementRef**: DMNElement \[1\] | A reference to the DMNElement that is being depicted.            |
+---------------------------------------+------------------------------------------------------------------+
| > **sharedStyle**: DMNStyle \[0..1\]  | A reference to a DMNStyle defined in the DMNDI.                  |
+---------------------------------------+------------------------------------------------------------------+
| > **localStyle**: DMNStyle \[0..1\]   | A DMNStyle that defines the styling for this element.            |
+---------------------------------------+------------------------------------------------------------------+
| > **label**: DMNLabel \[0.. 1\]       | An optional label when this DMNElement has a visible text label. |
+---------------------------------------+------------------------------------------------------------------+

: DMNDiagramElement attributes `\label{tbl:auto-29}`{=latex}

### DMNShape \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑60: DMNShape](./media/image185.jpeg){alt="Diagram Description automatically generated" width="6.713888888888889in" height="2.5305555555555554in"}

The DMNShape class specializes DI::Shape and DMNDiagramElement. It is a kind of Shape that depicts a DMNElement from the DMN model.

DMNShape represents a Decision, a Business Knowledge Model, an Input Data element, a Knowledge Source, a Decision Service or a Text Annotation that is depicted on the diagram.

DMNShape has three additional properties (isListedInputData, isCollapsed and decisionServiceDividerLine) that are used to further specify the appearance of some shapes that cannot be deduced from the DMN model.

DMNShape extends DI::Shape and DMNDiagramElement and has the following attributes:

+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **Attribute**                            | > **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+============================================+============================================================================================================================================================================================================================================================================================================================================================================================================================================================================+
| > **bounds**: DC::Bounds \[1\]             | The Bounds of the shape relative to the origin of its parent DMNDiagram. The Bounds MUST be specified.                                                                                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **dmnElementRef**: DMNElement \[1\]      | A reference to a Decision, a Business Knowledge Model, an Input Data element, a Knowledge Source, a Decision Service, a Group or a Text Annotation MUST be specified.                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **isListedInputData**: Boolean \[0..1\]  | If the DMNShape depicts an Input Data element then this attribute is used to determine if the Input Data is listed on the Decision element (true) or drawn as separate notational elements in the DRD (false).                                                                                                                                                                                                                                                             |
+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **decisionServiceDividerLine**:            | If the DMNShape depicts a Decision Service, this attribute references a DMNDecisionServiceDividerLine which is a DI::Edge that defines s where the DMNShape is divided into two parts by a straight solid line. This can be the case when a DMNShape depicts a Decision Service, where the set of output decisions is smaller than the set of encapsulated decisions. The start and end waypoints of the decisionServiceDividerLine MUST be on the border of the DMNShape. |
|                                            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| DMNDecisionServiceDividerLine \[0..1\]     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **isCollapsed** Boolean \[0..1\] = false | If the DMNShape depicts a DecisionService, this attribute indicates if it should be depicted expanded (false) or collapsed (true). Default is false.                                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: DMNShape attributes `\label{tbl:auto-55}`{=latex}

### DMNEdge \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑61: DMNEdge](./media/image187.svg){width="6.772222222222222in" height="1.8944444444444444in"}

The DMNEdge class specializes DI::Edge and DMNDiagramElement. It is a kind of Edge that can depict a relationship between two **DMN** model elements.

DMNEdge are used to depict Requirements or Associations in the **DMN** model. Since DMNDiagramElement might be depicted more than once, sourceElement and targetElement attributes allow to determine to which depiction a

DMNEdge is connected. When DMNEdge has a source, its sourceModelElement MUST refer to the

DMNDiagramElement it starts from. That DMNDiagramElement MUST resolved to the DMNElement that is the actual source of the Requirement or Association. For Requirement, this is the required DMNElement. When it has a target, its targetModelElement MUST refer to the DMNDiagramElement where it ends. That

DMNDiagramElement MUST resolved to the DMNElement that is the actual target of the Requirement or Association. For Requirement, this is the DMNElement holding it.

DMNEdge extends DI::Edge and has the following properties:

+-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **Attribute**                                 | > **Description**                                                                                                                                                      |
+=================================================+========================================================================================================================================================================+
| > **wayPoints**: DC::Point \[2..\*\]            | A list of points relative to the origin of its parent DMNDiagram that specifies the connected line segments of the edge. At least two (2) waypoints MUST be specified. |
+-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **dmnElementRef**: DMNElement \[1\]           | A reference to an InformationRequirement, KnowledgeRequirement, AuthorityRequirement or Association.                                                                   |
+-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **sourceElement**:                              | The actual DMNDiagramElement this DMNEdge is connecting from. MUST be specified when the DMNEdge has a source.                                                         |
|                                                 |                                                                                                                                                                        |
| DMNDiagramElement\[0.. 1\]                      |                                                                                                                                                                        |
+-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **targetElement**: DMNDiagramElement\[0.. 1\] | The actual DMNDiagramElement this DMNEdge is connecting to. MUST be specified when the DMNEdge has a target.                                                           |
+-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: DMNEdge attributes `\label{tbl:auto-30}`{=latex}

### DMNLabel \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑62: DMNLabel](./media/image188.jpeg){width="3.9569444444444444in" height="2.873611111111111in"}

DMNLabel represents the depiction of some textual information about a DMN element.

A DMN label is not a top-level element but is always nested inside either a DMNShape or a DMNEdge. It does not have its own reference to a **DMN** element but rather inherits that reference from its parent DMNShape or DMNEdge. The textual information depicted by the label is derived from the name attribute of the referenced DMNElement.

DMNLabel extends DI::Shape and has the following properties:

+-------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| > **Attribute**               | > **Description**                                                                                                            |
+===============================+==============================================================================================================================+
| > **bounds**: Bounds \[0..1\] | The bounds of the DMNLabel. When not specified, the label is positioned at its default position as determined in clause 13.5 |
+-------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| > **text**: String\[0..1\]    | An optional pretty printed text that MUST be displayed instead of the DMNElement's name if it is present.                    |
+-------------------------------+------------------------------------------------------------------------------------------------------------------------------+

: DMNLabel attributes `\label{tbl:auto-31}`{=latex}

### DMNStyle \[Class\]

![Figure DMN Diagram Interchange (DMN DI)‑63: DMNStyle](./media/image190.svg){width="4.895833333333333in" height="3.25in"}

DMNStyle specializes DC::Style. It is a kind of Style that provides appearance options for a

DMNDiagramElement.

DMNStyle is used to keep some non-normative visual attributes such as colors and font. DMN doesn't give any semantic to color and font styling, but tools can decide to use them and interchange them.

DMNDiagramElement style is calculated by percolating up DMNStyle attributes defined at a different level of the hierarchy. Each attribute is considered independently (meaning that a DMNStyle attribute can be individually overloaded). The precedence rules are as follow:

- The DMNStyle defined by the localStyle attribute of the DMNDiagramElement

- The DMNStyle referenced by the sharedStyle attribute of the DMNDiagramElement

- The DMNStyle defined by the localStyle attribute of the parent DMNDiagram

- The DMNStyle referenced by the sharedStyle attribute of the parent DMNDiagram

The default attribute value defined in `\autoref{tbl:_Ref114214842}`{=latex} (DMNStyle attributes).

For example, let's say we have the following:

- DMNDiagramElement has a local DMNStyle that specifies the fillColor and strokeColor

- Its parent DMNDiagram defines a local DMNStyle that specifies the fillColor and fontColor

Then the resulting DMNDiagramElement should use:

- The fillColor and strokeColor defined at the DMNDiagramElement level (as they are defined locally).

- The fontColor defined at the DMNDiagram level (as the fillColor was overloaded locally).

- All other DMNStyle attributes would have their default values.

DMNStyle extends DC::Style and has the following properties:

+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **Attribute**                                       | > **Description**                                                                                                                                                                                                                                               |
+=======================================================+=================================================================================================================================================================================================================================================================+
| > **id**: String \[0..1\]                             | > A unique id for this style so it can be referenced. Only styles defined in the DMNDI can be referenced by                                                                                                                                                     |
|                                                       | >                                                                                                                                                                                                                                                               |
|                                                       | > DMNDiagramElement and DMNDiagram.                                                                                                                                                                                                                             |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fillColor**: DC::Color \[0..1\]                   | > The color use to fill the shape. Doesn't apply to DMNEdge.                                                                                                                                                                                                    |
|                                                       | >                                                                                                                                                                                                                                                               |
|                                                       | > Default is white.                                                                                                                                                                                                                                             |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **strokeColor**: DC::Color \[0..1\]                 | > The color use to draw the shape borders. Default is black.                                                                                                                                                                                                    |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontColor**: DC::Color \[0..1\]                   | > The color use to write the label. Default is black.                                                                                                                                                                                                           |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontFamily**: String \[0..1\]                     | > A comma-separated list of Font Name that can be used to display the text. Default is Arial.                                                                                                                                                                   |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontSize**: Real \[0..1\]                         | > The size in points of the font to use to display the text. Default is 8.                                                                                                                                                                                      |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontItalic**: Boolean \[0..1\]                    | > If the text should be displayed in Italic. Default is false.                                                                                                                                                                                                  |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontBold**: Boolean \[0..1\]                      | > If the text should be displayed in Bold. Default is false.                                                                                                                                                                                                    |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontUnderline**: Boolean \[0..1\]                 | > If the text should be underlined. Default is false.                                                                                                                                                                                                           |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **fontStrikeThrough**: Boolean \[0..1\]             | > If the text should be stroke through. Default is false.                                                                                                                                                                                                       |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **labelHorizontalAlignment**:                         | > How text should be positioned horizontally within the Label bounds. Default depends of the DMNDiagramElement the label is attached to (see [14.5](#notation-depiction-library-and-abstract-element-resolutions)).                                             |
|                                                       |                                                                                                                                                                                                                                                                 |
| AlignmentKind \[0..1\]                                |                                                                                                                                                                                                                                                                 |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **label VerticalAlignment**: AlignmentKind \[0..1\] | > How the text should be positioned vertically inside the Label bounds. Default depends of the DMNDiagramElement the label is attached to (see [14.5](#notation-depiction-library-and-abstract-element-resolutions)). Start means "top" and end means "bottom". |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: DMNStyle attributes `\label{tbl:_Ref114214842}`{=latex}

## Notation Depiction Library and Abstract Element Resolutions

As a notation, **DMN** specifies the depiction for each of the **DMN** elements.

Serializing a **DMN** diagram for interchange requires the specification of a collection of DMNShape(s) (see [14.4.6](#dmnedge-class)) and DMNEdge(s) (see [14.4.7](#dmnlabel-class)) in the DMNDiagram (see [14.4.4](#dmndiagramelement-class)). The DMNShape(s) and DMNEdge(s) attributes must be populated in such a way as to allow the unambiguous rendering of the DMN diagram by the receiving party. More specifically, the DMNShape(s) and DMNEdge(s) MUST reference **DMN** model elements. If no DMNElement is referenced or if the reference is invalid, it is expected that this shape or edge should not be depicted.

When rendering a **DMN** diagram, the correct depiction of a DMNShape or DMNEdge depends mainly on the referenced **DMN** model element and its particular attributes and/or references. The purpose of this clause is to: provide a library of the **DMN** element depictions, and to provide an unambiguous resolution between the referenced **DMN** model element \[DMNElement\] and their depiction. Depiction resolution tables are provided below for both DMNShape (see [14.5.2](#dmnshape-resolution)) and DMNEdge (see [14.5.3](#dmnedge-resolution)).

### Labels

Both DMNShape and DMNEdge may have labels (its name attribute) placed on the shape/edge, or above or below the shape/edge, in any direction or location, depending on the preference of the modeler or modeling tool vendor.

Labels are optional for DMNShape and DMNEdge. When there is a label, the position of the label is specified by the bounds of the DMNLabel of the DMNShape or DMNEdge. Simply put, label visibility is defined by the presence of the DMNLabel element.

The bounds of the DMNLabel are optional and always relative to the containing DMNDiagram\'s origin point. The depiction resolution tables provided below exemplify default label positions if no bounds are provided for the DMNLabel (for DMNShape kinds (see [14.5.2](#dmnshape-resolution)) and DMNEdge kinds (see [14.5.3](#dmnedge-resolution))).

When the DMNLabel is contained in a DMNShape, the text to display is the name of the DMNElement.

### DMNShape Resolution

DMNShape can be used to represent a Decision, a Business Knowledge Model, an Input Data element, a Knowledge Source, a Text Annotation, a Group, and a Decision Service.

#### Decision

A Decision is represented in a DRD as a rectangle, normally drawn with solid lines. If the Listed Input Data option is exercised, all the Decisions requirements for Input Data shall be listed beneath the Decisions label and separated from it by a horizontal line. The listed Input Data names shall be clearly inside the shape of the DRD element.

+-----------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| **DMNElement**              | **DMNShape attributes**                          | **Depiction**                                                                                                                                |
+=============================+==================================================+:============================================================================================================================================:+
| Decision                    | None                                             | > ![Text, whiteboard Description automatically generated](./media/image191.jpeg){width="1.3722222222222222in" height="0.5395833333333333in"} |
+-----------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| Decision and two Input Data | Shapes of Input Data have inListedInputData=true | > ![Diagram, table Description automatically generated](./media/image192.jpeg){width="1.2638888888888888in" height="0.8409722222222222in"}   |
+-----------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution for Decision `\label{tbl:auto-32}`{=latex}

#### Business Knowledge Model

+--------------------------+-------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| **DMNElement**           | **DMNShape attributes** | **Depiction**                                                                                                                    |
+==========================+=========================+:================================================================================================================================:+
| Business Knowledge Model | None                    | > ![Text Description automatically generated](./media/image193.jpeg){width="1.2229166666666667in" height="0.4270833333333333in"} |
+--------------------------+-------------------------+----------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution for Business Knowledge Model `\label{tbl:auto-33}`{=latex}

#### Input Data Element

An Input Data element is represented in a DRD as a shape with two parallel straight sides and two semi-circular ends, normally drawn with solid lines.

+-----------------------+--------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| **DMNElement**        | **DMN Diagram attributes**           | > **Depiction**                                                                                                                   |
+=======================+======================================+:=================================================================================================================================:+
| Input Data            | None                                 | > ![Text Description automatically generated](./media/image194.jpeg){width="1.2229166666666667in" height="0.42986111111111114in"} |
|                       |                                      |                                                                                                                                   |
|                       | or                                   |                                                                                                                                   |
|                       |                                      |                                                                                                                                   |
|                       | useAlternativeInputDataShape = false |                                                                                                                                   |
+-----------------------+--------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Input Data            | useAlternativeInputDataShape = true  | > ![Shape Description automatically generated with medium confidence](./media/image16.png){width="0.84375in" height="0.9375in"}   |
+-----------------------+--------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution for Input Data `\label{tbl:auto-56}`{=latex}

#### Knowledge Source

A Knowledge Source is represented as a shape with three straight sides and one wavy one, normally drawn with solid lines.

+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **DMNElement**        | **DMNShape attributes** | > **Depiction**                                                                                                                                            |
+=======================+=========================+:==========================================================================================================================================================:+
| Knowledge Source      | None                    | > ![Diagram Description automatically generated with medium confidence](./media/image195.jpeg){width="1.1243055555555554in" height="0.7034722222222223in"} |
+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution for Knowledge Source `\label{tbl:auto-34}`{=latex}

#### Artifacts

+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **DMNElement**        | **DMNShape Attributes** | > **Depiction**                                                                                                                                            |
+=======================+=========================+============================================================================================================================================================+
| TextAnnotation        | None                    | > ![Graphical user interface, text Description automatically generated](./media/image196.jpeg){width="1.3729166666666666in" height="0.5868055555555556in"} |
+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Group                 | None                    | ![Shape Description automatically generated](./media/image197.jpeg){width="1.6222222222222222in" height="0.9555555555555556in"}                            |
+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution of Artifacts `\label{tbl:auto-35}`{=latex}

#### Decision Service

If the set of output decisions is smaller than the set of encapsulated decisions, the Decision Service shall be divided into two parts with a straight solid line.

+----------------------+----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| > **DMNElement**     | **DMNShape attributes**                      | **Depiction**                                                                                                                                          |
+======================+==============================================+========================================================================================================================================================+
| > Decision Service   | None or isCollapsed=false                    | ![Text Description automatically generated](./media/image198.jpeg){width="2.1951388888888888in" height="1.1354166666666667in"}                         |
+----------------------+----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| > Decision Service   | DecisionServiceDividerLine isCollapsed=false | ![Table Description automatically generated with medium confidence](./media/image199.jpeg){width="1.9631944444444445in" height="0.9159722222222222in"} |
+----------------------+----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| > Decision Service   | isCollapsed=true                             | > ![Text Description automatically generated](./media/image200.jpeg){width="1.3243055555555556in" height="0.5868055555555556in"}                       |
+----------------------+----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

: Depiction Resolution of Decision Service `\label{tbl:auto-36}`{=latex}

### DMNEdge Resolution

#### Information Requirement

+-------------------------+-------------------------------------------------------------------------------------------+
| **DMNElement**          | **Depiction**                                                                             |
+=========================+:=========================================================================================:+
| Information Requirement | > ![](./media/image201.jpeg){width="1.1909722222222223in" height="7.63888888888889e-2in"} |
+-------------------------+-------------------------------------------------------------------------------------------+

: Depiction Resolution of Information Requirement `\label{tbl:auto-57}`{=latex}

#### Knowledge Requirement

+-----------------------+-------------------------------------------------------------------------------------------+
| **DMNElement**        | **Depiction**                                                                             |
+=======================+:=========================================================================================:+
| Knowledge Requirement | > ![](./media/image202.jpeg){width="1.2034722222222223in" height="0.10694444444444444in"} |
+-----------------------+-------------------------------------------------------------------------------------------+

: Depiction Resolution of Knowledge Requirement `\label{tbl:auto-37}`{=latex}

#### Authority Requirement

  -----------------------------------------------------------------------------------------------------------------
  **DMNElement**                                                **Depiction**
  ----------------------- -----------------------------------------------------------------------------------------
  Authority Requirement    ![](./media/image203.jpeg){width="1.5069444444444444in" height="0.18472222222222223in"}

  -----------------------------------------------------------------------------------------------------------------

  : Depiction Resolution of Authority Requirement `\label{tbl:auto-58}`{=latex}

#### Association

When the DMNEdge depicts an Association, its DMNElement MUST be specified.

+-------------------------------------------------+-------------------------------------------------------------------------------------------+
| > **DMNElement**                                | > **Depiction**                                                                           |
+=================================================+:=========================================================================================:+
| Association where associationDirection is none. | > ![](./media/image204.jpeg){width="1.2222222222222223in" height="0.2222222222222222in"}  |
+-------------------------------------------------+-------------------------------------------------------------------------------------------+
| Association where associationDirection is one.  | > ![](./media/image205.jpeg){width="1.2222222222222223in" height="0.24305555555555555in"} |
+-------------------------------------------------+-------------------------------------------------------------------------------------------+
| Association where associationDirection is both. | > ![](./media/image206.jpeg){width="1.2222222222222223in" height="0.2916666666666667in"}  |
+-------------------------------------------------+-------------------------------------------------------------------------------------------+

: Depiction Resolution of Association `\label{tbl:_Ref193287379}`{=latex}

This page intentionally left blank.

# ANNEXES

All the Annexes are informative.

Annex A. discuss issues around the application of **DMN** in combination with **BPMN**. This section is intended to provide some direction to practitioners but is non-normative.

Annex B. provides a non-normative glossary to aid comprehension of the specification.

This page intentionally left blank.

A.  []{#_Toc231385280 .anchor}Relation to BPMN\
    \
    (informative)

    1.  []{#_Toc231385281 .anchor}Goals of BPMN and DMN

The OMG Business Process Model and Notation Standard provides a standard notation for describing business processes as orchestrations of tasks. The success of **BPMN** has provided a major motivation for **DMN,** and business decisions described using **DMN** are expected to be commonly deployed in business processes described using **BPMN**.

All statements pertaining to **BPMN** below are from the OMG document reference 11-01-03 unless otherwise stated.

**BPMN**'s goals are stated in the specification and provide easy comparisons to **DMN**:

- Goal 1: "*The primary goal of* **BPMN** *is to provide a notation that is readily understandable by all business users, from the business analysts that create the initial drafts of the processes, to the technical developers responsible for implementing the technology that will perform those processes, and finally, to the businesspeople who will manage and monitor those processes. Thus,* **BPMN** *creates a standardized bridge for the gap between the business process design and process implementation.*". **DMN** users will also be business analysts (designing decisions) and then business users (populating decision models such as decision tables). Technical developers may be responsible for mapping business terms to appropriate data technologies. Therefore, **DMN** can also be said to bridge the decision design by a business analyst, and the decision implementation, typically using some decision execution technology,

- Goal 2: *"\... To ensure that XML languages designed for the execution of business processes, such as WSBPEL (Web Services Business Process Execution Language), can be visualized with a businessoriented notation."* It is not a stated goal of **DMN** to be able to visualize other XML languages (such as W3C RIF or OMG PRR); indeed, it is expected that **DMN** would provide the MDA specification layer for such languages. It does not preclude however the use of **DMN** (such as decision tables) to represent executable forms (such as production rules).

- Goal 3: *"The intent of* **BPMN** *is to standardize a business process model and notation in the face of many different modeling notations and viewpoints. In doing so,* **BPMN** *will provide a simple means of communicating process information to other business users, process implementers, customers, and suppliers."* Similarly, the intent of **DMN** is to standardize the decision model and notation across the many different implementations of broadly semantically similar models. In so doing, **DMN** will also facilitate the communication of decision information across business communities and tools.

  1.  []{#_Toc231385282 .anchor}BPMN Tasks and DMN Decisions

Most **BPMN** diagrams contain some tasks which involve decision-making which can be modeled in **DMN**. These tasks take input data acquired or generated earlier in the process and produce decision outputs which are used later in the process. Decision outputs may be used in two principal ways:

- They may be consumed in another process task.

- They may influence the choice of sequence flows out of a gateway.

In the latter case, decisions are used to determine which subprocesses or tasks are to be executed (in the process sense). As such, **DMN** complements **BPMN** as decision modeling complements process modeling (in the sense of defining orchestrations or work tasks).

For example, `\autoref{fig:_Ref123199803}`{=latex} shows an example^1^ of a **BPMN**-defined process.

![Decision-making in BPMN](./media/image207.jpeg){#fig:_Ref123199803 alt="Diagram Description automatically generated" width="6.749305555555556in" height="3.5027777777777778in"}

Analyzing this we see:

- A task whose title starts with "Decide\..." which makes a decision on (whether to use) normal post or special shipment, and which precedes an exclusive gateway using that decision result.

- A task whose title starts with "Check\..." which makes a decision on whether extra insurance is necessary, which precedes an inclusive gateway for which an additional process path may be executed based on the decision result.

- A task whose title starts with "Assign\..." which implies a decision to select a carrier based on some selection criteria. The previous task is effectively collecting data for this decision. In an automated system this would probably be a subprocess embedding a decision and some other activities (such as "prepare paperwork").

From this example we can see that even a simple business process in **BPMN** may have several decision-making tasks.

1.  []{#_Toc231385283 .anchor}Types of BPMN Tasks relevant to DMN

**BPMN** defines^2^ different types of tasks that can be considered for decision-making roles. The relevant tasks are as shown in `\autoref{tbl:_Ref193287379}`{=latex}:

1.Shipment Process in a Hardware Retailer example, Ch5.1, BPMN 2.0 By Example, June 2010, OMG reference 10-06-02

2.See ch 10.2.3 in the BPMN Specification.

**Table 111: BPMN tasks relevant to DMN**

![A picture containing table Description automatically generated](./media/image208.jpeg){width="6.40625in" height="4.606944444444444in"}

A future version of **BPMN** may choose to clarify and extend the definitions of task to better match decision modeling requirements and **DMN** -- to wit, to define a **BPMN** Decision Task as some task used to make a decision modeled with **DMN**. In the meantime, the Business Rule Task is the most natural way to express this functionality. However, as noted in clauses [5.2.2](#modeling-requirements-for-automated-decision-making) and [6.3.6](#artifact-metamodel), a Decision in **DMN** can be associated with any Task, allowing for flexibility in implementation.

2.  []{#_Toc231385284 .anchor}Process gateways and Decisions

Process gateways can be considered of 2 types:

1.  A gateway that determines a process route or routes based on existing data

2.  A gateway that determines a process route or routes based on the outcome of one or more decisions that are determined by some previous task within the process.

In the latter case, a Decision Task (task used to make a decision using **DMN**) may need an extended notation to clarify the relationship of the decision task to the gateway(s) that use it.

1.  []{#_Toc231385285 .anchor}Linking BPMN and DMN Models

**DMN** offers two approaches to linking business process models in **BPMN** with decision models: one normative and the other non-normative:

### a) Associating Decisions with Tasks and Processes 

As described in clause [6.3.6](#artifact-metamodel), in **DMN**, the process context for an instance of Decision is defined by its association with any number of usingProcesses, which are instances of Process as defined in OMG **BPMN 2**, and any number of usingTasks, which are instances of Task as defined in OMG **BPMN 2**. Each decision may therefore be associated with one or more business processes (to indicate that the decision is taken during those processes), and/or with one or more specific tasks (to indicate that the tasks involve making the decision). An implementation SHALL allow these associations to be defined for each decision.

An implementation MAY perform validation over the two (**BPMN** and **DMN**) models, to check, for example, that:

- A Decision is not associated with Tasks that are part of Processes not also associated with the Decision.

- A Decision is not associated with Tasks that are not part of any Process associated with the Decision.

During development it may be appropriate to associate a Decision only with a Process, but inconsistency between Task and Process associations is not allowed.

Note that this approach allows the relationships between business process models and decision models to be defined and validated but does not of itself permit the decisions modeled in **DMN** to be executed automatically by processes modeled in **BPMN**.

### b) Decision Services 

One approach to decision automation is described non-normatively in Annex A: the encapsulation of **DMN** Decisions in a "decision service" called from a **BPMN** Task (e.g., a Service Task or Business Rule Task, as discussed in Annex A..3 above). The usingProcesses and usingTasks properties allow definition and validation of associations between **BPMN** and **DMN**; the definition of decision services then provides a detailed specification of the required interface.

B.  []{.indexref entry="PSM for XML: "}\
    []{#_Toc231385288 .anchor}Glossary[]{.indexref entry="Scope: "}

(informative)

+------------------------------------------------------------------------------------------------------------------------------+
| > **A**                                                                                                                      |
+=====================================+========================================================================================+
| Aggregation                         | The production of a single result from multiple **hits**\                              |
|                                     | on a **decision table**. DMN specifies four\                                           |
|                                     | aggregation operators on the Collect hit policy,\                                      |
|                                     | namely: + (sum), \< (min), \> (max), \# (count). If no\                                |
|                                     | operator is specified, the results of the Collect hit\                                 |
|                                     | policy are returned without being aggregated.                                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Any                                 | A **hit policy** for **single hit decision tables** with\                              |
|                                     | overlapping **decision rules**: under this policy any\                                 |
|                                     | match may be used.                                                                     |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Authority Requirement             | The dependency of one element of a Decision\                                           |
|                                     | Requirements Graph on another element which\                                           |
|                                     | provides guidance to it or acts as a source of\                                        |
|                                     | knowledge for it.                                                                      |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > **B**                             |                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Binding                           | In an **invocation**, the association of the parameters\                               |
|                                     | of the invoked expression with the input variables\                                    |
|                                     | of the invoking expression, using a binding\                                           |
|                                     | formula.                                                                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed Context                     | A form of **boxed expression** showing a collection\                                   |
|                                     | of *n* (name, value) pairs with an optional result\                                    |
|                                     | value.                                                                                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed Expression                  | A notation serving to decompose **decision\                                            |
|                                     | logic** into small pieces which may be associated\                                     |
|                                     | graphically with elements of a **DRD**.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed Function                    | A form of **boxed expression** showing the kind,\                                      |
|                                     | parameters, and body of a function.                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed Invocation                  | A form of **boxed expression** showing the\                                            |
|                                     | parameter bindings that provide the context for the\                                   |
|                                     | evaluation of the body of a **business knowledge\                                      |
|                                     | model**.                                                                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed List                        | A form of **boxed expression** showing a list of *n* items.                            |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Boxed Literal Expression          | A form of **boxed expression** showing a **literal\                                    |
|                                     | expression**.                                                                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Business Context Element            | An element representing the business context of a\                                     |
|                                     | decision: either an **organisational unit** or a\                                      |
|                                     | **performance indicator**.                                                             |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Business Knowledge Model            | Some **decision logic** (e.g., a **decision table**)\                                  |
|                                     | encapsulated as a reusable function, which may be\                                     |
|                                     | invoked by **decisions** or by other **business\                                       |
|                                     | knowledge models**.                                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **C**                               |                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Clause                              | In a **decision table**, a clause specifies a subject,\                                |
|                                     | which is defined by an input expression or an\                                         |
|                                     | output domain, and the finite set of the subdomains\                                   |
|                                     | of the subject's domain that are relevant for the piece of\                            |
|                                     | **decision logic** that is described by the decision table.                            |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Collect                             | A hit policy for multiple hit decision tables with\                                    |
|                                     | overlapping decision rules: under this policy all\                                     |
|                                     | matches will be returned as a list in an arbitrary order.\                             |
|                                     | An operator can be added to specify a function\                                        |
|                                     | to be applied to the outputs: see Aggregation.                                         |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Context                             | > In **FEEL**, a map of key-value pairs called **context entries**.                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Crosstab Table                      | > An **orientation** for **decision tables** in which two\                             |
|                                     | > **input expressions** form the two dimensions of the\                                |
|                                     | > table, and the **output entries** form a\                                            |
|                                     | > twodimensional grid.                                                                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **D**                               |                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision                            | > The act of determining an **output value** from a number of\                         |
|                                     | > **input values**, using **decision logic** defining how the\                         |
|                                     | > output is determined from the inputs.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Logic                      | The logic used to make decisions, defined in DMN as the\                               |
|                                     | **value expressions** of **decisions** and **business knowledge**\                     |
|                                     | **models** and represented visually as **boxed expressions**.                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Logic Level                | The detailed level of modeling in DMN, consisting of the **value**\                    |
|                                     | **expressions** associated with **decisions** and **business\                          |
|                                     | knowledge models**.                                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Model                      | A formal model of an area of decision-making, expressed in\                            |
|                                     | DMN as **decision requirements** and **decision logic**.                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Point                      | A point in a business process at which decisionmaking occurs,\                         |
|                                     | modeled in BPMN 2.0 as a business rule task and possibly\                              |
|                                     | implemented as a call to a **decision service.**                                       |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Requirements Diagram       | A diagram presenting a (possibly filtered) view of a **DRG**.                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Requirements Graph         | A graph of **DRG elements** (**decisions**, **business knowledge\                      |
|                                     | models** and **input data**) connected by **requirements**.                            |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Requirements\              | The more abstract level of modelling in DMN, consisting of a\                          |
| Level                               | **DRG** represented in one or more **DRDs**.                                           |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Rule                       | In a **decision table**, a decision rule specifies associates a set of\                |
|                                     | conclusions or results (**output entries**) with a set of conditions\                  |
|                                     | (**input entries**).                                                                   |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Service                    | A software component encapsulating a **decision model** and exposing\                  |
|                                     | it as a service, which might be consumed (for example) by a task\                      |
|                                     | in a BPMN process model.                                                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Decision Table                      | A tabular representation of a set of related input and output expressions,\            |
|                                     | organized into **decision rules** indicating which **output entry** applies\           |
|                                     | to a specific set of **input entries**.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Definitions                         | A container for all elements of a DMN **decision model**. The interchange\             |
|                                     | of DMN files will always be through one or more Definitions.                           |
+-------------------------------------+----------------------------------------------------------------------------------------+
| DMN Element                         | Any element of a DMN **decision model**: a **DRG Element**,**Business\                 |
|                                     | Context Element**, **Expression**, **Definitions**, **Element Collection**,\           |
|                                     | **Information Item** or **Item Definition**.                                           |
+-------------------------------------+----------------------------------------------------------------------------------------+
| DRD                                 | See **Decision Requirements Diagram**.                                                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| DRG                                 | See **Decision Requirements Graph**.                                                   |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > DRG Element                       | Any component of a **DRG**: a **decision**, **business knowledge model**,\             |
|                                     | **input data** or **knowledge source**.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **E**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Element Collection                | Used to define named groups of **DRG elements** within a **Definitions**.              |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Expression                          | A **literal expression**, **decision table, invocation**, list, **context**, function\ |
|                                     | definition, or **relation** used to define part of the **decision logic** for a\       |
|                                     | **decision** **model** in **DMN**. Returns a single value when interpreted.            |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **F**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| FEEL                                | The "Friendly Enough Expression Language" which is the default\                        |
|                                     | expression language for DMN.                                                           |
+-------------------------------------+----------------------------------------------------------------------------------------+
| First                               | A **hit policy** for **single hit decision tables** with overlapping\                  |
|                                     | **decision rules**: under this policy the first match is used, based\                  |
|                                     | on the order of the **decision rules**.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Formal Parameter                  | A named, typed value used in the invocation of a function to\                          |
|                                     | provide an **information item** for use in the body of the function.                   |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **H**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Hit                                 | In a **decision table**, the successful matching of all **input\                       |
|                                     | expressions** of a **decision rule**, making the conclusion eligible\                  |
|                                     | for inclusion in the results.                                                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Horizontal                          | An orientation for **decision tables** in which **decision rules\**                    |
|                                     | are presented as rows, **clauses** as columns.                                         |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **I**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Information Item                  | A **DMN element** used to model either a **variable** or a **parameter\**              |
|                                     | at the **decision logic level** in DMN **decision models**.                            |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Information Requirement           | The dependency of a **decision** on an **input data** element or another\              |
|                                     | **decision** to provide a **variable** used in its **decision logic**.                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Input Data                        | Denotes information used as an input by one or more **decisions**,\                    |
|                                     | whose value is defined outside of the **decision model**.                              |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Input Entry                       | An **expression** defining a condition cell in a **decision table\**                   |
|                                     | (i.e., the intersection of a **decision rule** and an input **clause**).               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Input Expression                  | An **expression** defining the item to be compared with the\                           |
|                                     | **input entries** of an input **clause** in a **decision table**.                      |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Input Value                       | An **expression** defining a limited range of expected values for an\                  |
|                                     | input **clause** in a **decision table**.                                              |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Invocation                          | A mechanism that permits the evaluation of one value expression another,\              |
|                                     | using a number of **bindings**.                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Item Definition                   | Used to model the structure and the range of values of **input data** and\             |
|                                     | the outcome of **decisions**, using a type language such as **FEEL** or XML\           |
|                                     | Schema.                                                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **K**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Knowledge Requirement             | The dependency of a **decision** or **business knowledge model**\                      |
|                                     | on a **business knowledge model** which must be invoked in the evaluation\             |
|                                     | of its **decision logic**.                                                             |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Knowledge Source                  | An authority defined for **decisions** or **business knowledge\                        |
|                                     | models**, e.g., domain experts responsible for defining or maintaining\                |
|                                     | them, or source documents from which business knowledge models are\                    |
|                                     | derived or sets of test cases with which the decisions must be consistent.             |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **L**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Literal Expression                | Text that represents **decision logic** by describing how an output value is\          |
|                                     | derived from its input values, e.g. in plain                                           |
|                                     |                                                                                        |
|                                     | English or using the default expression language **FEEL**.                             |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **M**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Multiple Hit                      | A type of **decision table** which may return **output entries** from multiple\        |
|                                     | **decision rules**.                                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **O**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Organisational Unit               | A **business context element** representing the unit of an organization\               |
|                                     | which makes or owns a **decision**.                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Orientation                         | The style of presentation of a **decision table**: horizontal (decision rules\         |
|                                     | as rows; clauses as columns), vertical (rules as columns; clauses as rows), or\        |
|                                     | crosstab (rules composed from two input dimensions).                                   |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Output Entry                      | An **expression** defining a conclusion cell in a **decision table** (i.e., the\       |
|                                     | intersection of a **decision rule** and an output **clause**).                         |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Output Order                      | A **hit policy** for **multiple hit decision tables** with overlapping\                |
|                                     | **decision rules**: under this policy all matches will be returned as a list in\       |
|                                     | decreasing priority order. Output priorities are specified in an ordered\              |
|                                     | list of values.                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Output Value                      | An **expression** defining a limited range of domain values for an output\             |
|                                     | **clause** in a **decision table**.                                                    |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > **P**                                                                                                                      |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Performance Indicator             | A **business context element** representing a measure of business\                     |
|                                     | performance impacted by a **decision**.                                                |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Priority                          | A **hit policy** for **single hit decision tables** with overlapping **decision\       |
|                                     | rules**: under this policy the match is used that has the highest\                     |
|                                     | output priority.                                                                       |
|                                     |                                                                                        |
|                                     | Output priorities are specified in an ordered list of values.                          |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **R**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Relation                            | A form of **boxed expression** showing a vertical list of homogeneous\                 |
|                                     | horizontal **contexts** (with no result cells) with the names appearing\               |
|                                     | just once at the top of the list, like a relational table.                             |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Requirement                       | The dependency of one **DRG element** on another: either an\                           |
|                                     | **information requirement**, **knowledge requirement** or **authority\                 |
|                                     | requirement.**                                                                         |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Requirement Subgraph              | The directed graph resulting from the transitive closure of the\                       |
|                                     | **requirements** of a **DRG element**; i.e., the sub-graph of the **DRG\**             |
|                                     | representing all the decision-making required by a particular element.                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Rule Order                        | A **hit policy** for **multiple hit decision tables** with overlapping **decision\     |
|                                     | rules**: under this policy all matches will be returned as a list in the order\        |
|                                     | of definition of the **decision rules**.                                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > **S**                                                                                                                      |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > S-FEEL                            | A simple subset of **FEEL**, for **decision models** that use only simple\             |
|                                     | **expressions**: in particular, **decision models** where the **decision**\            |
|                                     | **logic** is modeled mostly or only using **decision tables**.                         |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Single Hit                        | A type of **decision table** which may return the **output entry** of only a single\   |
|                                     | **decision rule**.                                                                     |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **U**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Unique                            | A **hit policy** for **single hit decision tables** in which no overlap is possible\   |
|                                     | and all **decision rules** are exclusive. Only a single rule can be matched.           |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **V**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Variable                            | Represents a value that is input to a **decision**, in the description of its\         |
|                                     | **decision logic**, or a value that is passed as a **parameter** to a function.        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| Vertical                            | An **orientation** for **decision tables** in which decision rules are\                |
|                                     | presented as columns; clauses as rows.                                                 |
+-------------------------------------+----------------------------------------------------------------------------------------+
| **W**                                                                                                                        |
+-------------------------------------+----------------------------------------------------------------------------------------+
| > Well-Formed                       | Used of a **DRG element** or **requirement** to indicate that it conforms\             |
|                                     | to constraints on referential integrity, acyclicity etc.                               |
+-------------------------------------+----------------------------------------------------------------------------------------+
