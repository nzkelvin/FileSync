.class public Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;
.super Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;
.source "RESDbMyPropertyComment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
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
    .line 141
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 142
    iput p1, p0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;->mListingId:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    .prologue
    .line 138
    iget v0, p0, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;->mListingId:I

    return v0
.end method
