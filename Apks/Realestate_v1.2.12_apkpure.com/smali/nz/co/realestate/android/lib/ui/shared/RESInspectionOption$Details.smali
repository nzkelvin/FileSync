.class public Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
.super Ljava/lang/Object;
.source "RESInspectionOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# instance fields
.field public mNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRating:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mRating:I

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mNotes:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->mPhotos:Ljava/util/List;

    return-void
.end method

.method public static getTipRawResource(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 240
    sget v0, Lnz/co/realestate/android/lib/R$string;->overall:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_overall:I

    .line 247
    :goto_0
    return v0

    .line 241
    :cond_0
    sget v0, Lnz/co/realestate/android/lib/R$string;->living:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_living:I

    goto :goto_0

    .line 242
    :cond_1
    sget v0, Lnz/co/realestate/android/lib/R$string;->kitchen_dining:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_kitchen:I

    goto :goto_0

    .line 243
    :cond_2
    sget v0, Lnz/co/realestate/android/lib/R$string;->bedrooms:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_bedrooms:I

    goto :goto_0

    .line 244
    :cond_3
    sget v0, Lnz/co/realestate/android/lib/R$string;->bathrooms:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_bathrooms:I

    goto :goto_0

    .line 245
    :cond_4
    sget v0, Lnz/co/realestate/android/lib/R$string;->garage:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_garage:I

    goto :goto_0

    .line 246
    :cond_5
    sget v0, Lnz/co/realestate/android/lib/R$string;->outdoors:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lnz/co/realestate/android/lib/R$raw;->tips_outdoors:I

    goto :goto_0

    .line 247
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->getTipRawResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getRawResource(Landroid/content/Context;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 235
    .local v0, "rawResource":Ljava/io/ByteArrayOutputStream;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 236
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method
