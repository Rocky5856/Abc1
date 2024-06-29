import sqlite3

# Connect to the SQLite database
conn = sqlite3.connect('bank.db')
cursor = conn.cursor()
try:
    # Assuming you have a table named 'customers' with columns 'id', 'name', 'account_number', 'balance'
    customer_id = 1  # Example customer ID to update
    new_account_number = '1234567890'  # New account number
    new_balance = 99,80,000  # New balance amount

    cursor.execute("UPDATE customers SET account_number = ?, balance = ? WHERE id = ?", (new_account_number, new_balance, customer_id))
    
    # Commit the transaction
    conn.commit()
    print("Bank details updated successfully")

except sqlite3.Error as e:
    print(f"Error updating bank details: {e}")

finally:
    # Close the database connection
    conn.close()
