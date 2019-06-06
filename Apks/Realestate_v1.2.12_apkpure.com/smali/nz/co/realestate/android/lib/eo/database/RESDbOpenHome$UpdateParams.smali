.class public Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
.super Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;
.source "RESDbOpenHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateParams"
.end annotation


# instance fields
.field private mListingId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 137
    iput p1, p0, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;->mListingId:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    .prologue
    .line 133
    iget v0, p0, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;->mListingId:I

    return v0
.end method
