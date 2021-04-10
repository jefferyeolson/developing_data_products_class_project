shinyUI(
        pageWithSidebar( 
                headerPanel("University Program Earnings, Federal Debt, and Return on Federal Debt in Utah"), 
                sidebarPanel(
                        selectizeInput(inputId = 'name', 
                                    label = 'name',
                                    choices = utah$name,
                                    options = list(placeholder = 'Select a university')),
                        selectizeInput(inputId = 'program', 
                                    label = 'program',
                                    choices = utah$program,
                                    options = list(placeholder = 'Select a program')),
                        submitButton("Submit")
                        ),
                mainPanel(
                        h3("Description"),
                        h4("The earnings, debt, and return on investment 
                           associated with different programs and different universities varies."),
                        h4("Federal data provide some insights into the variety. 
                           The data only provide information about federal debt, but that is still a valuable indicator."),
                        h4("The data are only publicly available for higher enrollment programs, because of privacy."), 
                        h("The choices only include the ten programs for which data are most frequently available."),
                        h4("If the Earnings, Federal Loan Debt, and Federal Loan ROI are empty, 
                           then either the university does not have the program, or the enrollment is not large enough."),
                        h3("University:"),
                        textOutput("name"),
                        h3("Program:"),
                        textOutput("program"),
                        h3("Earnings:"),
                        textOutput("earnings"),
                        h3("Federal Loan Debt:"),
                        textOutput("debt"),
                        h3("Federal Loan ROI:"),
                        textOutput("return"),
        ) ))