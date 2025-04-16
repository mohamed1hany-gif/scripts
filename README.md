# 📇 Bash Contact Manager

A lightweight, interactive **Contact Management System** built entirely in Bash. It allows you to store, view, search, and manage contact information via a command-line interface, with data saved in a simple text file.

---

## 📌 Overview

This script offers a user-friendly terminal-based menu to manage your personal or project-specific contact list. Ideal for learning Bash scripting and building practical CLI tools.

---

## 🚀 Features

- 🔹 **Add Contact** – Add a new contact with first name, last name, email, and phone number.
- 🔹 **View Contacts** – Display all contacts stored in the database.
- 🔹 **Search Contact** – Find contacts using a keyword (name, email, or phone).
- 🔹 **Delete All Contacts** – Clear the entire contact list.
- 🔹 **Delete Specific Contact** – Remove a specific contact using a search term.
- 🔹 **Menu-based Navigation** – Simple, interactive menu for ease of use.

---

## 🛠️ How It Works

- All data is stored in a file named `database.txt`.
- User inputs are handled via the Bash `read` command.
- Searches are performed using `grep`.
- Contacts are added using string concatenation and `echo`.
- Deletion uses `grep -v` to filter out matched lines.

---

