.class public final Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
.super Ljava/lang/Object;
.source "RESDbImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/RESDbImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# instance fields
.field public height:Ljava/lang/Integer;

.field public id:I

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "height"    # Ljava/lang/Integer;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->url:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    .line 128
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    .line 129
    return-void
.end method
