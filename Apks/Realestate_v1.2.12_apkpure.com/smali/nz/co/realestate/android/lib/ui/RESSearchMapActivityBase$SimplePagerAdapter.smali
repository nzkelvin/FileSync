.class Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;
.super Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;
.source "RESSearchMapActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 392
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .line 393
    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 394
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 401
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$300(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$400(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    move-result-object v0

    goto :goto_0
.end method

.method protected getItemTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 406
    if-nez p1, :cond_0

    const-string v0, "map"

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "list"

    goto :goto_0
.end method
