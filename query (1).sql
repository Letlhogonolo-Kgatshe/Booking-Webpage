-- Drop existing tables if they exist to ensure a clean slate
IF OBJECT_ID('dbo.Bookings', 'U') IS NOT NULL
    DROP TABLE dbo.Bookings;

IF OBJECT_ID('dbo.Events', 'U') IS NOT NULL
    DROP TABLE dbo.Events;

IF OBJECT_ID('dbo.Venues', 'U') IS NOT NULL
    DROP TABLE dbo.Venues;

-- Create Venues Table
CREATE TABLE Venues (
    VenueId INT IDENTITY(1,1) PRIMARY KEY,
    VenueName NVARCHAR(MAX) NOT NULL,
    Location NVARCHAR(MAX) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl NVARCHAR(MAX) NOT NULL
);

-- Create Events Table
CREATE TABLE Events (
    EventId INT IDENTITY(1,1) PRIMARY KEY,
    EventName NVARCHAR(MAX) NOT NULL,
    EventDate DATETIME2 NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    VenueId INT NOT NULL,
    CONSTRAINT FK_Events_Venues FOREIGN KEY (VenueId) 
        REFERENCES Venues (VenueId) 
        ON DELETE CASCADE
);

-- Create Bookings Table
CREATE TABLE Bookings (
    BookingId INT IDENTITY(1,1) PRIMARY KEY,
    EventId INT NOT NULL,
    VenueId INT NOT NULL,
    BookingDate DATETIME2 NOT NULL,
    CONSTRAINT FK_Bookings_Events FOREIGN KEY (EventId) 
        REFERENCES Events (EventId) 
        ON DELETE NO ACTION,
    CONSTRAINT FK_Bookings_Venues FOREIGN KEY (VenueId) 
        REFERENCES Venues (VenueId) 
        ON DELETE NO ACTION
);

-- Create Indexes
CREATE INDEX IX_Bookings_EventId ON Bookings (EventId);
CREATE UNIQUE INDEX IX_Bookings_VenueId_BookingDate ON Bookings (VenueId, BookingDate);
CREATE INDEX IX_Events_VenueId ON Events (VenueId);

-- Insert Sample Data into Venues Table
INSERT INTO Venues (VenueName, Location, Capacity, ImageUrl) VALUES
('Grand Hall', 'New York', 500, 'https://www.theplazany.com/wp-content/uploads/2016/02/Events_TheGrandBallroom_Hero_1.jpg'),
('Skyline Rooftop', 'Los Angeles', 200, 'https://res.cloudinary.com/splacer/image/upload/e_improve,f_auto,q_auto,g_auto,c_fill,dpr_2,w_1920,h_1080/v1/production/Splaces/017087/IMG_0067_fbaayr.jpg'),
('Ocean View Conference Center', 'Miami', 350, 'https://cdn-fdpbg.nitrocdn.com/wHPaCkkbFnNsNfrUcCtQZGmNFGDnDwMf/assets/images/optimized/rev-7039afb/www.solemiami.com/wp-content/uploads/2021/01/meeting-ocean-view-dd.jpg');

-- Insert Sample Data into Events Table
INSERT INTO Events (EventName, EventDate, Description, VenueId) VALUES 
('Tech Conference 2025', '2025-06-15', 'Annual tech industry conference.', 1), 
('Wedding Expo', '2025-08-20', 'A showcase of wedding vendors and services.', 2), 
('Music Festival', '2025-09-10', 'Live performances from top artists.', 3);

-- Insert Sample Data into Bookings Table
INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES
(1, 1, '2025-06-10'),
(2, 2, '2025-08-15'),
(3, 3, '2025-09-05');

-- Confirm Data Insertions
SELECT * FROM Venues; 
SELECT * FROM Events; 
SELECT * FROM Bookings;
