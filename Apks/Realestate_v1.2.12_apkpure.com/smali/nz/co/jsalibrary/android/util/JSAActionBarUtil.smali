.class public Lnz/co/jsalibrary/android/util/JSAActionBarUtil;
.super Ljava/lang/Object;
.source "JSAActionBarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceActionBarOverflow(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 39
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v2, Landroid/view/ViewConfiguration;

    const-string v3, "sHasPermanentMenuKey"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    .local v1, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v1    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0
.end method
