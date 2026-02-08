df <- read.csv("Heart Attack Data Set.csv")
# ===== 2) BASIC CLEANING =====
df <- df[!duplicated(df), ]     # remove duplicates
df <- na.omit(df)               # drop rows with missing values (simplest)

# ===== 3) CHOOSE TARGET COLUMN (AUTO) =====
possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "Heart Attack", "num")
target <- intersect(possible_targets, names(df))
if (length(target) == 0) target <- names(df)[ncol(df)] else target <- target[1]

# make sure target is a factor (classification)
df[[target]] <- as.factor(df[[target]])

# convert any text columns to factors
for (col in names(df)) {
  if (is.character(df[[col]])) df[[col]] <- as.factor(df[[col]])
}

# ===== 4) TRAIN / TEST SPLIT (70/30) =====
set.seed(42)
n <- nrow(df)
train_rows <- sample(1:n, size = 0.7 * n)
train <- df[train_rows, ]
test  <- df[-train_rows, ]

# ===== 5) LOGISTIC REGRESSION =====
form <- as.formula(paste(target, "~ ."))
model <- glm(form, data = train, family = binomial)

# ===== 6) PREDICT + CONFUSION MATRIX =====
prob <- predict(model, test, type = "response")
pred <- ifelse(prob > 0.5, 1, 0)

cat("Target column used:", target, "\n\n")
print(table(Predicted = pred, Actual = test[[target]]))

# ===== DESCRIPTIVE ANALYSIS =====

# 1) Overall summary
cat("\n--- OVERALL SUMMARY ---\n")
print(summary(df))

# 2) Mean & SD for numerical variables
num_vars <- sapply(df, is.numeric)
cat("\n--- MEANS ---\n")
print(colMeans(df[, num_vars]))
cat("\n--- STANDARD DEVIATIONS ---\n")
print(apply(df[, num_vars], 2, sd))

# 3) Frequency tables for categorical variables
cat_vars <- sapply(df, is.factor)
cat("\n--- FREQUENCY TABLES ---\n")
print(lapply(df[, cat_vars], table))

