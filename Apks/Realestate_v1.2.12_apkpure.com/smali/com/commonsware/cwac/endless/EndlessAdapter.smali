.class public abstract Lcom/commonsware/cwac/endless/EndlessAdapter;
.super Lcom/commonsware/cwac/adapter/AdapterWrapper;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pendingResource:I

.field private pendingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;
    .param p3, "pendingResource"    # I

    .prologue
    .line 74
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 75
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    .line 76
    iput p3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/widget/ListAdapter;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/commonsware/cwac/endless/EndlessAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected abstract appendCachedData()V
.end method

.method protected abstract cacheInBackground()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 199
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You must either override getPendingView() or supply a pending View resource via the constructor"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, p3}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 133
    new-instance v0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;

    invoke-direct {v0, p0}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;-><init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 139
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onException(Landroid/view/View;Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "pendingView"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 151
    const-string v0, "EndlessAdapter"

    const-string v1, "Exception in cacheInBackground()"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v0, 0x0

    return v0
.end method
