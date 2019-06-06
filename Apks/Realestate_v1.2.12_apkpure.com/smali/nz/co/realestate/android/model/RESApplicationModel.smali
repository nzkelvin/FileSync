.class public Lnz/co/realestate/android/model/RESApplicationModel;
.super Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
.source "RESApplicationModel.java"


# static fields
.field private static final INSPECTION_OPTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x883a3823280f641L


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 29
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x7

    new-array v1, v1, [Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const/4 v2, 0x0

    new-instance v3, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const v4, 0x7f0800de

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "overall"

    invoke-direct {v3, v6, v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const v3, 0x7f0800bf

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "living"

    invoke-direct {v2, v7, v3, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const v3, 0x7f0800b9

    .line 33
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kitchen-dining"

    invoke-direct {v2, v8, v3, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const v3, 0x7f080072

    .line 34
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bedrooms"

    invoke-direct {v2, v9, v3, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const v3, 0x7f080071

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bathrooms"

    invoke-direct {v2, v10, v3, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const/4 v3, 0x6

    const v4, 0x7f0800b1

    .line 36
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "garage"

    invoke-direct {v2, v3, v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v10

    const/4 v2, 0x6

    new-instance v3, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    const/4 v4, 0x7

    const v5, 0x7f0800dd

    .line 37
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "outdoors"

    invoke-direct {v3, v4, v5, v6}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 30
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lnz/co/realestate/android/model/RESApplicationModel;->INSPECTION_OPTIONS:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_0
    const-string v0, "search_map_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lnz/co/realestate/android/ui/RESSearchMapActivity;

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_1
    const-string v0, "property_fragment_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lnz/co/realestate/android/ui/RESPropertyFragmentActivity;

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "my_property_fragment_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lnz/co/realestate/android/ui/RESMyPropertyFragmentActivity;

    goto :goto_0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getAdhubFormatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "http://ads.adhub.co.nz/adhub/hserver/SITE=REALESTATE/AREA=%s/SIZE=%s/POS=POS1/RANDOM=%s/VIEWID=%s"

    return-object v0
.end method

.method protected getAdhubSection(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "listingTypeId"    # I
    .param p2, "sectionCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 62
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 63
    :cond_0
    if-ne p1, v0, :cond_1

    .line 65
    .local v0, "isForSale":Z
    :goto_0
    const-string v1, "default"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v1, "REALESTATE.DEFAULT.ANDROIDAPP"

    .line 81
    :goto_1
    return-object v1

    .line 63
    .end local v0    # "isForSale":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    .restart local v0    # "isForSale":Z
    :cond_2
    const-string v1, "home"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    if-eqz v0, :cond_3

    const-string v1, "FORSALE.HOME.ANDROIDAPP"

    goto :goto_1

    :cond_3
    const-string v1, "RENTAL.HOME.ANDROIDAPP"

    goto :goto_1

    .line 69
    :cond_4
    const-string v1, "mortgage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    const-string v1, "FORSALE.CALCULATOR.ANDROIDAPP"

    goto :goto_1

    .line 71
    :cond_5
    const-string v1, "map"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    if-eqz v0, :cond_6

    const-string v1, "FORSALE.MAPVIEW.ANDROIDAPP"

    goto :goto_1

    :cond_6
    const-string v1, "RENTAL.MAPVIEW.ANDROIDAPP"

    goto :goto_1

    .line 73
    :cond_7
    const-string v1, "listing_details"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    if-eqz v0, :cond_8

    const-string v1, "FORSALE.LISTING.ANDROIDAPP"

    goto :goto_1

    :cond_8
    const-string v1, "RENTAL.LISTING.ANDROIDAPP"

    goto :goto_1

    .line 75
    :cond_9
    const-string v1, "my_property"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    const-string v1, "PROPERTY.PROPERTY.ANDROIDAPP"

    goto :goto_1

    .line 77
    :cond_a
    const-string v1, "open_homes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 78
    const-string v1, "PROPERTY.OPENHOMES.ANDROIDAPP"

    goto :goto_1

    .line 79
    :cond_b
    const-string v1, "recent_properties"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    const-string v1, "PROPERTY.RECENTS.ANDROIDAPP"

    goto :goto_1

    .line 81
    :cond_c
    const-string v1, "REALESTATE.DEFAULT.ANDROIDAPP"

    goto :goto_1
.end method

.method public getGoogleAnalyticsTrackingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lnz/co/realestate/android/core/RESApplication;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UA-26138663-1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UA-1034724-13"

    goto :goto_0
.end method

.method public getInspectionOptions(I)Ljava/util/List;
    .locals 1
    .param p1, "listingTypeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lnz/co/realestate/android/model/RESApplicationModel;->INSPECTION_OPTIONS:Ljava/util/List;

    return-object v0
.end method

.method public getListingTypeIds()[I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x5
    .end array-data
.end method

.method protected getListingTypeTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lnz/co/realestate/android/model/RESApplicationModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0800af

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0800ff

    goto :goto_0
.end method

.method public getMyPropertyChannel()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method
