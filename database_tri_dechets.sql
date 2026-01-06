-- Suppression préalable
DROP TABLE IF EXISTS  BonReduction, Depot, Dechet, Produit, Compte, Poubelle, Contrat, Commerce, CentreTri;
-- Table CentreTri
CREATE TABLE CentreTri (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code INT NOT NULL, 
    nom VARCHAR(100),
    numRue INT,
    nomRue VARCHAR(100),
    ville VARCHAR(100),
    codePostal IbonreductioncommerceNT
);

-- Table Poubelle

CREATE TABLE Poubelle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    couleur VARCHAR(20),             
    nomQuartier VARCHAR(100),
    latitude FLOAT,
    longitude FLOAT,
    capaciteMaxKg INT,
    capaciteOccupeeKg INT,
    centreTriId INT,
    FOREIGN KEY (centreTriId) REFERENCES CentreTri(id)
);

-- Table Commerce
CREATE TABLE Commerce (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100)
);

-- Table Contrat
CREATE TABLE Contrat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dateDebut DATE,
    dateFin DATE,
    reglesUtilisation TEXT,
    centreTriId INT,
    commerceId INT,
    FOREIGN KEY (centreTriId) REFERENCES CentreTri(id),
    FOREIGN KEY (commerceId) REFERENCES Commerce(id)
);

-- Table Produit
CREATE TABLE Produit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    categorie VARCHAR(100),
    commerceId INT,
    FOREIGN KEY (commerceId) REFERENCES Commerce(id)
);

-- Table BonReduction
CREATE TABLE BonReduction (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pourcentage INT,
    nbPoint INT,
    produitId INT,
    FOREIGN KEY (produitId) REFERENCES Produit(id)
);

-- Table Compte
CREATE TABLE Compte (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code INT,
    nom VARCHAR(100),
    nbPointsFidelite INT
);

-- Table Dechet
CREATE TABLE Dechet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50) ,
    poids INT CHECK (poids > 0)
);

-- Table Depot
CREATE TABLE Depot (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dateDepot DATETIME,
    quantite INT CHECK (quantite > 0),
    pointsAttribues INT,
    compteId INT,
    poubelleId INT,
    dechetId INT,
    FOREIGN KEY (dechetId) REFERENCES Dechet(id),
    FOREIGN KEY (compteId) REFERENCES Compte(id),
    FOREIGN KEY (poubelleId) REFERENCES Poubelle(id)
);
SELECT * FROM CentreTri;
SELECT * FROM Poubelle;
SELECT * FROM Commerce;
SELECT * FROM Contrat;
SELECT * FROM Produit;
SELECT * FROM BonReduction;
SELECT * FROM Poubelle;
SELECT * FROM Compte;
SELECT * FROM Dechet;
SELECT * FROM Depot;
USE tri_dechets;

SHOW TABLES;
DESCRIBE Compte;
INSERT INTO Produit (nom, categorie, commerceId)
VALUES ('Bon d\'achat 10€', 'Bon d\'achat', 1);











