# DATABASE LAB - AI LEARNING LOG
==============================
Lab Number: 01
Date: February 9, 2026
Name: Dilshad Ali
---

## AI INTERACTION #1
-----------------
**Task:** Understanding the assignment structure and workflow

**AI Tool Used:** Claude AI

**Prompt:** 
"I have a database lab assignment. I've already set up PostgreSQL and DBeaver. Now I need help understanding what screenshots I need and how to connect everything to GitHub. Can you guide me step-by-step?"

**Response Quality:** ⭐⭐⭐⭐⭐ (5/5)

**Key Learnings:**
- Learned the difference between working in DBeaver GUI vs creating SQL files
- Understood that Git tracks files, not GUI clicks
- SQL files are necessary for version control and reproducibility
- GitHub serves as both backup and professional portfolio

**How I Verified:**
- Successfully created SQL files in terminal
- Verified files were tracked by Git with `git status`
- Confirmed files appeared on GitHub after push

**What I Modified:**
- None - followed instructions as provided for initial setup

---

## AI INTERACTION #2
-----------------
**Task:** Fixing PostgreSQL user authentication error

**AI Tool Used:** Claude AI

**Prompt:**
"I'm getting error: 'FATAL: role dilshadali does not exist' when trying to connect to PostgreSQL. How do I fix this?"

**Response Quality:** ⭐⭐⭐⭐⭐ (5/5)

**Key Learnings:**
- PostgreSQL has separate user system from Linux users
- Need to create database users explicitly with CREATE USER command
- SUPERUSER privilege allows full database access (important for learning)
- The `-u` flag in `sudo -u postgres` switches to postgres system user

**How I Verified:**
- Successfully connected to PostgreSQL after creating user
- Ran `\du` command to list users and confirmed dilshadali exists
- Successfully created students table with the new user

**What I Modified:**
- Used my own password instead of example password for security

---

## AI INTERACTION #3
-----------------
**Task:** Understanding Git repository structure and file organization

**AI Tool Used:** Claude AI

**Prompt:**
"Why do I need to create README.md, queries.sql, and NOTES.md files? What's the purpose of each?"

**Response Quality:** ⭐⭐⭐⭐ (4/5)

**Key Learnings:**
- README.md is the project's front page on GitHub (rendered nicely)
- SQL files contain executable code for reproducibility
- NOTES.md documents learning process (important for reflection)
- Proper file organization makes projects professional and maintainable

**How I Verified:**
- Checked GitHub repository to see how README.md renders
- Viewed file structure using `ls -lh ~/database-labs/lab1/`
- Confirmed all files appear in GitHub web interface

**What I Modified:**
- Customized README.md with my actual information
- Added personal notes to NOTES.md about my specific challenges

---

## AI INTERACTION #4
-----------------
**Task:** GitHub authentication with Personal Access Token

**AI Tool Used:** Claude AI

**Prompt:**
"Git push is failing with 'Authentication failed' error. What's wrong?"

**Response Quality:** ⭐⭐⭐⭐⭐ (5/5)

**Key Learnings:**
- GitHub no longer accepts password authentication for security
- Personal Access Tokens (PAT) are required for HTTPS git operations
- Tokens can have expiration dates (90 days is recommended)
- Tokens should be saved securely as they can't be viewed again
- Token gives same permissions as password but is more secure

**How I Verified:**
- Successfully pushed to GitHub after using PAT
- Verified commit appeared on GitHub web interface
- Checked commit history with `git log --oneline`

**What I Modified:**
- Generated my own PAT with 90-day expiration
- Saved token securely for future use

---

## AI INTERACTION #5
-----------------
**Task:** Running SQL queries and understanding database operations

**AI Tool Used:** Claude AI

**Prompt:**
"I need to create 5 different analytical queries for my assignment. Can you explain what types of queries demonstrate different SQL concepts?"

**Response Quality:** ⭐⭐⭐⭐⭐ (5/5)

**Key Learnings:**
- Different query types demonstrate different SQL concepts:
  - WHERE clause for filtering data
  - ORDER BY for sorting results
  - GROUP BY for aggregation (AVG, COUNT, SUM)
  - Comparison operators (>, <, =, <=)
  - IN clause for multiple conditions
- Each query should have a clear analytical purpose
- Results should be verified manually to ensure correctness

**How I Verified:**
- Ran all 7 queries in DBeaver and checked results
- Manually counted students to verify COUNT() results
- Checked CGPA ordering was correct (highest to lowest)
- Confirmed filtered results matched WHERE conditions

**What I Modified:**
- Added additional query (#6) for MIN/MAX ages beyond requirements
- Added query (#7) using IN clause for multiple departments
- Took screenshots of each query with results for documentation

---

## OVERALL REFLECTION

**Total AI Interactions:** 5 high-quality interactions documented

**Most Helpful Interaction:** 
AI Interaction #2 (PostgreSQL user creation) - This solved a blocking issue that would have taken hours to debug on my own.

**Key Insight:**
AI is most useful when you provide exact error messages and context. Vague questions get vague answers.

**Verification Strategy:**
Always test AI suggestions before accepting them as correct. Use multiple verification methods (commands, GUI, documentation).

**Learning Growth:**
Went from confused about Git/GitHub workflow to successfully managing a professional repository with proper version control.
