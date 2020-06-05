import array
import mysql.connector

def migration_name():
    return "Adding jobmasterdisp column to chars table"

def check_preconditions(cur):
    return

def needs_to_run(cur):
    cur.execute("SHOW COLUMNS FROM `chars` LIKE 'jobmasterdisp'")

    if not cur.fetchone():
        return True

    return False

def migrate(cur, db):

    try:
        cur.execute("ALTER TABLE `chars` ADD COLUMN `jobmasterdisp` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `moghancement`;")
        db.commit()
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))