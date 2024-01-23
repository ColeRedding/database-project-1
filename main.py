# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.

import mysql.connector

print("Welcome!")


def connect_to_database():
    my_database = mysql.connector.connect(host="localhost", user="root", password="cr14/14cr", database="Project")
    return my_database


def run_command(sql_command):
    database_cursor = databaseConnection.cursor()
    database_cursor.execute(sql_command)
    result = database_cursor.fetchall()
    return result


def main_menu():
    while True:
        print("Please choose an option below:")
        print("0: Quit")
        print("1: Login")
        print("2: Create an account")

        user_input = int(input())
        if user_input == 0:
            break
        elif user_input == 1:
            login()
        elif user_input == 2:
            create_account()

        else:
            print("Enter a valid option")


def login():
    username = str(input("Please enter your username: "))
    password = str(input("Please enter your password: "))
    sql_command = "SELECT * FROM USER WHERE u_name = \"" + username + "\" AND psswrd = \"" + password + "\";"
    search_results = run_command(sql_command)
    if search_results:
        user_menu(username)
    else:
        print("Invalid Login")


def user_menu(username):
    while True:
        print("Please select an option below-")
        print("0: Exit")
        print("1: View bought movies")
        print("2: View rented movies")
        print("3: View bought shows")
        print("4: View rented shows")
        print("5: Search for a specific tag")
        print("6: Purchase media")
        print("7: Get Media information")
        print("8: Get Director information")

        user_input = int(input())
        if user_input == 0:
            break
        elif user_input == 1:
            sql_command = "SELECT MOVIE.name, M_BOUGHT.m_cost FROM MOVIE, M_BOUGHT WHERE username = \"" + username + "\" AND M_BOUGHT.m_isbn = MOVIE.isbn"
            print(run_command(sql_command))
        elif user_input == 2:
            sql_command = "SELECT MOVIE.name, M_RENT.m_rcost, M_RENT.due FROM MOVIE, M_RENT WHERE username = \"" + username + "\" AND M_RENT.m_isbn = MOVIE.isbn"
            print(run_command(sql_command))
        elif user_input == 3:
            sql_command = "SELECT SERIES.name, S_BOUGHT.s_cost FROM SERIES, S_BOUGHT WHERE username = \"" + username + "\" AND S_BOUGHT.s_isbn = SERIES.isbn"
            print(run_command(sql_command))
        elif user_input == 4:
            sql_command = "SELECT SERIES.name, S_RENT.s_rcost, S_RENT.due FROM SERIES, S_RENT WHERE username = \"" + username + "\" AND S_RENT.s_isbn = SERIES.isbn"
            print(run_command(sql_command))
        elif user_input == 5:
            tag_search()
        elif user_input == 6:
            purchase_media(username)
        elif user_input == 7:
            media_info()
        elif user_input == 8:
            director_info()
        else:
            print("Please enter a valid option!")


def tag_search():
    while True:
        print("What kind of media are you looking for?")
        print("0: Exit")
        print("1: School")
        print("2: Military")
        print("3: Gore")
        print("4: Survival")
        print("5: Super Power")
        print("6: Comedy")
        print("7: Drama")
        print("8: Romance")
        print("9: Sci-Fi")
        print("10: Mecha")
        print("11: Fantasy")
        print("12: Action")
        print("13: Mystery")
        print("14: Adventure")
        print("15: Mythology")
        print("16: Music")

        user_input = int(input())

        if user_input == 0:
            break
        elif user_input == 1:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"School\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"School\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 2:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Military\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Military\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 3:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Gore\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Gore\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 4:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Survival\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Survival\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 5:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Super Power\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Super Power\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 6:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Comedy\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Comedy\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 7:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Drama\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Drama\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 8:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Romance\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Romance\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 9:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Sci-Fi\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Sci-Fi\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 10:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Mecha\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Mecha\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 11:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Fantasy\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Fantasy\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 12:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Action\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Action\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 13:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Mystery\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Mystery\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 14:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Adventure\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Adventure\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 15:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Mythology\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Mythology\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        elif user_input == 16:
            sql_command = "SELECT MOVIE.name FROM MOVIE, M_TAGGEDAS WHERE M_TAGGEDAS.i_tag=\"Music\" AND M_TAGGEDAS.m_isbn=MOVIE.isbn"
            print("Movies with desired tag:")
            print(run_command(sql_command))
            sql_command = "SELECT SERIES.name FROM SERIES, S_TAGGEDAS WHERE S_TAGGEDAS.i_tag=\"Music\" AND S_TAGGEDAS.s_isbn=SERIES.isbn"
            print("Series with desired tag:")
            print(run_command(sql_command))
        else:
            print("Please enter a valid option!")

