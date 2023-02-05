#Residual Plotting
import seaborn as sns
import matplotlib.pyplot as plt
  
# loading dataset
data = sns.load_dataset("tips")
  
# draw residplot
sns.residplot(x = "total_bill",
              y = "tip",
              data = data)
  
# show the plot
plt.show()
  