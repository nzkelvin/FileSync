.class public Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;
.super Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;
.source "RESDbListingTypeSubType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateParams"
.end annotation


# instance fields
.field private mListingTypeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listingTypeId"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 115
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;->mListingTypeId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    .prologue
    .line 111
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;->mListingTypeId:Ljava/lang/String;

    return-object v0
.end method
