.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;
.super Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
.source "RESPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicListingHeading"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x168497909c70e745L


# instance fields
.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;-><init>()V

    .line 294
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;->mTitle:Ljava/lang/String;

    .line 295
    return-void
.end method
