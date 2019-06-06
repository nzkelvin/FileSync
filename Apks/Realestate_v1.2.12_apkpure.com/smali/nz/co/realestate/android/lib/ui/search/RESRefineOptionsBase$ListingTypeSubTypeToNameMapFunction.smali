.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListingTypeSubTypeToNameMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;->map(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    .prologue
    .line 167
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->name:Ljava/lang/String;

    return-object v0
.end method
