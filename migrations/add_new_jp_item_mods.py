import array
import mysql.connector

def migration_name():
    return "Adding item mods to item_mods table"

def check_preconditions(cur):
    cur.execute("SHOW TABLES LIKE 'item_mods';")

    if not cur.fetchone():
        raise Exception("item_mods table does not exist. Please run sql/item_mods.sql")

def needs_to_run(cur):
    # Check to see if a new mod has been added yet
    cur.execute("SELECT * FROM item_mods WHERE itemId='11091' AND modId='965';")

    if cur.fetchone():
        return False

    return True

def migrate(cur, db):

    try:
        cur.execute("UPDATE `item_mods` SET `modid`='993' WHERE `itemId`=10731 AND `modId`=291;")
        cur.execute("INSERT INTO `item_mods` VALUES (11091,965,25);")
        cur.execute("INSERT INTO `item_mods` VALUES (11191,965,12);")
        cur.execute("INSERT INTO `item_mods` VALUES (11559,994,10);")
        cur.execute("INSERT INTO `item_mods` VALUES (13971,976,1);")
        cur.execute("INSERT INTO `item_mods` VALUES (14900,976,1);")
        cur.execute("INSERT INTO `item_mods` VALUES (17273,976,1);")
        cur.execute("INSERT INTO `item_mods` VALUES (21311,976,1);")
        cur.execute("INSERT INTO `item_mods` VALUES (26912,965,25);")
        cur.execute("INSERT INTO `item_mods` VALUES (26913,965,35);")
        cur.execute("UPDATE `item_mods` SET `modid`='993' WHERE `itemId`=27330 AND `modId`=291;")
        cur.execute("UPDATE `item_mods` SET `modid`='993' WHERE `itemId`=27331 AND `modId`=291;")
        cur.execute("INSERT INTO `item_mods` VALUES (27953,976,2);")
        cur.execute("INSERT INTO `item_mods` VALUES (27974,976,2);")
        db.commit()
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))