.class public abstract Lnz/co/realestate/android/core/RESConstants;
.super Lnz/co/realestate/android/lib/core/RESConstantsBase;
.source "RESConstants.java"


# static fields
.field public static final ADHUB_SECTION_DEFAULT:Ljava/lang/String; = "REALESTATE.DEFAULT.ANDROIDAPP"

.field public static final ADHUB_SECTION_FOR_SALE_HOME:Ljava/lang/String; = "FORSALE.HOME.ANDROIDAPP"

.field public static final ADHUB_SECTION_FOR_SALE_LISTING_DETAILS:Ljava/lang/String; = "FORSALE.LISTING.ANDROIDAPP"

.field public static final ADHUB_SECTION_FOR_SALE_MAP:Ljava/lang/String; = "FORSALE.MAPVIEW.ANDROIDAPP"

.field public static final ADHUB_SECTION_FOR_SALE_MORTGAGE:Ljava/lang/String; = "FORSALE.CALCULATOR.ANDROIDAPP"

.field public static final ADHUB_SECTION_FOR_SALE_SEARCH:Ljava/lang/String; = "FORSALE.MAPSEARCH.ANDROIDAPP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADHUB_SECTION_MY_PROPERTY:Ljava/lang/String; = "PROPERTY.PROPERTY.ANDROIDAPP"

.field public static final ADHUB_SECTION_OPEN_HOMES:Ljava/lang/String; = "PROPERTY.OPENHOMES.ANDROIDAPP"

.field public static final ADHUB_SECTION_RECENT_PROPERTIES:Ljava/lang/String; = "PROPERTY.RECENTS.ANDROIDAPP"

.field public static final ADHUB_SECTION_RENTAL_HOME:Ljava/lang/String; = "RENTAL.HOME.ANDROIDAPP"

.field public static final ADHUB_SECTION_RENTAL_LISTING_DETAILS:Ljava/lang/String; = "RENTAL.LISTING.ANDROIDAPP"

.field public static final ADHUB_SECTION_RENTAL_MAP:Ljava/lang/String; = "RENTAL.MAPVIEW.ANDROIDAPP"

.field public static final ADHUB_SECTION_RENTAL_SEARCH:Ljava/lang/String; = "RENTAL.MAPSEARCH.ANDROIDAPP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADHUB_URL_FORMAT:Ljava/lang/String; = "http://ads.adhub.co.nz/adhub/hserver/SITE=REALESTATE/AREA=%s/SIZE=%s/POS=POS1/RANDOM=%s/VIEWID=%s"

.field public static final GOOGLE_ANALYTICS_UA_NUMBER:Ljava/lang/String; = "UA-1034724-13"

.field public static final LISTING_TYPE_ID_FOR_SALE:I = 0x1

.field public static final LISTING_TYPE_ID_RENTAL:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lnz/co/realestate/android/lib/core/RESConstantsBase;-><init>()V

    return-void
.end method
