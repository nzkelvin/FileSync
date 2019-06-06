.class public Lnz/co/realestate/android/lib/core/RESDbHelperBase;
.super Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.source "RESDbHelperBase.java"


# static fields
.field public static final CURRENT_SCHEMA_VERSION:I = 0xb

.field private static final DATABASE_NAME:Ljava/lang/String; = "Realestate"

.field private static final DB_DISTRICT:Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

.field private static final DB_FEATURED_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

.field private static final DB_IMAGE:Lnz/co/realestate/android/lib/eo/database/RESDbImage;

.field private static final DB_LISTING_DETAIL:Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

.field private static final DB_LISTING_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

.field private static final DB_LISTING_TYPE_SUB_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

.field private static final DB_MY_PROPERTY_COMMENT:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

.field private static final DB_MY_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

.field private static final DB_MY_PROPERTY_PHOTO:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

.field private static final DB_MY_PROPERTY_RATING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

.field private static final DB_OPEN_HOME:Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

.field private static final DB_PRICING_METHOD:Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

.field private static final DB_RECENT_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

.field private static final DB_REGION:Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

.field private static final DB_SUBURB:Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

.field private static final DB_WESTPAC_ATM:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

.field private static final DB_WESTPAC_BRANCH:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

.field public static final FIRST_SCHEMA_VERSION:I = 0x1

.field public static final SCHEMA_VERSION_1:I = 0x1

.field public static final SCHEMA_VERSION_10:I = 0xa

.field public static final SCHEMA_VERSION_11:I = 0xb

.field public static final SCHEMA_VERSION_2:I = 0x2

.field public static final SCHEMA_VERSION_3:I = 0x3

.field public static final SCHEMA_VERSION_4:I = 0x4

.field public static final SCHEMA_VERSION_5:I = 0x5

.field public static final SCHEMA_VERSION_6:I = 0x6

.field public static final SCHEMA_VERSION_7:I = 0x7

.field public static final SCHEMA_VERSION_8:I = 0x8

.field public static final SCHEMA_VERSION_9:I = 0x9

.field private static final TABLES:[Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_DISTRICT:Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    .line 54
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_SUBURB:Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

    .line 55
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_REGION:Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

    .line 56
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

    .line 57
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE_SUB_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    .line 58
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_PRICING_METHOD:Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

    .line 59
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_ATM:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

    .line 60
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_BRANCH:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    .line 61
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_FEATURED_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    .line 62
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_DETAIL:Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    .line 63
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    .line 64
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_OPEN_HOME:Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    .line 65
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_RECENT_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    .line 66
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_IMAGE:Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    .line 67
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_COMMENT:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    .line 68
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_RATING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    .line 69
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_PHOTO:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    .line 71
    const/16 v0, 0x11

    new-array v0, v0, [Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;

    const/4 v1, 0x0

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_DISTRICT:Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_SUBURB:Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_REGION:Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE_SUB_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_PRICING_METHOD:Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_ATM:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_BRANCH:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_FEATURED_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_DETAIL:Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_OPEN_HOME:Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_RECENT_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_IMAGE:Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_COMMENT:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_RATING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_PHOTO:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    aput-object v2, v0, v1

    sput-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->TABLES:[Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;

    const-string v1, "Realestate"

    const/16 v2, 0xb

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 98
    return-void
.end method

.method private static initialiseDatabase()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebuggingInitialiseDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDbDistrict()Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_DISTRICT:Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    return-object v0
.end method

.method public getDbFeaturedListing()Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_FEATURED_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    return-object v0
.end method

.method public getDbImage()Lnz/co/realestate/android/lib/eo/database/RESDbImage;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_IMAGE:Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    return-object v0
.end method

.method public getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_DETAIL:Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    return-object v0
.end method

.method public getDbListingType()Lnz/co/realestate/android/lib/eo/database/RESDbListingType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

    return-object v0
.end method

.method public getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_LISTING_TYPE_SUB_TYPE:Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    return-object v0
.end method

.method public getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_COMMENT:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    return-object v0
.end method

.method public getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    return-object v0
.end method

.method public getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_PHOTO:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    return-object v0
.end method

.method public getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_MY_PROPERTY_RATING:Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    return-object v0
.end method

.method public getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_OPEN_HOME:Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    return-object v0
.end method

.method public getDbPricingMethod()Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_PRICING_METHOD:Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

    return-object v0
.end method

.method public getDbRecentPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_RECENT_PROPERTY_LISTING:Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    return-object v0
.end method

.method public getDbRegion()Lnz/co/realestate/android/lib/eo/database/RESDbRegion;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_REGION:Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

    return-object v0
.end method

.method public getDbSuburb()Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_SUBURB:Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

    return-object v0
.end method

.method public getDbWestpacATM()Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_ATM:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

    return-object v0
.end method

.method public getDbWestpacBranch()Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->DB_WESTPAC_BRANCH:Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 110
    :try_start_0
    sget-object v4, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->TABLES:[Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 111
    .local v1, "table":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<***>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "table":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<***>;"
    :catch_0
    move-exception v0

    .line 115
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "error creating database tables"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    aput-object v5, v4, v3

    invoke-static {v2, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 117
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 125
    :try_start_0
    sget-object v4, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->TABLES:[Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 126
    .local v1, "table":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<***>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "table":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<***>;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "error upgrading database tables"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    aput-object v5, v4, v3

    invoke-static {v2, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 132
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
