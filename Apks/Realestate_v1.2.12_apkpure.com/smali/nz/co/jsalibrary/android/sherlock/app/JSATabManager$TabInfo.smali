.class final Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
.super Ljava/lang/Object;
.source "JSATabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field protected mFragment:Landroid/support/v4/app/Fragment;

.field protected final mFragmentArgs:Landroid/os/Bundle;

.field protected final mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabSpec:Landroid/widget/TabHost$TabSpec;

.field protected final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/TabHost$TabSpec;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "spec"    # Landroid/widget/TabHost$TabSpec;

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    .line 358
    iput-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    .line 359
    iput-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    .line 360
    iput-object p2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTabSpec:Landroid/widget/TabHost$TabSpec;

    .line 361
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "fragmentArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    .line 352
    iput-object p2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    .line 353
    iput-object p3, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    .line 354
    return-void
.end method
