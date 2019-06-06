.class Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5$1;
.super Ljava/lang/Object;
.source "RESHomeFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;

    .prologue
    .line 156
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5$1;->this$1:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->toggleCurrentListingTypeId()V

    .line 159
    return-void
.end method
