<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Heart Attack Prediction Project - README</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 20px;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            overflow: hidden;
        }
        
        header {
            background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
            color: white;
            padding: 40px;
            text-align: center;
        }
        
        header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }
        
        header p {
            font-size: 1.2em;
            opacity: 0.95;
        }
        
        .content {
            padding: 40px;
        }
        
        h2 {
            color: #e74c3c;
            margin-top: 30px;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 3px solid #e74c3c;
            font-size: 1.8em;
        }
        
        h3 {
            color: #2c3e50;
            margin-top: 20px;
            margin-bottom: 10px;
            font-size: 1.3em;
        }
        
        p {
            margin-bottom: 15px;
            text-align: justify;
        }
        
        .badge {
            display: inline-block;
            padding: 5px 12px;
            margin: 5px 5px 5px 0;
            border-radius: 20px;
            font-size: 0.85em;
            font-weight: 600;
        }
        
        .badge-r {
            background: #276DC3;
            color: white;
        }
        
        .badge-ml {
            background: #27ae60;
            color: white;
        }
        
        .badge-stats {
            background: #f39c12;
            color: white;
        }
        
        .badge-viz {
            background: #9b59b6;
            color: white;
        }
        
        code {
            background: #f8f9fa;
            padding: 2px 6px;
            border-radius: 3px;
            font-family: 'Courier New', monospace;
            color: #e74c3c;
            font-size: 0.9em;
        }
        
        pre {
            background: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
            border-radius: 8px;
            overflow-x: auto;
            margin: 15px 0;
            border-left: 4px solid #e74c3c;
        }
        
        pre code {
            background: transparent;
            color: #ecf0f1;
            padding: 0;
        }
        
        ul, ol {
            margin-left: 30px;
            margin-bottom: 15px;
        }
        
        li {
            margin-bottom: 8px;
        }
        
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin: 20px 0;
        }
        
        .feature-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 25px;
            border-radius: 10px;
            color: white;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        
        .feature-card h4 {
            margin-bottom: 10px;
            font-size: 1.2em;
        }
        
        .info-box {
            background: #e8f4f8;
            border-left: 4px solid #3498db;
            padding: 15px;
            margin: 15px 0;
            border-radius: 4px;
        }
        
        .warning-box {
            background: #fef5e7;
            border-left: 4px solid #f39c12;
            padding: 15px;
            margin: 15px 0;
            border-radius: 4px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background: #e74c3c;
            color: white;
            font-weight: 600;
        }
        
        tr:hover {
            background: #f8f9fa;
        }
        
        footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
        
        .emoji {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>❤️ Heart Attack Prediction Project</h1>
            <p>Machine Learning Analysis for Cardiovascular Disease Risk Assessment</p>
            <div style="margin-top: 20px;">
                <span class="badge badge-r">R</span>
                <span class="badge badge-ml">Machine Learning</span>
                <span class="badge badge-stats">Statistical Analysis</span>
                <span class="badge badge-viz">Data Visualization</span>
            </div>
        </header>

        <div class="content">
            <h2>📋 Project Overview</h2>
            <p>
                This project implements a comprehensive healthcare analytics pipeline for predicting heart attack risk 
                using patient clinical data. The analysis combines machine learning classification, descriptive statistics, 
                data visualization, and hypothesis testing to identify key risk factors and patterns associated with 
                cardiovascular events.
            </p>

            <div class="info-box">
                <strong><span class="emoji">💡</span> Key Objective:</strong> Build a predictive model to identify individuals 
                at high risk of heart attacks based on clinical measurements and patient demographics.
            </div>

            <h2>✨ Features</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <h4>🤖 Predictive Modeling</h4>
                    <p>Logistic regression classifier with 70/30 train-test split for heart attack prediction</p>
                </div>
                <div class="feature-card">
                    <h4>📊 Descriptive Analytics</h4>
                    <p>Comprehensive statistical summaries including means, standard deviations, and frequency distributions</p>
                </div>
                <div class="feature-card">
                    <h4>📈 Data Visualization</h4>
                    <p>Multiple ggplot2 visualizations including histograms, boxplots, scatter plots, and correlation heatmaps</p>
                </div>
                <div class="feature-card">
                    <h4>🔬 Hypothesis Testing</h4>
                    <p>T-tests and two-way ANOVA for statistical significance testing across clinical variables</p>
                </div>
            </div>

            <h2>🛠️ Technologies Used</h2>
            <table>
                <tr>
                    <th>Technology</th>
                    <th>Purpose</th>
                </tr>
                <tr>
                    <td><strong>R (Base)</strong></td>
                    <td>Core statistical computing and data manipulation</td>
                </tr>
                <tr>
                    <td><strong>ggplot2</strong></td>
                    <td>Advanced data visualization and plotting</td>
                </tr>
                <tr>
                    <td><strong>reshape2</strong></td>
                    <td>Data transformation for correlation matrix visualization</td>
                </tr>
                <tr>
                    <td><strong>GLM (Generalized Linear Models)</strong></td>
                    <td>Logistic regression for binary classification</td>
                </tr>
            </table>

            <h2>📁 Data Requirements</h2>
            <p>The script expects a CSV file named <code>Heart Attack Data Set.csv</code> with the following characteristics:</p>
            
            <h3>Expected Variables:</h3>
            <ul>
                <li><strong>Target Variable:</strong> One of <code>output</code>, <code>target</code>, <code>HeartAttack</code>, <code>heart_attack</code>, <code>Heart Attack</code>, or <code>num</code></li>
                <li><strong>Demographic:</strong> <code>age</code>, <code>sex</code></li>
                <li><strong>Clinical Measurements:</strong> <code>chol</code> (cholesterol), <code>trtbps</code> (resting blood pressure)</li>
                <li><strong>Additional Features:</strong> Any other clinical or diagnostic variables</li>
            </ul>

            <div class="warning-box">
                <strong><span class="emoji">⚠️</span> Important:</strong> The dataset should be placed in the same directory as the R script. 
                Missing values and duplicates will be automatically removed during preprocessing.
            </div>

            <h2>🚀 Getting Started</h2>

            <h3>Prerequisites</h3>
            <pre><code># Install required packages
install.packages("ggplot2")
install.packages("reshape2")</code></pre>

            <h3>Installation</h3>
            <ol>
                <li>Clone or download this repository</li>
                <li>Ensure your dataset (<code>Heart Attack Data Set.csv</code>) is in the working directory</li>
                <li>Install the required R packages (see above)</li>
                <li>Run the script: <code>source("Healthcare_project.R")</code></li>
            </ol>

            <h3>Usage</h3>
            <pre><code># Load and run the entire analysis
source("Healthcare_project.R")</code></pre>

            <h2>📊 Analysis Pipeline</h2>

            <h3>1. Data Preprocessing</h3>
            <ul>
                <li>Load CSV data</li>
                <li>Remove duplicate rows</li>
                <li>Handle missing values (complete case deletion)</li>
                <li>Automatic target variable detection</li>
                <li>Convert categorical variables to factors</li>
            </ul>

            <h3>2. Machine Learning Model</h3>
            <ul>
                <li><strong>Algorithm:</strong> Logistic Regression (GLM with binomial family)</li>
                <li><strong>Train-Test Split:</strong> 70% training, 30% testing (seed = 42)</li>
                <li><strong>Prediction Threshold:</strong> 0.5 probability cutoff</li>
                <li><strong>Evaluation:</strong> Confusion matrix for model performance</li>
            </ul>

            <h3>3. Descriptive Statistics</h3>
            <ul>
                <li>Overall summary statistics for all variables</li>
                <li>Mean and standard deviation for numerical features</li>
                <li>Frequency tables for categorical variables</li>
                <li>Mean comparison by heart attack outcome groups</li>
            </ul>

            <h3>4. Data Visualizations</h3>

            <h4>Generated Plots:</h4>
            <ol>
                <li><strong>Age Distribution:</strong> Histogram showing age demographics</li>
                <li><strong>Age by Outcome:</strong> Boxplot comparing age across heart attack groups</li>
                <li><strong>Sex Distribution:</strong> Bar chart of gender distribution</li>
                <li><strong>Sex by Outcome:</strong> Grouped bar chart showing gender vs heart attack outcome</li>
                <li><strong>Cholesterol vs Blood Pressure:</strong> Scatter plot with linear regression line</li>
                <li><strong>Correlation Heatmap:</strong> Visual representation of variable correlations</li>
            </ol>

            <h3>5. Statistical Testing</h3>

            <h4>Independent T-Tests</h4>
            <p>Compares means of all numerical variables between heart attack outcome groups to identify statistically significant differences.</p>

            <h4>Two-Way ANOVA</h4>
            <p>Tests the interaction effects between heart attack outcome and sex on age, examining whether the relationship between age and heart attack risk differs by gender.</p>

            <h2>📈 Expected Output</h2>

            <h3>Console Output:</h3>
            <ul>
                <li>Target column identification</li>
                <li>Confusion matrix (Predicted vs Actual)</li>
                <li>Summary statistics (min, max, median, quartiles)</li>
                <li>Means and standard deviations for numerical variables</li>
                <li>Frequency counts for categorical variables</li>
                <li>Mean comparisons by outcome group</li>
                <li>T-test results (p-values and group means)</li>
                <li>ANOVA summary table (F-statistics and p-values)</li>
            </ul>

            <h3>Visualizations:</h3>
            <p>Multiple ggplot2 graphics displayed in the plot window showing distributions, relationships, and patterns in the data.</p>

            <h2>🔧 Customization</h2>

            <h3>Modify Target Variable Detection</h3>
            <pre><code># Add your custom target column names
possible_targets <- c("output", "target", "your_custom_name")</code></pre>

            <h3>Adjust Train-Test Split</h3>
            <pre><code># Change to 80/20 split
train_rows <- sample(1:n, size = 0.8 * n)</code></pre>

            <h3>Change Prediction Threshold</h3>
            <pre><code># Use 0.6 instead of 0.5
pred <- ifelse(prob > 0.6, 1, 0)</code></pre>

            <h2>⚠️ Limitations & Considerations</h2>
            <ul>
                <li><strong>Missing Data:</strong> Current approach uses complete case deletion which may introduce bias</li>
                <li><strong>Model Selection:</strong> Only logistic regression is implemented; consider ensemble methods for better performance</li>
                <li><strong>Feature Engineering:</strong> No advanced feature creation or interaction terms</li>
                <li><strong>Validation:</strong> No cross-validation; single train-test split may not be robust</li>
                <li><strong>Class Imbalance:</strong> No handling of potential imbalanced classes</li>
            </ul>

            <h2>🔮 Future Enhancements</h2>
            <ul>
                <li>Implement advanced imputation methods for missing data</li>
                <li>Add Random Forest, SVM, and Neural Network models</li>
                <li>Include feature importance analysis</li>
                <li>Implement k-fold cross-validation</li>
                <li>Add ROC curve and AUC metrics</li>
                <li>Create interactive Shiny dashboard</li>
                <li>Export results and visualizations automatically</li>
                <li>Add model hyperparameter tuning</li>
            </ul>

            <h2>📚 References & Resources</h2>
            <ul>
                <li><a href="https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/glm">GLM Documentation</a></li>
                <li><a href="https://ggplot2.tidyverse.org/">ggplot2 Documentation</a></li>
                <li><a href="https://www.who.int/health-topics/cardiovascular-diseases">WHO - Cardiovascular Diseases</a></li>
                <li><a href="https://www.heart.org/">American Heart Association</a></li>
            </ul>

            <h2>👥 Contributing</h2>
            <p>
                Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests 
                for any improvements or bug fixes.
            </p>

            <h2>📄 License</h2>
            <p>
                This project is available for educational and research purposes. Please ensure compliance with healthcare 
                data regulations (HIPAA, GDPR, etc.) when working with real patient data.
            </p>

            <h2>📧 Contact</h2>
            <p>
                For questions, suggestions, or collaboration opportunities, please open an issue in the repository 
                or contact the project maintainers.
            </p>

            <div class="info-box" style="margin-top: 30px;">
                <strong><span class="emoji">🏥</span> Medical Disclaimer:</strong> This tool is for research and educational 
                purposes only. It should not be used as a substitute for professional medical advice, diagnosis, or treatment. 
                Always consult with qualified healthcare professionals for medical decisions.
            </div>
        </div>

        <footer>
            <p><strong>Heart Attack Prediction Project</strong></p>
            <p>Advancing Healthcare Through Data Science</p>
            <p style="margin-top: 10px; font-size: 0.9em; opacity: 0.8;">
                Built with R • ggplot2 • Statistical Analysis • Machine Learning
            </p>
        </footer>
    </div>
</body>
</html>