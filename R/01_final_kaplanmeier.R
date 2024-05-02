# Install packages 

# install.packages("survival")


# Load the survival package
library(survival)

# View the available datasets
data(package = "survival")

# Load a specific dataset, for example, the lung dataset
lung_data <- lung

# View the structure of the dataset
str(lung_data)

# Access specific columns or rows as needed
head(lung_data)


# Install and load required packages
#install.packages("survminer")
library(survminer)

# Create a survival object
surv_obj <- survfit(Surv(inst, status) ~ 1, data = lung_data)

# Plot the Kaplan-Meier curve
ggsurvplot(surv_obj, data = lung_data)

# Create a survival object
surv_obj <- survfit(Surv(inst, status) ~ 1, data = lung_data)

# Plot the Kaplan-Meier curve
ggsurvplot(surv_obj, data = lung_data)

# Load required packages
library(survival)
library(survminer)

# Stratify survival analysis by a categorical variable (e.g., sex)
surv_obj <- survfit(Surv(inst, status) ~ sex, data = lung_data)

# Plot the Kaplan-Meier curve with group comparison
survivalplot<-ggsurvplot(surv_obj, data = lung_data,
           pval = TRUE,             # Include p-values for group comparison
           conf.int = TRUE,         # Include confidence intervals
           risk.table = TRUE,       # Include risk table
           legend.labs = c("Male", "Female"),  # Customize legend labels
           ggtheme = theme_minimal(),          # Use a minimalist theme
           title = "Lung Cancer Survival Curve by Gender",  # Set plot title
           xlab = "Time (days)",     # Set x-axis label
           ylab = "Survival Probability",  # Set y-axis label
           break.time.by = 100,      # Break x-axis into intervals of 100 days
           risk.table.col = "strata" # Color risk table by strata (group)
)

# Add figure number and label
survivalplot <- survivalplot + 
  ggtitle("Figure 1: Lung Cancer Survival Curve by Gender")

# Display the plot
print(survivalplot)




