/*CREATE TABLE Patients (

    PatientID BIGINT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(100) NOT NULL,
    Lname VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Gender ENUM('Male', 'Female') NOT NULL,
    Address VARCHAR(250),
    PhoneNo VARCHAR(20),
    BloodType ENUM('A+', 'B+', 'O+', 'A-', 'B-', 'O-', 'AB-', 'AB+') NOT NULL,
    Allergies TEXT DEFAULT 'None',
    ExistingMedications TEXT DEFAULT 'None',
    EmergencyContactName VARCHAR(100),
    EmergencyContactPhone VARCHAR(20),
    Relationship VARCHAR(50),
    UserName VARCHAR(100) UNIQUE NOT NULL,
    Password_Hash VARCHAR(255) NOT NULL,
    AccountStatus BOOLEAN DEFAULT TRUE,
    Nationality VARCHAR(50) NOT NULL,
    MaritalStatus ENUM('Single', 'Married', 'Divorced', 'Widowed'),
    Occupation VARCHAR(100),
    PreferredLanguage VARCHAR(50)
);*/

/*INSERT INTO Patients 
(Fname, Lname, DOB, Gender, Address, PhoneNo, BloodType, Allergies, ExistingMedications, 
 EmergencyContactName, EmergencyContactPhone, Relationship, UserName, Password_Hash, 
 AccountStatus, Nationality, MaritalStatus, Occupation, PreferredLanguage) 
VALUES
('John', 'Doe', '1990-05-15', 'Male', '123 Main St, New York, NY', '123-456-7890', 'O+', 'Peanuts', 'Aspirin', 
 'Jane Doe', '987-654-3210', 'Spouse', 'johndoe90', 'hashed_password_1', 1, 'American', 'Married', 'Software Engineer', 'English');

INSERT INTO Patients 
(Fname, Lname, DOB, Gender, Address, PhoneNo, BloodType, Allergies, ExistingMedications, 
 EmergencyContactName, EmergencyContactPhone, Relationship, UserName, Password_Hash, 
 AccountStatus, Nationality, MaritalStatus, Occupation, PreferredLanguage) 
VALUES
('Alice', 'Smith', '1985-09-20', 'Female', '456 Oak St, Los Angeles, CA', '321-654-0987', 'A-', 'None', 'Ibuprofen', 
 'Bob Smith', '456-789-1234', 'Brother', 'alicesmith85', 'hashed_password_2', 1, 'Canadian', 'Single', 'Nurse', 'French');

-- Repeat for the remaining rows
*/
show tables;
/*CREATE TABLE HealthcareProviders (
    ProviderID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT,
    Fname VARCHAR(100) NOT NULL,
    Lname VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    LicenseNumber VARCHAR(50) UNIQUE NOT NULL,
    ContactNumber VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(250),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    EducationBackground TEXT,
    YearsOfExperience INT,
    JoinDate DATE NOT NULL,
    Status ENUM('Active', 'Inactive', 'On Leave') DEFAULT 'Active',
    UserName VARCHAR(100) UNIQUE NOT NULL,
    Password_Hash VARCHAR(255) NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);*/
/*desc HealthcareProviders;*/
/*INSERT INTO HealthcareProviders 
(PatientID, Fname, Lname, Specialization, LicenseNumber, ContactNumber, Email, Address, DateOfBirth, Gender, EducationBackground, YearsOfExperience, JoinDate, Status, UserName, Password_Hash)
VALUES 
(1, 'John', 'Doe', 'Cardiology', 'LIC123456', '123-456-7890', 'john.doe@example.com', '123 Medical St, City, State, ZIP', '1980-01-15', 'Male', 'MD from University of Medical Sciences', 10, '2022-01-01', 'Active', 'johndoe_cardio', 'hashed_password_here');
*/
/*select * from HealthcareProviders;*/

