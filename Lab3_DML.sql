// додаємо нову кімнату
INSERT INTO Room (roomid, roomnumber, roomname)
VALUES (4, 104, 'Вбиральня');

// додаємо розробників

INSERT INTO Employee (EmployeeID, FullName, Position) 
VALUES (5, 'Задко Юрій Сергійович', 'Senior Системний адміністратор');

INSERT INTO Employee (EmployeeID, FullName, Position) 
VALUES (6, 'Бондаренко Олексій Ігорович', 'Middle Java Developer');

// Додаємо нове майно 
INSERT INTO Asset (AssetID, InventoryNumber, AssetName, Price, CategoryID) 
VALUES (8, 'INV-PERI-001', 'Механічна клавіатура Keychron', 4500.00, 1),
       (9, 'INV-PERI-002', 'Миша Logitech MX Master', 3800.00, 1);

// Закріпляю клавіатуру за Олексієм
INSERT INTO Asset_Allocation (AllocationID, AssetID, EmployeeID, RoomID, IssueDate, ReturnDate) 
VALUES (6, 8, 6, 1, '2026-05-02', NULL);

// Закріпляю мишу за Юрієм
INSERT INTO Asset_Allocation (AllocationID, AssetID, EmployeeID, RoomID, IssueDate, ReturnDate) 
VALUES (7, 9, 5, 1, '2026-05-02', NULL);

// Оновлення посади співробітника 
UPDATE Employee
SET Position = 'Lead Java Developer'
WHERE EmployeeID = 6;

// Збільшення цін на все у певній категорії (Комп. техніка)
UPDATE Asset 
SET Price = Price + 1000
WHERE CategoryID = 1;

// Збільшення ціни тільки на макбук
UPDATE Asset
SET Price = Price + 4835
WHERE AssetID = 1; 

// Отримання данних
SELECT * 
FROM Asset
WHERE assetid = 1 AND assetname = 'Ноутбук Apple MacBook Pro 16';

SELECT *
FROM Room
WHERE roomnumber = '104';

SELECT *
FROM Asset_Allocation
WHERE returndate IS NULL;


// Видалення майна співробітника
DELETE FROM Asset_Allocation
WHERE EmployeeID = 6;

// Звільнення співробітника 
DELETE FROM Employee 
WHERE EmployeeID = 6;

