.class Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob$1;
.super Ljava/lang/Object;
.source "RESUpdateOpenHomesJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;

    .prologue
    .line 65
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob$1;->this$0:Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob$1;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 66
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
