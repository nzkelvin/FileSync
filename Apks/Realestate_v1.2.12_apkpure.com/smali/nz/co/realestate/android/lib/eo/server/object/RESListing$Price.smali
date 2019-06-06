.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;
.super Ljava/lang/Object;
.source "RESListing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Price"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x287cb45874af5999L


# instance fields
.field public description:Ljava/lang/String;

.field public price:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
