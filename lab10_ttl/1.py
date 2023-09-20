import pandas as pd
df = pd.read_csv(r"C:\Users\DHRITI\Downloads\Salaries.csv")
print(df)


result = df.head(10)
print("First 10 rows of the DataFrame:")
print(result)

print("Male Professor with highest salary:",
      df[(df['rank'] == 'Prof') & (df['sex'] == 'Male')]['salary'].max())
print("Male Professor with lowest salary:",
      df[(df['rank'] == 'Prof') & (df['sex'] == 'Male')]['salary'].min())
print("Female Professor with highest salary:",
      df[(df['rank'] == 'Prof') & (df['sex'] == 'Female')]['salary'].max())
print("Female Professor with lowest salary:",
      df[(df['rank'] == 'Prof') & (df['sex'] == 'Female')]['salary'].min())


print("Professor with highest salary:",
      df[df['rank'] == 'Prof']['salary'].max())
print("Professor with lowest salary:",
      df[df['rank'] == 'Prof']['salary'].min())


# Replacing missing 'Salaries' with the mean of matching salaries
df['salary'] = df.groupby('service')['salary'].transform(
    lambda x: x.fillna(x.mean()))

# Replacing missing 'phd' with the mean of matching 'service'
df['phd'] = df.groupby('service')['phd'].transform(
    lambda x: x.fillna(x.mean()))

# Counting Male Staff and Female Staff
print("Number of Male Staff:",
      df[(df['rank'] == 'Staff') & (df['sex'] == 'Male')].shape[0])
print("Number of Female Staff:",
      df[(df['rank'] == 'Staff') & (df['sex'] == 'Female')].shape[0])

# Counting Prof, AssocProf, and AsstProf
print("Number of Prof:", df[df['rank'] == 'Prof'].shape[0])
print("Number of AssocProf:", df[df['rank'] == 'AssocProf'].shape[0])
print("Number of AsstProf:", df[df['rank'] == 'AsstProf'].shape[0])

# Finding the senior and junior most employees
print("Senior most employee:\n", df[df['service'] == df['service'].max()])
print("Junior most employee:\n", df[df['service'] == df['service'].min()])
