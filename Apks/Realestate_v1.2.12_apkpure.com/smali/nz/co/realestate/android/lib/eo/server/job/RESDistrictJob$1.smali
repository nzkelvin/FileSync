.class Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "RESDistrictJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob$1;->this$0:Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
