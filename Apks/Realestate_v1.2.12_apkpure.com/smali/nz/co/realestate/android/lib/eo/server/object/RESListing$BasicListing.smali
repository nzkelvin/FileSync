.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
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
    name = "BasicListing"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41d838eff8a750c9L


# instance fields
.field public address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

.field public bathrooms:I

.field public bedrooms:I

.field public car_spaces:I

.field public floor_area:D

.field public id:I

.field public image:Ljava/lang/String;

.field public image_md5:Ljava/lang/String;

.field public is_featured:Z

.field public listing_date:Ljava/lang/String;

.field public listing_no:Ljava/lang/String;

.field public listing_status:I

.field public listing_subtype_id:I

.field public listing_type_id:I

.field public location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public open_home:Z

.field public price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

.field public sold_details:Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

.field public status_change_date:Ljava/lang/String;

.field public teaser:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 296
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    if-nez v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 297
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 298
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    iget v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "depth"    # I
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 353
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->subList(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getListingDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 334
    :try_start_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_date:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 338
    :goto_0
    return-object v2

    .line 335
    :cond_0
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 336
    .local v1, "parser":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_date:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 337
    .end local v1    # "parser":Lorg/joda/time/format/DateTimeFormatter;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getListingStatusChangeDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 359
    :try_start_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->status_change_date:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 363
    :goto_0
    return-object v2

    .line 360
    :cond_0
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 361
    .local v1, "parser":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->status_change_date:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 362
    .end local v1    # "parser":Lorg/joda/time/format/DateTimeFormatter;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->location:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 317
    iget v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_status:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_status:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnPromotion()Z
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v0

    return v0
.end method

.method public isRecent()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 307
    :try_start_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_date:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v3

    .line 308
    :cond_1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    .line 309
    .local v2, "parser":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v0, Ljava/util/Date;

    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_date:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 310
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "parser":Lorg/joda/time/format/DateTimeFormatter;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isSold()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWithdrawn()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->listing_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
