.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$9;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$9;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$9;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    .prologue
    .line 255
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    return-object v0
.end method
