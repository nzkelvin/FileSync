.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;
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
    name = "SoldDetails"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62a3252de88a0983L


# instance fields
.field public agreement_date:Ljava/lang/String;

.field public gst_included:Z

.field public selling_price:I

.field public unconditional_date:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementDate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 500
    :try_start_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;->agreement_date:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 504
    :goto_0
    return-object v2

    .line 501
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MMM/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;->agreement_date:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 503
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "exception":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public getUnconditionalDate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 510
    :try_start_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;->unconditional_date:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 514
    :goto_0
    return-object v2

    .line 511
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MMM/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;->unconditional_date:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 513
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "exception":Ljava/text/ParseException;
    goto :goto_0
.end method
