.class Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
.super Landroid/os/AsyncTask;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/endless/EndlessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;


# direct methods
.method constructor <init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 168
    .local v1, "result":Ljava/lang/Exception;
    :try_start_0
    iget-object v2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-static {v2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    iget-object v3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v3}, Lcom/commonsware/cwac/endless/EndlessAdapter;->cacheInBackground()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->appendCachedData()V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$102(Lcom/commonsware/cwac/endless/EndlessAdapter;Landroid/view/View;)Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    .line 188
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-static {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    iget-object v2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->this$0:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-static {v2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$100(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
