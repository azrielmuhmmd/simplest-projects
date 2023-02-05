#Curve fitting

import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

x_data = [ -10.0, -9.0, -8.0, -7.0, -6.0, -5.0, -4.0, -3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]
y_data = [1.2, 4.2, 6.7, 8.3, 10.6, 11.7, 13.5, 14.5, 15.7, 16.1, 16.6, 16.0, 15.4, 14.4, 14.2, 12.7, 10.3, 8.6, 6.1, 3.9, 2.1]

#Pendefinisian fungsi Gauss untuk memunculkan curve fitting nanti
def Gauss(x, A, B):
    y = A*np.exp(-1*B*x**2)
    return y
parameters, covariance = curve_fit(Gauss, x_data, y_data)
fit_A = parameters[0]
fit_B = parameters[1]

print(fit_A)
print(fit_B)

x_data = np.asarray(x_data)
y_data = np.asarray(y_data)
plt.plot(x_data, y_data, 'o')
#Memunculkan curve fitting dengan fungsi Gauss yang telah didefinisikan di atas
fit_y = Gauss(x_data, fit_A, fit_B)
plt.plot(x_data, y_data, 'o', label='data')
plt.plot(x_data, fit_y, '-', label='fit')
plt.legend()
plt.show()