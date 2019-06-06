.class Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictToNameMapFunction;
.super Ljava/lang/Object;
.source "RESLocationOptions.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DistrictToNameMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictToNameMapFunction;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictToNameMapFunction;->map(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 152
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->name:Ljava/lang/String;

    return-object v0
.end method
