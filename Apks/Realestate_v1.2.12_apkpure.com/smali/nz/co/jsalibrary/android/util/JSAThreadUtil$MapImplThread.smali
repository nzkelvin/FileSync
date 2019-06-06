.class Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;
.super Ljava/lang/Thread;
.source "JSAThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapImplThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field private final mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread<TS;TT;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 323
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 329
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread<TS;TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$000(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 330
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$108(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)I

    move-result v0

    .line 331
    .local v0, "index":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :goto_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$200(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 334
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$300(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$300(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$400(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "result":Ljava/lang/Object;, "TT;"
    :goto_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$200(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$000(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 338
    :try_start_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$108(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)I

    move-result v0

    .line 339
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 331
    .end local v0    # "index":I
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 334
    .restart local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$500(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->mMap:Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->access$400(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;->map(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 341
    :cond_1
    return-void
.end method
