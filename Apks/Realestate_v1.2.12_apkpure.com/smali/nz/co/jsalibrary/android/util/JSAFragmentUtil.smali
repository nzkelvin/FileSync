.class public Lnz/co/jsalibrary/android/util/JSAFragmentUtil;
.super Ljava/lang/Object;
.source "JSAFragmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