def purchase_media(username):
    user_input = int(input("Do you want to purchase a show(1) or movie(2)?:"))
    if user_input == 1:
        user_isbn_input = str(input("Enter the show's isbn:"))
        sql_command = "SELECT SERIES.isbn FROM SERIES WHERE SERIES.isbn=\""+user_isbn_input+"\";"
        search_results=run_command(sql_command)
        if search_results:
            purchase_series(username, user_isbn_input)
        else:
            print("Title not found :(")


    elif user_input == 2:
        user_isbn_input = str(input("Enter the movie's isbn:"))
        sql_command = "SELECT MOVIE.isbn FROM MOVIE WHERE MOVIE.isbn=\"" + user_isbn_input + "\";"
        search_results = run_command(sql_command)
        if search_results:
            purchase_movie(username, user_isbn_input)
        else:
            print("Title not found :(")

    else:
        print("Exiting...")

def purchase_series(username, user_isbn_input):
    user_input=int(input("Do you want to buy(1) or rent(2)?:"))
    if user_input == 1:
        sql_command = "INSERT INTO S_BOUGHT VALUES (\"" + user_isbn_input + "\", \"" + username + "\", \"7.99\");"
        run_command(sql_command)

        print("Transaction completed!")
    elif user_input == 2:
        sql_command = "INSERT INTO S_RENT VALUES (\"" + user_isbn_input + "\", \"" + username + "\", '2026-12-25', \"0.99\");"
        run_command(sql_command)
        print("Transaction completed!")
    else:
        print("Exiting...")
def purchase_movie(username, user_isbn_input):
    user_input = int(input("Do you want to buy(1) or rent(2)?:"))
    if user_input == 1:
        sql_command = "INSERT INTO M_BOUGHT VALUES (\"" + user_isbn_input + "\", \"" + username + "\", \"7.99\");"
        run_command(sql_command)
        print("Transaction completed!")
    elif user_input == 2:
        sql_command = "INSERT INTO M_RENT VALUES (\"" + user_isbn_input + "\", \"" + username + "\", '2026-12-25', \"0.99\");"
        run_command(sql_command)
        print("Transaction completed!")
    else:
        print("Exiting...")

def media_info():
    user_input=int(input("Are you looking for a movie(1) or a show(2)?"))
    if user_input == 1:
        movie_name=str(input("Enter the movie name:"))
        sql_command = "SELECT MOVIE.isbn FROM MOVIE WHERE MOVIE.name=\"" + movie_name + "\";"
        print("ISBN:")
        print(run_command(sql_command))

        sql_command = "SELECT * FROM MOVIE WHERE MOVIE.name=\"" + movie_name + "\";"
        print(run_command(sql_command))

    elif user_input == 2:
        series_name = str(input("Enter the series name:"))
        sql_command = "SELECT * FROM SERIES WHERE SERIES.name=\"" + series_name + "\";"
        print("ISBN:")
        print(run_command(sql_command))

        sql_command = "SELECT * FROM SERIES WHERE SERIES.name=\"" + series_name + "\";"
        print(run_command(sql_command))
    else:
        print("Exiting...")

def director_info():
    user_input = str(input("Enter the director name:"))
    sql_command = "SELECT * FROM DIRECTOR WHERE DIRECTOR.name=\"" + user_input + "\";"
    print(run_command(sql_command))

    print("Other pieces of media:")
    sql_command = "SELECT MOVIE.name FROM MOVIE, DIRECTOR WHERE DIRECTOR.name=\"" + user_input + "\" AND DIRECTOR.name=MOVIE.d_name;"
    print(run_command(sql_command))
    sql_command = "SELECT SERIES.name FROM SERIES, DIRECTOR WHERE DIRECTOR.name=\"" + user_input + "\" AND DIRECTOR.name=SERIES.d_name;"
    print(run_command(sql_command))
def create_account():
    newusername = str(input("Please create a username: "))
    sql_command = "SELECT * FROM USER WHERE u_name = \"" + newusername + "\";"
    search_results = run_command(sql_command)
    if search_results:
        # Runs if the user is found!
        print("Username already taken :(")
    else:
        newpassword = str(input("Please create a password: "))
        newphone = str(input("Please input a valid phone number (10 digit no dashes or spaces): "))
        if len(newphone) == 10:
            newemail = str(input("Please enter a valid email: "))
            newcardinfo = str(input("Please enter your card information (cardno exp cvc): "))
            newaddress = str(input("Please enter your address: "))
            sql_command = "INSERT INTO USER values (\"" + newusername + "\", \"" + newpassword + "\", \"" + newphone + "\", \"" + newemail + "\", \"" + newcardinfo + "\", \"" + newaddress + "\");"
            run_command(sql_command)
            print("Account Created!")
        else:
            print("Invalid phone number.")


databaseConnection = connect_to_database()
main_menu()

print("Goodbye")

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