/*CREATE TABLE Appointments (
    AppointmentID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    AppointmentDateTime DATETIME NOT NULL,
    AppointmentType VARCHAR(50),
    Status ENUM('Scheduled', 'Completed', 'Cancelled', 'No-Show') DEFAULT 'Scheduled',
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/


/*CREATE TABLE MedicalRecords (
    RecordID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    VisitDate DATE NOT NULL,
    Diagnosis TEXT,
    Treatment TEXT,
    Prescriptions TEXT,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE Prescriptions (
    PrescriptionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    MedicationName VARCHAR(100) NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Instructions TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE LabTests (

    TestID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    TestName VARCHAR(100) NOT NULL,
    TestDate DATE NOT NULL,
    Results TEXT,
    NormalRange VARCHAR(100),
    Interpretation TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE Billing (
    BillID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    ServiceDate DATE NOT NULL,
    Description TEXT,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentStatus ENUM('Pending', 'Paid', 'Overdue') DEFAULT 'Pending',
    InsuranceClaim BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE TelemedicineSessions (
    SessionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    SessionDateTime DATETIME NOT NULL,
    PlatformUsed VARCHAR(50),
    Duration INT, -- in minutes
    TechnicalIssues TEXT,
    SessionNotes TEXT,
    FollowUpRequired BOOLEAN,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE WearableDeviceData (
    DataID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    DeviceType VARCHAR(50),
    RecordedDateTime DATETIME NOT NULL,
    HeartRate INT,
    StepCount INT,
    SleepDuration INT, -- in minutes
    BloodPressureSystolic INT,
    BloodPressureDiastolic INT,
    BloodGlucose DECIMAL(5,2),
    OxygenSaturation DECIMAL(4,2),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);*/

/*CREATE TABLE GeneticProfiles (
    ProfileID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    TestDate DATE NOT NULL,
    GeneticMarkers TEXT,
    RiskFactors TEXT,
    RecommendedScreenings TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);*/

/*CREATE TABLE MentalHealthAssessments (
    AssessmentID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    AssessmentDate DATE NOT NULL,
    AssessmentType VARCHAR(100),
    Scores TEXT,
    Interpretation TEXT,
    RecommendedTreatment TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE NutritionalPlans (
    PlanID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    ProviderID BIGINT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    DietType VARCHAR(50),
    CalorieGoal INT,
    MacronutrientRatio VARCHAR(20),
    SpecificRestrictions TEXT,
    MealPlanDetails TEXT,
    Progress TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE CarePaths (
    PathID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PathName VARCHAR(100) NOT NULL,
    Description TEXT,
    TargetCondition VARCHAR(100),
    CreatedDate DATE NOT NULL,
    LastUpdated DATE
);*/

/*CREATE TABLE CarePathStages (
    StageID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PathID BIGINT NOT NULL,
    StageName VARCHAR(100) NOT NULL,
    StageOrder INT NOT NULL,
    Duration VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (PathID) REFERENCES CarePaths(PathID)
);*/

/*CREATE TABLE PatientCarePaths (
    PatientCarePathID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    PathID BIGINT NOT NULL,
    CurrentStageID BIGINT,
    StartDate DATE NOT NULL,
    EstimatedEndDate DATE,
    ActualEndDate DATE,
    Status ENUM('Active', 'Completed', 'Discontinued') DEFAULT 'Active',
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PathID) REFERENCES CarePaths(PathID),
    FOREIGN KEY (CurrentStageID) REFERENCES CarePathStages(StageID)
);*/

/*CREATE TABLE CarePathInterventions (
    InterventionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientCarePathID BIGINT NOT NULL,
    StageID BIGINT NOT NULL,
    InterventionType ENUM('Medication', 'Procedure', 'LabTest', 'Consultation', 'Therapy'),
    RelatedID BIGINT,  -- This will not have a foreign key constraint
    InterventionDate DATE,
    Outcome TEXT,
    FOREIGN KEY (PatientCarePathID) REFERENCES PatientCarePaths(PatientCarePathID),
    FOREIGN KEY (StageID) REFERENCES CarePathStages(StageID)
);*/

/*CREATE TABLE PROMSurveys (
    SurveyID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SurveyName VARCHAR(100) NOT NULL,
    TargetCondition VARCHAR(100),
    Description TEXT,
    FrequencyDays INT
);*/

/*CREATE TABLE PROMQuestions (

    QuestionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    SurveyID BIGINT NOT NULL,
    QuestionText TEXT NOT NULL,
    QuestionType ENUM('Likert', 'Numeric', 'YesNo', 'MultipleChoice', 'OpenEnded'),
    Options TEXT,
    FOREIGN KEY (SurveyID) REFERENCES PROMSurveys(SurveyID)
);*/

