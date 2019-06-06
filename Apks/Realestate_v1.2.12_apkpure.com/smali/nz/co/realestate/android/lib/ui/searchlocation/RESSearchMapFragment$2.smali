.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$2;
.super Ljava/lang/Object;
.source "RESSearchMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setMapAppearance(Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;)V

    .line 137
    return-void
.end method