# 4) Mean comparison by outcome (key result)
cat("\n--- MEANS BY HEART ATTACK OUTCOME ---\n")
print(aggregate(df[, num_vars], 
                by = list(Outcome = df[[target]]), 
                FUN = mean)
      # ===== LOAD PACKAGE =====
      library(ggplot2)
      
      # ===== IDENTIFY TARGET COLUMN =====
      possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "num")
      target <- intersect(possible_targets, names(df))
      if (length(target) == 0) target <- names(df)[ncol(df)] else target <- target[1]
      
      df[[target]] <- as.factor(df[[target]])
      
      # ===== PLOT 1: AGE DISTRIBUTION =====
      ggplot(df, aes(x = age)) +
        geom_histogram(bins = 20) +
        labs(title = "Age Distribution", x = "Age", y = "Count")
      
      # ===== PLOT 2: AGE BY HEART ATTACK OUTCOME =====
      ggplot(df, aes(x = df[[target]], y = age)) +
        geom_boxplot() +
        labs(title = "Age by Heart Attack Outcome",
             x = "Heart Attack Outcome", y = "Age")
      
      # ===== PLOT 3: SEX DISTRIBUTION =====
      ggplot(df, aes(x = sex)) +
        geom_bar() +
        labs(title = "Sex Distribution", x = "Sex", y = "Count")
      
      # ===== PLOT 4: SEX BY HEART ATTACK OUTCOME =====
      ggplot(df, aes(x = sex, fill = df[[target]])) +
        geom_bar(position = "dodge") +
        labs(title = "Sex by Heart Attack Outcome",
             x = "Sex", y = "Count", fill = "Outcome")
      
      # ===== PLOT 5: CHOLESTEROL vs RESTING BP =====
      ggplot(df, aes(x = chol, y = trtbps)) +
        geom_point() +
        geom_smooth(method = "lm", se = FALSE) +
        labs(title = "Cholesterol vs Resting Blood Pressure",
             x = "Cholesterol", y = "Resting BP")      
      names(df)      
      # ===== LOAD PACKAGE =====
      library(ggplot2)
      
      # ===== IDENTIFY TARGET COLUMN =====
      possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "num")
      target <- intersect(possible_targets, names(df))
      if (length(target) == 0) target <- names(df)[ncol(df)] else target <- target[1]
      
      df[[target]] <- as.factor(df[[target]])
      
      # ===== PLOT 1: AGE DISTRIBUTION =====
      ggplot(df, aes(x = age)) +
        geom_histogram(bins = 20) +
        labs(title = "Age Distribution", x = "Age", y = "Count")
      
      # ===== PLOT 2: AGE BY HEART ATTACK OUTCOME =====
      ggplot(df, aes(x = .data[[target]], y = age)) +
        geom_boxplot() +
        labs(title = "Age by Heart Attack Outcome",
             x = "Heart Attack Outcome", y = "Age")
      
      # ===== PLOT 3: SEX DISTRIBUTION =====
      ggplot(df, aes(x = sex)) +
        geom_bar() +
        labs(title = "Sex Distribution", x = "Sex", y = "Count")
      
      # ===== PLOT 4: SEX BY HEART ATTACK OUTCOME =====
      ggplot(df, aes(x = sex, fill = .data[[target]])) +
        geom_bar(position = "dodge") +
        labs(title = "Sex by Heart Attack Outcome",
             x = "Sex", y = "Count", fill = "Outcome")
      
      # ===== PLOT 5: CHOLESTEROL vs RESTING BP =====
      ggplot(df, aes(x = chol, y = trtbps)) +
        geom_point() +
        geom_smooth(method = "lm", se = FALSE) +
        labs(title = "Cholesterol vs Resting Blood Pressure",
             x = "Cholesterol", y = "Resting BP")    
      library(ggplot2)
      
      ggplot(df, aes(x = chol, y = trtbps)) +
        geom_point() +
        labs(
          title = "Cholesterol vs Resting Blood Pressure",
          x = "Cholesterol",
          y = "Resting Blood Pressure"
        )     
      library(ggplot2)
      
      num_cols <- names(df)[sapply(df, is.numeric)]
      
      ggplot(df, aes(x = df[[num_cols[1]]], y = df[[num_cols[2]]])) +
        geom_point() +
        labs(
          title = paste(num_cols[1], "vs", num_cols[2]),
          x = num_cols[1],
          y = num_cols[2]
        )
      install.packages("ggplot2")   # only once if not installed
      install.packages("reshape2")  # only once if not installed
      
      library(ggplot2)
      library(reshape2)
      ✅ STEP 2: Create the HEAT MAP (ONE CLEAN SCRIPT)
      # Select numeric variables only
      num_data <- df[, sapply(df, is.numeric)]
      
      # Compute correlation matrix
      cor_matrix <- cor(num_data, use = "complete.obs")
      
      # Convert to long format for ggplot
      cor_long <- melt(cor_matrix)
      
      # Heat map
      ggplot(cor_long, aes(x = Var1, y = Var2, fill = value)) +
        geom_tile() +
        scale_fill_gradient2(
          low = "blue",
          mid = "white",
          high = "red",
          midpoint = 0,
          limits = c(-1, 1)
        ) +
        labs(
          title = "Correlation Heat Map of Clinical Variables",
          x = "",
          y = "",
          fill = "Correlation"
        ) +
        theme_minimal() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))
      # ===== IDENTIFY TARGET COLUMN =====
      possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "num")
      target <- intersect(possible_targets, names(df))
      if (length(target) == 0) target <- names(df)[ncol(df)] else target <- target[1]
      
      df[[target]] <- as.factor(df[[target]])
      
      # ===== SELECT NUMERIC VARIABLES =====
      num_vars <- names(df)[sapply(df, is.numeric)]
      
      # ===== RUN T-TESTS =====
      t_test_results <- lapply(num_vars, function(var) {
        test <- t.test(df[[var]] ~ df[[target]])
        data.frame(
          Variable = var,
          Mean_Group_0 = mean(df[df[[target]] == levels(df[[target]])[1], var], na.rm = TRUE),
          Mean_Group_1 = mean(df[df[[target]] == levels(df[[target]])[2], var], na.rm = TRUE),
          p_value = test$p.value
        )
      })
      
      # ===== COMBINE RESULTS =====
      t_test_results <- do.call(rbind, t_test_results)
      
      print(t_test_results)      
      # ===== IDENTIFY TARGET COLUMN =====
      possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "num")
      target <- intersect(possible_targets, names(df))
      if (length(target) == 0) target <- names(df)[ncol(df)] else target <- target[1]
      
      df[[target]] <- as.factor(df[[target]])
      
      # Make sure second factor is a factor (example: sex)
      df$sex <- as.factor(df$sex)
      
      # ===== TWO-WAY ANOVA =====
      anova_model <- aov(age ~ df[[target]] * sex, data = df)
      
      summary(anova_model)     
      # ===== STEP 1: IDENTIFY TARGET COLUMN =====
      possible_targets <- c("output", "target", "HeartAttack", "heart_attack", "num")
      target <- intersect(possible_targets, names(df))
      if (length(target) == 0) {
        target <- names(df)[ncol(df)]
      } else {
        target <- target[1]
      }
      
      # ===== STEP 2: CREATE A CLEAN FACTOR COLUMN =====
      df$Outcome <- as.factor(df[[target]])
      
      # Make sure sex is a factor
      df$sex <- as.factor(df$sex)
      
      # ===== STEP 3: TWO-WAY ANOVA =====
      anova_model <- aov(age ~ Outcome * sex, data = df)
      
      # ===== STEP 4: VIEW RESULTS =====
      summary(anova_model)
      
      