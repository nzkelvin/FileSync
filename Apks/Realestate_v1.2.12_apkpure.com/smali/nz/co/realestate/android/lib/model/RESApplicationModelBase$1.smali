.class Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;
.super Ljava/lang/Object;
.source "RESApplicationModelBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

.field final synthetic val$typeId:I


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/model/RESApplicationModelBase;I)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    .prologue
    .line 460
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;->this$0:Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    iput p2, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;->val$typeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;->matches(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;)Z

    move-result v0

    return v0
.end method

.method public matches(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;)Z
    .locals 2
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    .prologue
    .line 460
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    iget v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;->val$typeId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
