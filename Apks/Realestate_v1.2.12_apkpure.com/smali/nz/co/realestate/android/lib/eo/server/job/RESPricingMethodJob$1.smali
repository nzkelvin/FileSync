.class Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "RESPricingMethodJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
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
        "Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob$1;->this$0:Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
