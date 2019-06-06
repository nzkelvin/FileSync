.class public Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;
.super Ljava/lang/Object;
.source "JSAMemoryBundleManager.java"


# instance fields
.field protected mCurrentId:I

.field protected final mExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mExtraMap:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public getExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->getExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 71
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "id":I
    if-ne v0, v3, :cond_1

    move-object v1, v2

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mExtraMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 75
    goto :goto_0
.end method

.method public getExtra(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->getExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 59
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "id":I
    if-ne v0, v3, :cond_1

    move-object v1, v2

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mExtraMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 63
    goto :goto_0
.end method

.method public declared-synchronized putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mCurrentId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mCurrentId:I

    .line 46
    .local v0, "id":I
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mExtraMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 45
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mCurrentId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mCurrentId:I

    .line 40
    .local v0, "id":I
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSAMemoryBundleManager;->mExtraMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 39
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
