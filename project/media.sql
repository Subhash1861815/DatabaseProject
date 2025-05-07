CREATE TABLE media (
    mediaID INT PRIMARY KEY,     
    tagline NVARCHAR(MAX),                    
    popularity FLOAT,                 
    runtime INT,                
    overview NVARCHAR(MAX),                   
    releaseDate DATE,                
    revenue FLOAT,                     
    mediaStatus NVARCHAR(50),                      
    title NVARCHAR(255),
    budget FLOAT,
    language NVARCHAR(50)               
);

CREATE TABLE IMDB (
    IMDBID NVARCHAR(10),
    mediaID INT,
    IMDBVotes INT,
    IMDBRating FLOAT,
    PRIMARY KEY (IMDBID, mediaID),
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE
);

CREATE TABLE genre (
    genreID INT IDENTITY(1,1) PRIMARY KEY,   
    genreName NVARCHAR(50)                         
);

CREATE TABLE listedIn (
    mediaID INT,        
    genreID INT,      
    PRIMARY KEY (mediaID, genreID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (genreID) REFERENCES genre(genreID) ON DELETE CASCADE
);

CREATE TABLE writer (
    writerID INT IDENTITY(1,1) PRIMARY KEY,   
    writerName NVARCHAR(MAX) 
);

CREATE TABLE hasWriter (
    mediaID INT,        
    writerID INT,      
    PRIMARY KEY (mediaID, writerID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (writerID) REFERENCES writer(writerID) ON DELETE CASCADE  
);

CREATE TABLE mediaCast (
    castID INT IDENTITY(1,1) PRIMARY KEY,   
    castName NVARCHAR(MAX) 
);

CREATE TABLE actedIn (
    mediaID INT,        
    castID INT,      
    PRIMARY KEY (mediaID, castID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (castID) REFERENCES mediaCast(castID) ON DELETE CASCADE 
);

CREATE TABLE producer (
    producerID INT IDENTITY(1,1) PRIMARY KEY,   
    producerName NVARCHAR(MAX) 
);

CREATE TABLE hasProducer (
    mediaID INT,        
    producerID INT,      
    PRIMARY KEY (mediaID, producerID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (producerID) REFERENCES producer(producerID) ON DELETE CASCADE 
);

CREATE TABLE country (
    countryID INT IDENTITY(1,1) PRIMARY KEY,        
    productionCountry NVARCHAR(MAX)
);

CREATE TABLE producedIn (
    mediaID INT,        
    countryID INT,      
    PRIMARY KEY (mediaID, countryID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (countryID) REFERENCES country(countryID) ON DELETE CASCADE 
);

CREATE TABLE director (
    directorID INT IDENTITY(1,1) PRIMARY KEY,      
    directorName NVARCHAR(MAX)
);

CREATE TABLE directedBy (
    mediaID INT,        
    directorID INT,      
    PRIMARY KEY (mediaID, directorID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (directorID) REFERENCES director(directorID) ON DELETE CASCADE 
);

CREATE TABLE company (
    companyID INT IDENTITY(1,1) PRIMARY KEY,        
    productionCompany NVARCHAR(MAX)
);

CREATE TABLE producedBy (
    mediaID INT,        
    companyID INT,      
    PRIMARY KEY (mediaID, companyID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (companyID) REFERENCES company(companyID) ON DELETE CASCADE 
);

CREATE TABLE musicComposer (
    musicComposerID INT IDENTITY(1,1) PRIMARY KEY,   
    musicComposerName NVARCHAR(MAX) 
);

CREATE TABLE hasMusicComposer (
    mediaID INT,        
    musicComposerID INT,      
    PRIMARY KEY (mediaID, musicComposerID),  
    FOREIGN KEY (mediaID) REFERENCES media(mediaID) ON DELETE CASCADE,
    FOREIGN KEY (musicComposerID) REFERENCES musicComposer(musicComposerID)ON DELETE CASCADE 
);

