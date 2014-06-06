﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Independent.aspx.cs" Inherits="Ucsb.Sa.FinAid.AidEstimation.Web.Simple.Independent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    
    <p>
        This Financial Aid Estimator provides an estimation of financial aid for <strong>prospective full-time,
        independent undergraduate students</strong>. The estimated values produced by this tool are <strong>not</strong>
        the actual amounts that will be offered by an institution. All estimated values are <strong>subject to the
        availability of funding</strong>. To begin the actual financial aid application process, complete a
        <a href="http://www.fafsa.ed.gov/">FAFSA</a>.
    </p>
    
    <asp:Placeholder ID="formPlaceholder" runat="server" Visible="true">
        
        <asp:Repeater ID="errorList" runat="server">
            <HeaderTemplate>
                <p class="error">There was an error with the values for the following fields:</p>
                <ul class="error error-list">
            </HeaderTemplate>
            <ItemTemplate>
                <li><%# Eval("Message") %></li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        
        <form method="post" action="Independent.aspx" runat="server">
            <ul>
                <li>
                    <fieldset>
                        <legend>Marital Status</legend>
                        <asp:RadioButtonList runat="server" ID="inputMaritalStatus" CssClass="radio-input-list">
                            <asp:ListItem Value="single">Single/Separated/Divorced</asp:ListItem>
                            <asp:ListItem Value="married">Married/Remarried</asp:ListItem>
                        </asp:RadioButtonList>
                    </fieldset>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStudentAge">Student's Age</asp:Label>
                    <asp:TextBox runat="server" ID="inputStudentAge"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStudentIncome">
                        Student and Spouse's Income
                        <span class="description">Income earned by you and your spouse in the last year</span>
                    </asp:Label>
                    <asp:TextBox runat="server" ID="inputStudentIncome"></asp:TextBox>
                </li>
                <li>
                    <fieldset>
                        <legend>Total Income Earned By</legend>
                        <asp:RadioButtonList runat="server" ID="inputStudentIncomeEarnedBy" CssClass="radio-input-list">
                            <asp:ListItem Value="none">Neither Student nor Spouse</asp:ListItem>
                            <asp:ListItem Value="one">Either Student or Spouse</asp:ListItem>
                            <asp:ListItem Value="both">Both Student and Spouse</asp:ListItem>
                        </asp:RadioButtonList>
                    </fieldset>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStudentOtherIncome">
                        Student and Spouse's Other Income
                        <span class="description">Income earned by you and your spouse in the last year that was <em>not</em> reported on your tax return</span>
                    </asp:Label>
                    <asp:TextBox runat="server" ID="inputStudentOtherIncome"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStudentIncomeTax">Student and Spouse's Income Tax Paid</asp:Label>
                    <asp:TextBox runat="server" ID="inputStudentIncomeTax"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStudentAssets">
                        Student and Spouse's Assets
                        <span class="description">Total value of you and your spouse's assets in the last year, including the total amount in cash, savings, and checking, and the net worth of all investments</span>
                    </asp:Label>
                    <asp:TextBox runat="server" ID="inputStudentAssets"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputNumberInHousehold">
                        Number in Household
                        <span class="description">Total number in your household during the last academic year. Include you, your parents, and your parent(s)' dependents</span>
                    </asp:Label>
                    <asp:TextBox runat="server" ID="inputNumberInHousehold"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputNumberInCollege">
                        Number in College
                        <span class="description">Total number of people in your household that were in college during the last academic year, not including your parent(s)</span>
                    </asp:Label>
                    <asp:TextBox runat="server" ID="inputNumberInCollege"></asp:TextBox>
                </li>
                <li>
                    <asp:Label runat="server" AssociatedControlID="inputStateOfResidency">State of Residency</asp:Label>
                    <asp:DropDownList runat="server" ID="inputStateOfResidency">
                        <asp:ListItem Value="Alabama">Alabama</asp:ListItem>
                        <asp:ListItem Value="Alaska">Alaska</asp:ListItem>
                        <asp:ListItem Value="AmericanSamoa">American Samoa</asp:ListItem>
                        <asp:ListItem Value="Arizona">Arizona</asp:ListItem>
                        <asp:ListItem Value="Arkansas">Arkansas</asp:ListItem>
                        <asp:ListItem Value="California">California</asp:ListItem>
                        <asp:ListItem Value="CanadaAndCanadianProvinces">Canada And Canadian Provinces</asp:ListItem>
                        <asp:ListItem Value="Colorado">Colorado</asp:ListItem>
                        <asp:ListItem Value="Connecticut">Connecticut</asp:ListItem>
                        <asp:ListItem Value="Delaware">Delaware</asp:ListItem>
                        <asp:ListItem Value="DistrictOfColumbia">District Of Columbia</asp:ListItem>
                        <asp:ListItem Value="FederatedStatesOfMicronesia">Federated States Of Micronesia</asp:ListItem>
                        <asp:ListItem Value="Florida">Florida</asp:ListItem>
                        <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                        <asp:ListItem Value="Guam">Guam</asp:ListItem>
                        <asp:ListItem Value="Hawaii">Hawaii</asp:ListItem>
                        <asp:ListItem Value="Idaho">Idaho</asp:ListItem>
                        <asp:ListItem Value="Illinois">Illinois</asp:ListItem>
                        <asp:ListItem Value="Indiana">Indiana</asp:ListItem>
                        <asp:ListItem Value="Iowa">Iowa</asp:ListItem>
                        <asp:ListItem Value="Kansas">Kansas</asp:ListItem>
                        <asp:ListItem Value="Kentucky">Kentucky</asp:ListItem>
                        <asp:ListItem Value="Louisiana">Louisiana</asp:ListItem>
                        <asp:ListItem Value="Maine">Maine</asp:ListItem>
                        <asp:ListItem Value="MarshallIslands">Marshall Islands</asp:ListItem>
                        <asp:ListItem Value="Maryland">Maryland</asp:ListItem>
                        <asp:ListItem Value="Massachusetts">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                        <asp:ListItem Value="Michigan">Michigan</asp:ListItem>
                        <asp:ListItem Value="Minnesota">Minnesota</asp:ListItem>
                        <asp:ListItem Value="Mississippi">Mississippi</asp:ListItem>
                        <asp:ListItem Value="Missouri">Missouri</asp:ListItem>
                        <asp:ListItem Value="Montana">Montana</asp:ListItem>
                        <asp:ListItem Value="Nebraska">Nebraska</asp:ListItem>
                        <asp:ListItem Value="Nevada">Nevada</asp:ListItem>
                        <asp:ListItem Value="New Hampshire">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NewJersey">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NewMexico">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NewYork">New York</asp:ListItem>
                        <asp:ListItem Value="NorthCarolina">North Carolina</asp:ListItem>
                        <asp:ListItem Value="NorthDakota">North Dakota</asp:ListItem>
                        <asp:ListItem Value="NorthernMarianaIslands">Northern Mariana Islands</asp:ListItem>
                        <asp:ListItem Value="Ohio">Ohio</asp:ListItem>
                        <asp:ListItem Value="Oklahoma">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="Oregon">Oregon</asp:ListItem>
                        <asp:ListItem Value="Palau">Palau</asp:ListItem>
                        <asp:ListItem Value="Pennsylvania">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="PuertoRico">Puerto Rico</asp:ListItem>
                        <asp:ListItem Value="RhodeIsland">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SouthCarolina">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SouthDakota">South Dakota</asp:ListItem>
                        <asp:ListItem Value="Tennessee">Tennessee</asp:ListItem>
                        <asp:ListItem Value="Texas">Texas</asp:ListItem>
                        <asp:ListItem Value="Utah">Utah</asp:ListItem>
                        <asp:ListItem Value="Vermont">Vermont</asp:ListItem>
                        <asp:ListItem Value="VirginIslands">Virgin Islands</asp:ListItem>
                        <asp:ListItem Value="Virginia">Virginia</asp:ListItem>
                        <asp:ListItem Value="Washington">Washington</asp:ListItem>
                        <asp:ListItem Value="WestVirginia">West Virginia</asp:ListItem>
                        <asp:ListItem Value="Wisconsin">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="Wyoming">Wyoming</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li>
                    <fieldset>
                        <legend>Student Has Dependents</legend>
                        <asp:RadioButtonList runat="server" ID="inputHasDependents" CssClass="radio-input-list">
                            <asp:ListItem Value="true">Yes, I have dependents</asp:ListItem>
                            <asp:ListItem Value="false">No, I do not have dependents</asp:ListItem>
                        </asp:RadioButtonList>
                    </fieldset>
                </li>
                <li class="button-wrapper">
                    <asp:Button runat="server" UseSubmitBehavior="true" Text="Calculate EFC" CssClass="button" />
                </li>
            </ul>
        </form>

    </asp:Placeholder>

    <asp:Placeholder ID="resultsPlaceholder" runat="server" Visible="false">
    
		<h3>Expected Family Contribution</h3>

		<ul class="results">
			<li>
				<span class="result-label">
					Student Contribution
					<span class="description">Amount that you are expected to contribute towards the cost of your education</span>
				</span>
				<span class="result-amount"><asp:Literal ID="studentContributionOutput" runat="server" /></span>
			</li>
			<li class="total">
				<span class="result-label">
					Expected Family Contribution
					<span class="description">Sum of the Student Contribution (SC) and Parent Contribution (PC)</span>
				</span>
				<span class="result-amount"><asp:Literal ID="expectedFamilyContributionOutput" runat="server" /></span>
			</li>
		</ul>

        <h3>Estimated Award Letter</h3>

        <ul class="results">
	        <li>
		        <span class="result-label">
			        Grant Award
			        <span class="description">Estimated total amount of grants that you will be offered in your Financial Aid Award Letter</span>
			        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Self Help Award
			        <span class="description">Estimated total amount of student loans and Work-Study you will be offered in your Financial Aid Award Letter</span>
		        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Family Help Award
			        <span class="description">Estimated total amount of parent loans and private loan eligiblity you will be offered in your Financial Aid Award Letter</span>
		        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
        </ul>

        <h3>Estimated Total Price of Attendance</h3>

        <ul class="results">
	        <li>
		        <span class="result-label">
			        Tuition and Fees
			        <span class="description">Includes cost of education, university health care, and miscellaneous university fees</span>
		        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Room and Board
			        <span class="description">Includes rent, food, and utilities</span>
		        </span>
		        <span class="plus-operator">+</span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Books and Supplies
			        <span class="description">Includes books and supplies</span>
		        </span>
		        <span class="plus-operator">+</span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Other Expenses
			        <span class="description">Includes transportation and miscellaneous personal expenses</span>
		        </span>
		        <span class="plus-operator">+</span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li class="total">
		        <span class="result-label">
			        Total Cost of Attendance
			        <span class="description">The total cost of attendance</span>
		        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li>
		        <span class="result-label">
			        Grant Award
			        <span class="description">Total estimated Grant Award</span>
		        </span>
		        <span class="minus-operator">-</span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
	        <li class="total">
		        <span class="result-label">
			        Estimated Net Cost
			        <span class="description">The total cost of attendance that you must contribute towards your education through either loans or out-of-pocket expense</span>
		        </span>
		        <span class="result-amount">$99,999.00</span>
	        </li>
        </ul>

        <p id="cohort-notice">
	        <strong>XX%</strong> of first-year full-time independent, undergraduate students received grant aid in 20XX-20YY
        </p>

        <span class="button-wrapper">
            <a href="Independent.aspx" class="button">&laquo; Return to Calculator</a>
        </span>
        
    </asp:Placeholder>

</asp:Content>