/*CREATE TABLE PatientPROMResponses (
    ResponseID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    SurveyID BIGINT NOT NULL,
    QuestionID BIGINT NOT NULL,
    ResponseValue TEXT,
    ResponseDate DATETIME NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (SurveyID) REFERENCES PROMSurveys(SurveyID),
    FOREIGN KEY (QuestionID) REFERENCES PROMQuestions(QuestionID)
);*/

/*CREATE TABLE ClinicalRules (
    RuleID BIGINT AUTO_INCREMENT PRIMARY KEY,
    RuleName VARCHAR(100) NOT NULL,
    Description TEXT,
    TargetCondition VARCHAR(100),
    TriggerEvent VARCHAR(100),
    CreationDate DATE NOT NULL,
    LastUpdated DATE
);*/

/*CREATE TABLE RuleConditions (
    ConditionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    RuleID BIGINT NOT NULL,
    FieldName VARCHAR(100) NOT NULL,
    Operator ENUM('Equals', 'NotEquals', 'GreaterThan', 'LessThan', 'Contains'),
    Value VARCHAR(100),
    FOREIGN KEY (RuleID) REFERENCES ClinicalRules(RuleID)
);*/

/*CREATE TABLE RuleActions (
    ActionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    RuleID BIGINT NOT NULL,
    ActionType ENUM('Alert', 'Recommendation', 'Order'),
    ActionDetails TEXT,
    FOREIGN KEY (RuleID) REFERENCES ClinicalRules(RuleID)
);*/

/*CREATE TABLE ClinicalAlerts (
    AlertID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    RuleID BIGINT NOT NULL,
    ProviderID BIGINT,
    AlertDateTime DATETIME NOT NULL,
    AlertStatus ENUM('New', 'Viewed', 'Actioned', 'Dismissed'),
    ActionTaken TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (RuleID) REFERENCES ClinicalRules(RuleID),
    FOREIGN KEY (ProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

/*CREATE TABLE PopulationCohorts (
    CohortID BIGINT AUTO_INCREMENT PRIMARY KEY,
    CohortName VARCHAR(100) NOT NULL,
    Description TEXT,
    CreationDate DATE NOT NULL,
    LastUpdated DATE
);*/

/*CREATE TABLE CohortCriteria (
    CriteriaID BIGINT AUTO_INCREMENT PRIMARY KEY,
    CohortID BIGINT NOT NULL,
    CriteriaType ENUM('Demographic', 'Diagnosis', 'Medication', 'LabResult', 'Procedure'),
    CriteriaDetails TEXT,
    FOREIGN KEY (CohortID) REFERENCES PopulationCohorts(CohortID)
);*/

/*CREATE TABLE PatientCohortAssignments (
    AssignmentID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    CohortID BIGINT NOT NULL,
    AssignmentDate DATE NOT NULL,
    RemovalDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (CohortID) REFERENCES PopulationCohorts(CohortID)
);*/

/*CREATE TABLE CohortInterventions (
    InterventionID BIGINT AUTO_INCREMENT PRIMARY KEY,
    CohortID BIGINT NOT NULL,
    InterventionName VARCHAR(100) NOT NULL,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    InterventionType ENUM('Education', 'Screening', 'Vaccination', 'Lifestyle'),
    FOREIGN KEY (CohortID) REFERENCES PopulationCohorts(CohortID)
);*/

/*CREATE TABLE ContinuityOfCareDocuments (
    DocumentID BIGINT AUTO_INCREMENT PRIMARY KEY,
    PatientID BIGINT NOT NULL,
    CreatingProviderID BIGINT NOT NULL,
    CreationDateTime DATETIME NOT NULL,
    DocumentType ENUM('Discharge Summary', 'Referral', 'Transfer of Care'),
    DocumentContent TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (CreatingProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/


/*CREATE TABLE DocumentSharing (
    SharingID BIGINT AUTO_INCREMENT PRIMARY KEY,
    DocumentID BIGINT NOT NULL,
    RecipientProviderID BIGINT NOT NULL,
    SharedDateTime DATETIME NOT NULL,
    AccessedDateTime DATETIME,
    SharingPurpose TEXT,
    FOREIGN KEY (DocumentID) REFERENCES ContinuityOfCareDocuments(DocumentID),
    FOREIGN KEY (RecipientProviderID) REFERENCES HealthcareProviders(ProviderID)
);*/

show tables;






