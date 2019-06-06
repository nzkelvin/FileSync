.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->deriveDisplayedValue()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

.field final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    .prologue
    .line 363
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;->this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;->val$ids:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 363
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;->filter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Z

    move-result v0

    return v0
.end method

.method public filter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Z
    .locals 2
    .param p1, "type"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    .prologue
    .line 364
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;->val$ids:Ljava/util/List;

    iget v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
