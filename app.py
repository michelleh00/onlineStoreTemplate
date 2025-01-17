#!/usr/bin/env python3

from authentication.auth_tools import login_pipeline, update_passwords, hash_password
from database.db import Database
from flask import Flask, render_template, request
from core.session import Sessions

app = Flask(__name__)
HOST, PORT = 'localhost', 3000
global username, products, db, sessions
username = 'default'
db = Database('database/store_records.db')
products = db.get_full_inventory()
sessions = Sessions()
sessions.add_new_session(username, db)


@app.route('/')
def index_page():
    """
    Renders the index page when the user is at the `/` endpoint, passing along default flask variables.

    args:
        - None

    returns:
        - None
    """
    return render_template('index.html', username=username, products=products, sessions=sessions)


@app.route('/login')
def login_page():
    """
    Renders the login page when the user is at the `/login` endpoint.

    args:
        - None

    returns:
        - None
    """
    return render_template('login.html')

@app.route('/contact')
def contact_page():
    """
    Renders the contact page when the user is at the `/contact` endpoint.

    args:
        - None

    returns:
        - None
    """
    return render_template('contact.html')

@app.route('/home', methods=['POST'])
def login():
    """
    Renders the home page when the user is at the `/home` endpoint with a POST request.

    args:
        - None

    returns:
        - None

    modifies:
        - sessions: adds a new session to the sessions object

    """
    username = request.form['username']
    password = request.form['password']
    if login_pipeline(username, password):
        sessions.add_new_session(username, db)
        return render_template('home.html', products=products, sessions=sessions)
    else:
        print(f"Incorrect username ({username}) or password ({password}).")
        return render_template('login_error.html')


@app.route('/register')
def register_page():
    """
    Renders the register page when the user is at the `/register` endpoint.

    args:
        - None

    returns:
        - None
    """
    return render_template('register.html')


@app.route('/register', methods=['POST'])
def register():
    """
    Renders the index page when the user is at the `/register` endpoint with a POST request.

    args:
        - None

    returns:
        - None

    modifies:
        - passwords.txt: adds a new username and password combination to the file
        - database/store_records.db: adds a new user to the database
    """
    username = request.form['username']
    password = request.form['password']
    email = request.form['email']
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    
    if email_already_in_use(email):
        print("Error: Invalid email- User attempted to register an email that is already associated with an account")
        return render_template('email_already_in_use.html')
    elif valid_username(username):
        salt, key = hash_password(password)
        update_passwords(username, key, salt)
        db.insert_user(username, key, email, first_name, last_name)
        return render_template('index.html')
    else:
        print("Error: Invalid username- User attempted to register a username containing special characters")
        return render_template('invalid_username.html')      


"""
    Checks if the username contains only letters and numbers

    args:
        - None

    returns:
        - True if contains only letters/numbers, or False if contains special characters

    modifies:
        - register(): checks if username is valid before allowing registration
    """
def valid_username(username):
    username = request.form['username']
    
    if all(i.isalnum() for i in username):
        return True
    else:
        return False

"""
    Checks if the email has already been registered

    args:
        - email

    returns:
        - True if already registered, or False if unregistered

    modifies:
        - register(): checks if email has already been registered before allowing registration
    """

def email_already_in_use(email: str):
    db.cursor.execute("SELECT email FROM users WHERE email = ?", (email,))
    result = db.cursor.fetchone()
    if result:
        return True
    else:
        return False    
    
@app.route('/checkout', methods=['POST'])
def checkout():
    """
    Renders the checkout page when the user is at the `/checkout` endpoint with a POST request.

    args:
        - None

    returns:
        - None

    modifies:
        - sessions: adds items to the user's cart
    """
    order = {}
    user_session = sessions.get_session(username)

    for item in products:
        item_id = str(item['id'])
        req_quantity_str = request.form.get(item_id, '').strip()

        if req_quantity_str and req_quantity_str.isdigit():
            req_quantity = int(req_quantity_str)
        else:
            req_quantity = 0

        if 0 < req_quantity <= item['stock']:
            order[item['item_name']] = [req_quantity, item['price']]
            user_session.add_new_item(item['id'], item['item_name'], item['price'], req_quantity)
            
    if order:
        user_session.submit_cart()
        return render_template('checkout.html', orders=order, sessions=sessions, total_cost=user_session.total_cost)
    else:
        return render_template('checkout_error.html')



@app.route('/search', methods=['GET', 'POST'])
def search():
    query = request.form.get('query', '').lower()
    search_results = []
    if query:
        search_results = [product for product in products if query in product["item_name"].lower()]

    return render_template('search.html', query=query, search=search_results, products=products)


if __name__ == '__main__':
    app.run(debug=True, host=HOST, port=PORT)
