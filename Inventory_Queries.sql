-- 1. Database Schema Setup
CREATE TABLE inventory_list (
  Id INT PRIMARY KEY,
  Name VARCHAR(50),
  Price DECIMAL(10,2),
  Quantity INT,
  `Supplier ID` INT
);

-- 2. Data Insertion (Inventory)
INSERT INTO inventory_list VALUES (1, 'Mechanical Keyboard', 120.50, 12, 1);
INSERT INTO inventory_list VALUES (2, 'Wireless Mouse', 25.00, 100, 1);
INSERT INTO inventory_list VALUES (3, 'Monitor 27 inch', 249.99, 12, 1);
INSERT INTO inventory_list VALUES (4, 'Laptop Stand', 35.00, 30, 1);
INSERT INTO inventory_list VALUES (5, 'USB-C Cable', 15.99, 200, 1);
INSERT INTO inventory_list VALUES (6, 'Bluetooth Speaker', 59.99, 45, 1);
INSERT INTO inventory_list VALUES (7, 'Noise Cancelling Headphones', 199.99, 8, 1);
INSERT INTO inventory_list VALUES (8, 'External Hard Drive 1TB', 89.00, 9, 1);
INSERT INTO inventory_list VALUES (9, 'Webcam 1080p', 79.99, 14, 1);
INSERT INTO inventory_list VALUES (10, 'Smartphone Case', 19.99, 150, 1);
INSERT INTO inventory_list VALUES (11, 'Screen Protector', 9.99, 300, 1);
INSERT INTO inventory_list VALUES (12, 'Portable Power Bank', 49.50, 35, 1);
INSERT INTO inventory_list VALUES (13, 'HDMI Cable 6ft', 12.50, 85, 1);
INSERT INTO inventory_list VALUES (14, 'Gaming Mouse Pad', 19.00, 42, 1);
INSERT INTO inventory_list VALUES (15, 'Desktop Speakers', 85.00, 10, 1);
INSERT INTO inventory_list VALUES (16, 'Ring Light', 35.99, 28, 1);
INSERT INTO inventory_list VALUES (17, 'Microphone Stand', 29.50, 15, 1);
INSERT INTO inventory_list VALUES (18, 'Pop Filter', 10.00, 50, 1);
INSERT INTO inventory_list VALUES (19, 'E-Reader', 129.00, 7, 1);
INSERT INTO inventory_list VALUES (20, 'Tablet Sleeve', 24.00, 33, 1);
INSERT INTO inventory_list VALUES (21, 'Wireless Earbuds', 89.99, 20, 1);
INSERT INTO inventory_list VALUES (22, 'Smart Light Bulb', 15.00, 120, 1);
INSERT INTO inventory_list VALUES (23, 'Ergonomic Chair', 350.00, 5, 1);
INSERT INTO inventory_list VALUES (24, 'Desk Lamp', 45.00, 25, 1);
INSERT INTO inventory_list VALUES (25, 'Backpack', 65.00, 22, 1);
INSERT INTO inventory_list VALUES (26, 'Electric Kettle', 40.00, 18, 2);
INSERT INTO inventory_list VALUES (27, 'Coffee Grinder', 55.00, 15, 2);
INSERT INTO inventory_list VALUES (28, 'Travel Mug', 22.50, 60, 2);
INSERT INTO inventory_list VALUES (29, 'Blender', 49.99, 22, 2);
INSERT INTO inventory_list VALUES (30, 'Toaster Oven', 75.00, 9, 2);
INSERT INTO inventory_list VALUES (31, 'Air Fryer', 110.00, 14, 2);
INSERT INTO inventory_list VALUES (32, 'Frying Pan', 35.50, 25, 2);
INSERT INTO inventory_list VALUES (33, 'Chef Knife', 55.00, 11, 2);
INSERT INTO inventory_list VALUES (34, 'Cutting Board', 20.00, 30, 2);
INSERT INTO inventory_list VALUES (35, 'Food Storage Set', 29.99, 40, 2);
INSERT INTO inventory_list VALUES (36, 'Laundry Basket', 18.00, 15, 2);
INSERT INTO inventory_list VALUES (37, 'Ironing Board', 32.00, 8, 2);
INSERT INTO inventory_list VALUES (38, 'Vacuum Cleaner', 189.00, 6, 2);
INSERT INTO inventory_list VALUES (39, 'Standing Fan', 45.00, 12, 2);
INSERT INTO inventory_list VALUES (40, 'Humidifier', 59.00, 10, 2);
INSERT INTO inventory_list VALUES (41, 'Smart Water Bottle', 30.00, 50, 2);
INSERT INTO inventory_list VALUES (42, 'Yoga Mat', 25.99, 40, 2);
INSERT INTO inventory_list VALUES (43, 'Dumbbell Set', 85.00, 10, 2);
INSERT INTO inventory_list VALUES (44, 'Electric Toothbrush', 65.00, 18, 2);
INSERT INTO inventory_list VALUES (45, 'Digital Scale', 25.00, 30, 2);
INSERT INTO inventory_list VALUES (46, 'Air Purifier', 120.00, 5, 2);
INSERT INTO inventory_list VALUES (47, 'Hand Mixer', 35.00, 15, 2);
INSERT INTO inventory_list VALUES (48, 'Storage Bins', 12.00, 50, 2);
INSERT INTO inventory_list VALUES (49, 'Picture Frames', 15.00, 40, 2);
INSERT INTO inventory_list VALUES (50, 'Wall Clock', 20.00, 20, 2);

-- 3. Supplier Table & Data
CREATE TABLE suppliers (
	`Supplier ID` INT PRIMARY KEY,
	`Supplier Name` VARCHAR(50),
	`Location` VARCHAR(50)
);

INSERT INTO suppliers VALUES (1, 'Techlink Solutions', 'Domestic');
INSERT INTO suppliers VALUES (2, 'Global Prime Imports', 'International');

-- 4. Final Analytical Query
SELECT 
    inventory_list.Name, 
    inventory_list.Price, 
    inventory_list.Quantity,
    (inventory_list.Price * inventory_list.Quantity) AS 'Total Value',
    suppliers.`Supplier Name`, 
    suppliers.Location
FROM inventory_list
JOIN suppliers ON inventory_list.`Supplier ID` = suppliers.`Supplier ID`
ORDER BY Location DESC, inventory_list.Price DESC;
